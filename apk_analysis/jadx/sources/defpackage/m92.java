package defpackage;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class m92 {
    public final TimeZone a;

    public static final class a {
        public static Date a(Date date) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            Date time = calendar.getTime();
            time.getClass();
            return time;
        }
    }

    public m92() {
        this.a = TimeZone.getDefault();
        this.a = TimeZone.getDefault();
    }

    public final Calendar a(Date date) {
        Calendar calendar = Calendar.getInstance(b());
        calendar.setTime(date);
        calendar.set(14, 0);
        calendar.set(13, 0);
        return calendar;
    }

    public final TimeZone b() {
        TimeZone timeZone = this.a;
        if (timeZone != null) {
            timeZone.getClass();
            return timeZone;
        }
        TimeZone timeZone2 = TimeZone.getDefault();
        timeZone2.getClass();
        return timeZone2;
    }

    public final Date c() {
        Date time = Calendar.getInstance(b()).getTime();
        time.getClass();
        return time;
    }
}
