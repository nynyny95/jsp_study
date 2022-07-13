package buddybuddy;



import java.awt.BorderLayout;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.swing.JScrollPane;
 
public class ServerBackground {
 
    // 지금까지 한일. GUi연동시키면서 서버Gui에 메시지띄움.
    // 다음 이슈. Gui 상에서 일단 1:1 채팅을 하고 싶다.
    private ServerSocket serverSocket;
    private Socket socket;
    private ServerGui gui;
    private String msg;
    
    final SimpleDateFormat format1 = new SimpleDateFormat("a h:mm:ss");
    final Date time = new Date();
 
    /** XXX 03. 세번째 중요한것. 사용자들의 정보를 저장하는 맵입니다. */
    //key = 닉네임, value = DataOutputStream 텍스트
    private Map<String, DataOutputStream> clientsMap = new HashMap<String, DataOutputStream>();
 
    //새로고침.. 같은건가
    public final void setGui(ServerGui gui) {
        this.gui = gui;
    }
 
    public void setting() throws IOException {
        Collections.synchronizedMap(clientsMap); // 이걸 교통정리 해줍니다^^
        serverSocket = new ServerSocket(7777);
        while (true) {
            /** XXX 01. 첫번째. 서버가 할일 분담. 계속 접속받는것. */
            System.out.println("서버 대기중...");
            socket = serverSocket.accept(); // 먼저 서버가 할일은 계속 반복해서 사용자를 받는다.
            System.out.println(socket.getInetAddress() + "에서 접속했습니다.");
            // 여기서 새로운 사용자 쓰레드 클래스 생성해서 소켓정보를 넣어줘야겠죠?!
            Receiver receiver = new Receiver(socket);
            receiver.start();
        }
    }
 
    public static void main(String[] args) throws IOException {
        ServerBackground serverBackground = new ServerBackground();
        serverBackground.setting();
    }
 
    // 맵의내용(클라이언트) 저장과 삭제
    public void addClient(String nick, DataOutputStream out) throws IOException {
       clientsMap.put(nick, out);
       sendMessage("\n-----------------------" + nick + "님이 나타났습니다.  [" + format1.format(time) + "]\n 금요일축하~~~~~아~~싸가오리" + currentClients());
       
    }
 
    public void removeClient(String nick) {
        sendMessage("\n-----------------------" + nick + "님이 사라졌습니다.  [" + format1.format(time) + "]\n-----------------------");
        clientsMap.remove(nick);
    }
 
    // 메시지 내용 전파
    public void sendMessage(String msg) {
        Iterator<String> it = clientsMap.keySet().iterator();
        String key = "";
        while (it.hasNext()) {
            key = it.next();
            try {
                clientsMap.get(key).writeUTF(msg);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
 
    public String currentClients() {
       String msg = "\n현재 참여자: ";
       for(Entry entrySet: clientsMap.entrySet()) {
          msg += "@" + entrySet.getKey() + " ";
       }
       return msg+"\n-----------------------";
    }
    
//   case CPLIST: { //채팅참가자 리스트가 온 경우
//      String []userlist = rmsg[1].split(",");
//      // 1번 인덱스에 있는 참가자 ID SET을 ,를 구분자로 하여 userlist배열에 담기 
//      int size = userlist.length;
//      listOut.setText(" "); //참가자 리스트창 비우기
//      
//      for(int i = 0;i<size;i++) { // 요소 하나씩 읽어들여서 참가자 리스트에 추가
//         listOut.append(userlist[i]);
//         listOut.append("\n");
//      }
//      
//      break;
    
    // -----------------------------------------------------------------------------
    class Receiver extends Thread {
        private DataInputStream in;
        private DataOutputStream out;
        private String nick;
 
        /** XXX 2. 리시버가 한일은 자기 혼자서 네트워크 처리 계속..듣기.. 처리해주는 것. */
        public Receiver(Socket socket) throws IOException {
            out = new DataOutputStream(socket.getOutputStream());
            in = new DataInputStream(socket.getInputStream());
            nick = in.readUTF();
            addClient(nick, out);
            
        }
 
        public void run() {
            try {// 계속 듣기만!!
                while (in != null) {
                    msg = in.readUTF();
                    sendMessage(msg);
                    gui.appendMsg(msg);
                }
            } catch (IOException e) {
                // 사용접속종료시 여기서 에러 발생. 그럼나간거에요.. 여기서 리무브 클라이언트 처리 해줍니다.
                removeClient(nick);
            }
        }
    }
}
