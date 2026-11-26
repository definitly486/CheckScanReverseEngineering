package yads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class tc6 {
    public static final Long a(String str) {
        if (str != null) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("hh:mm:ss", Locale.US);
                Date date = simpleDateFormat.parse(str);
                Date date2 = simpleDateFormat.parse("00:00:00");
                if (date != null && date2 != null) {
                    return Long.valueOf(date.getTime() - date2.getTime());
                }
            } catch (ParseException unused) {
            }
        }
        return null;
    }

    public static final Integer b(String str) {
        if (str != null) {
            try {
                return Integer.valueOf(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }
}
