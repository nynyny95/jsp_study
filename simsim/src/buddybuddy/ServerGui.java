package buddybuddy;


import java.awt.BorderLayout;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

//JFrame 상속
public class ServerGui extends JFrame implements ActionListener {
      /*여기 있는 경로의 이미지를 프레임에서 그려줄거임.*/
//      private Image background=new ImageIcon(ServerGui.class.getResource("/img/jokuna.jpg.jpg")).getImage();//배경이미지
//      
//      public void paint(Graphics g) {//그리는 함수
//         g.drawImage(background, 0, 0, null);//background를 그려줌
//      }

   
    private static final long serialVersionUID = 1L;
    private JTextArea jta = new JTextArea(40, 25); 
    //여러 줄의 입력창 - 스크롤바 지원 x. 채팅 내용이 입력될 상단의 큰 창, 40행 25열
    
    private JTextField jtf = new JTextField(25); //입력창, 열 개수 25
    private ServerBackground server = new ServerBackground();
 
    public ServerGui() throws IOException {
 
        add(jta, BorderLayout.CENTER);
        add(jtf, BorderLayout.SOUTH);
        add(new JScrollPane(jta), BorderLayout.CENTER);
        
        jtf.addActionListener(this);
 
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setVisible(true);
        setBounds(200, 100, 400, 600);
        setTitle("버디버디 서버");
 
        server.setGui(this);
        server.setting();
    }
 
    public static void main(String[] args) throws IOException {
        new ServerGui();
    }
 
    @Override
    //ActionListener의 메소드 actionPerformed
    //액션이 발생하면 작동할 코드
    public void actionPerformed(ActionEvent e) {
        String msg = "\n서버 : " + jtf.getText() + "\n";
        //getText: 현재 Textfield에 있는 텍스트 읽어옴
        System.out.print(msg);
        server.sendMessage(msg);
        jtf.setText(""); //텍스트필드 비우기
    }
 
    public void appendMsg(String msg) {
        jta.append(msg);
        int pos = jta.getText().length();
        jta.setCaretPosition(pos);  //커서를 뒤로 보냄
    }
 
}

