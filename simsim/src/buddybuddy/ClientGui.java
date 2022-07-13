package buddybuddy;

import java.awt.BorderLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Scanner;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
 
public class ClientGui extends JFrame implements ActionListener {
 
    private static final long serialVersionUID = 1L;
    private JTextArea jta = new JTextArea(40, 25);
    private JTextField jtf = new JTextField(25);
    private ClientBackground client = new ClientBackground();
    private static String nickName;
    //프레임 배경으로 넣을 이미지
    //private Image background = new ImageIcon(ClientGui.class.getResource("/MultiChatting/src/multichatting/으아아.jpg")).getImage();
 
    public ClientGui() {
 
        add(jta, BorderLayout.CENTER);
        add(jtf, BorderLayout.SOUTH);
        add(new JScrollPane(jta), BorderLayout.CENTER);
        
        jtf.addActionListener(this);
 
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setVisible(true);
        setBounds(800, 100, 400, 600);
        setTitle("버디버디");
 
        client.setGui(this);
        client.setNickname(nickName);
        client.connet();
    }
 
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("당신의 닉네임부터 설정하세요 : ");
        nickName = scanner.nextLine();
        scanner.close();
 
        new ClientGui();
 
    }
 
    @Override
    // 말치면 보내는 부분
    public void actionPerformed(ActionEvent e) {
       final SimpleDateFormat format1 = new SimpleDateFormat("a h:mm:ss");
        final Date time = new Date();
        String msg = "\n" + nickName + "( * ́ w`*)/ : " + jtf.getText() + "       [" + format1.format(time) + "]";
        client.sendMessage(msg);
        jtf.setText("");
    }
 
    public void appendMsg(String msg) {
        jta.append(msg);
        int pos = jta.getText().length();
        jta.setCaretPosition(pos);  //커서를 뒤로 보냄
    }
 
}