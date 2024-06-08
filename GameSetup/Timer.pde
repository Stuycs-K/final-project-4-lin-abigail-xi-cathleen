public class Timer{
  int startTime;
  int interval;
  
  Timer(int timeInterval){
    interval = timeInterval;
  }
  
  void start(){
    startTime = millis();
  }
  
  boolean complete(){
    int elapsedTime = millis() - startTime;
    return (elapsedTime > interval);    
  }
  
}
