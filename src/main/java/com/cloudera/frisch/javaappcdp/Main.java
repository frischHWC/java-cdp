package com.cloudera.frisch.javaappcdp;

import org.apache.log4j.Logger;


import com.cloudera.frisch.javaappcdp.config.PropertiesLoader;


public class Main {

    private final static Logger logger = Logger.getLogger(Main.class);

    public static void main(String [] args) {

        logger.info("Starting Application");
        long start = System.currentTimeMillis();

        // TODO: Code here

        logger.debug("Debug is activated");

        logger.info("Project is : " + PropertiesLoader.getProperty("project.name"));

        logger.info("Application Finished");
        logger.info("Application took : " + (System.currentTimeMillis()-start) + " ms to run");

    }

}
