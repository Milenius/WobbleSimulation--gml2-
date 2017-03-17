generation = 0;
anzahl_essen = 200;
anzahl_gift = 50;
cur_ticks = 0;
best_ticks = 0;
foods_eaten = 0;
poison_eaten = 0;

first_spawn = true;

stat_ticks_file = file_text_open_write(working_directory + "\stat_ticks.txt");
file_text_close(stat_ticks_file);

stat_featen_file = file_text_open_write(working_directory + "\stat_featen.txt");
file_text_close(stat_featen_file);

stat_peaten_file = file_text_open_write(working_directory + "\stat_peaten.txt");
file_text_close(stat_peaten_file);