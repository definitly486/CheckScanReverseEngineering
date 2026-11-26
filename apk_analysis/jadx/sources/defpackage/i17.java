package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.lang.reflect.Method;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.jsoup.helper.ValidationException;

/* JADX INFO: loaded from: classes5.dex */
public class i17 {
    public static final boolean b;
    public final Pattern a;

    static {
        boolean z = false;
        try {
            try {
                Class<?> cls = Class.forName("com.google.re2j.Pattern", false, i17.class.getClassLoader());
                try {
                    Class<?> cls2 = Class.forName("java.lang.Module");
                    Method method = Class.class.getMethod("getModule", null);
                    Object objInvoke = method.invoke(i17.class, null);
                    Object objInvoke2 = method.invoke(cls, null);
                    if (!((Boolean) cls2.getMethod("canRead", cls2).invoke(objInvoke, objInvoke2)).booleanValue()) {
                        cls2.getMethod("addReads", cls2).invoke(objInvoke, objInvoke2);
                    }
                } catch (ClassNotFoundException unused) {
                }
                z = true;
            } catch (ClassNotFoundException unused2) {
            }
        } catch (ReflectiveOperationException e) {
            System.err.println("Warning: (bug? please report) couldn't access re2j from jsoup due to modules: " + e);
        }
        b = z;
    }

    public i17(Pattern pattern) {
        this.a = pattern;
    }

    public static i17 a(String str) {
        if (b && Boolean.parseBoolean(System.getProperty("jsoup.useRe2j", TJAdUnitConstants.String.TRUE))) {
            return xx6.b(str);
        }
        try {
            return new i17(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new ValidationException("Pattern syntax error: " + e.getMessage());
        }
    }

    public String toString() {
        return this.a.toString();
    }
}
