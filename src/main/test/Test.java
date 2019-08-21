import java.util.Random;

public class Test {
    public static void main(String[] args) {
        System.out.println("\033[34;4m" +"\n"+"我滴个颜什"+"\n"+ "\033[0m");
        // 背景颜色代号(41-46)
        // 前景色代号(31-36)
        //前景色代号和背景色代号可选，就是或可以写，也可以不写
        // 数字+m：1加粗；3斜体；4下划线
        // 格式：System.out.println("\33[前景色代号;背景色代号;数字m");
        Random backgroundRandom = new Random();
        Random fontRandom = new Random();
//        for (int i = 1; i <= 1000; i++) {
//            int font = fontRandom.nextInt(6) + 31;
//            int background = backgroundRandom.nextInt(6) + 41;
//            System.out.format("前景色是%d,背景色是%d------\33[%d;%d;4m我是博主%n", font, background, font, background);
//        }


    }
}
