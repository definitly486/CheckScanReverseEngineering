package defpackage;

import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class ev4 {
    public static final Pattern c;
    public static final Pattern d;
    public final Matcher a = c.matcher("");
    public final Matcher b = d.matcher("");

    static {
        TimeZone.getTimeZone("UTC");
        c = Pattern.compile("--------- beginning of (.*)");
        d = Pattern.compile("((?:(\\d\\d\\d\\d)-)?(\\d\\d)-(\\d\\d)\\s+(\\d\\d):(\\d\\d):(\\d\\d)\\.(\\d\\d\\d)\\s+(\\d+)\\s+(\\d+)\\s+(.)\\s+)(.*?):\\s(.*)");
    }

    public static GregorianCalendar b(Matcher matcher) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        if (matcher.group(2) != null) {
            gregorianCalendar.set(1, Integer.parseInt(matcher.group(2)));
        }
        gregorianCalendar.set(2, Integer.parseInt(matcher.group(3)) - 1);
        gregorianCalendar.set(5, Integer.parseInt(matcher.group(4)));
        gregorianCalendar.set(11, Integer.parseInt(matcher.group(5)));
        gregorianCalendar.set(12, Integer.parseInt(matcher.group(6)));
        gregorianCalendar.set(13, Integer.parseInt(matcher.group(7)));
        gregorianCalendar.set(14, Integer.parseInt(matcher.group(8)));
        return gregorianCalendar;
    }

    public final yu4 a(String str) {
        try {
            Matcher matcher = this.a;
            matcher.reset(str);
            if (!matcher.matches()) {
                matcher = null;
            }
            if (matcher == null) {
                Matcher matcher2 = this.b;
                matcher2.reset(str);
                if (!matcher2.matches()) {
                    matcher2 = null;
                }
                if (matcher2 != null) {
                    yu4 yu4Var = new yu4();
                    yu4Var.b = b(matcher2);
                    char cCharAt = matcher2.group(11).charAt(0);
                    if (cCharAt == 'E' || cCharAt == 'F') {
                        yu4Var.c = "error";
                    } else if (cCharAt == 'I') {
                        yu4Var.c = "info";
                    } else if (cCharAt != 'W') {
                        yu4Var.c = "debug";
                    } else {
                        yu4Var.c = "warn";
                    }
                    yu4Var.d = matcher2.group(12);
                    yu4Var.e = matcher2.group(13);
                    return yu4Var;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
