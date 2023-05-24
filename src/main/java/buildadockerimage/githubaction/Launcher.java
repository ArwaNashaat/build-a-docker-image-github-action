package buildadockerimage.githubaction;

import org.apache.log4j.BasicConfigurator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Launcher {
  private static final Logger LOGGER = LoggerFactory.getLogger(Launcher.class);

  public static void main(String[] args) {
    BasicConfigurator.configure();

    LOGGER.warn("Running the main method");
    LOGGER.warn("develop branch");
    System.out.println("Hii");
  }
}
