package it.il.utils.pgimporter;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

public class Importer {
	
	private static String[] schemas = {"CLA", "PROFILER", "DIZ", "J", "SILL"}; 
	
	public static void main(String[] args) throws IOException {
		if(args.length==2) {
		
			String dirName = args[0];
			String importRootDir = args[1];
			for (int i = 0; i < schemas.length; i++) {
				String schemaDir = dirName + schemas[i];
				String importSchemaDir = importRootDir + schemas[i]; 
				// leggo righe file tabelle
				BufferedReader brTabelle = null;
				BufferedReader in = null;
				BufferedWriter bfw = null;
				try {
					brTabelle = new BufferedReader(new FileReader(schemaDir
							+ "\\tables.txt"));
					File outputFile = new File(schemaDir + "\\import.sql");
					outputFile.createNewFile();
					bfw = new BufferedWriter(new FileWriter(outputFile));
					String tabella = null;
					while ((tabella = brTabelle.readLine()) != null) {
						String fileName = tabella + "_DATA.csv";
						String importFileName = importSchemaDir + "\\" + fileName;
						FileReader namereader = new FileReader(importFileName);
						in = new BufferedReader(namereader);
						String header = in.readLine().replace("\"", "")
								.replace("|", ",");
						String echoString = "\\echo 'importing table " + tabella + "...';";
						String copyString = "\\COPY " + tabella + "(" + header + ")"
								+ " from '" + importSchemaDir + "\\" + fileName
								+ "' DELIMITER AS '|' NULL AS '' CSV HEADER;";
						System.out.println(copyString);
	
						// scrivo la riga sul file di output
	
						bfw.write(echoString);
						bfw.write("\n");
						bfw.write(copyString);
						bfw.write("\n");
	
					}
	//				psqlExecuteScript();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					brTabelle.close();
					bfw.close();
					in.close();
				}
			}
		} else {
			System.out.println("ERRORE: numero di parametri diverso da due");
		}

	}

	public static void psqlExecuteScript() {

		try {
			String line;
			Process p = Runtime
					.getRuntime()
					.exec("psql -U fxscuole_profiler -d plusdb -p 5433 -f 'C:\\Piero\\Postgres Scripts\\setVariables.sql");
			BufferedReader input = new BufferedReader(new InputStreamReader(
					p.getInputStream()));
			while ((line = input.readLine()) != null) {
				System.out.println(line);
			}
			input.close();
		} catch (Exception err) {
			err.printStackTrace();
		}
		
	}
}
