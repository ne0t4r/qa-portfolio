import java.util.Arrays;
import java.util.Stack;

public class StackExample {

        public static void main(String[] args) {
                //create new stack
                Stack<String> stack = new Stack<>();

                // add elements to stack
                stack.push("one");
                stack.push("two");
                stack.push("three");
                stack.push("four");

                //print peek of the stack without removing element from stack
                System.out.println("Peek of the stack: " + stack.peek());


        }
}



