import org.junit.Test;

import java.util.Timer;
import java.util.TimerTask;

public class TimerSet {

    @Test
    public void timer(){
        System.out.println("1111111111");
        timer1();
    }

    public void timer1(){
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                System.out.println("hello11111111111");
            }
        },1);
    }
}
