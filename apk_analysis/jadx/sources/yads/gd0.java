package yads;

import java.util.Calendar;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gd0 {
    public static final Calendar a(fd0 fd0Var) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(fd0Var.c);
        calendar.setTimeInMillis(fd0Var.b);
        return calendar;
    }
}
