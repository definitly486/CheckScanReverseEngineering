package defpackage;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class s91 {
    public static final Logger c = Logger.getLogger(n91.class.getName());
    public final Object a = new Object();
    public final m94 b;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[h94.a.values().length];
            a = iArr;
            try {
                iArr[h94.a.CT_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[h94.a.CT_WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public s91(m94 m94Var, long j, String str) {
        this.b = m94Var;
        String strConcat = str.concat(" created");
        h94.a aVar = h94.a.CT_INFO;
        o8.l(aVar, "severity");
        b(new h94(strConcat, aVar, j, null));
    }

    public static void a(m94 m94Var, Level level, String str) {
        Logger logger = c;
        if (logger.isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, "[" + m94Var + "] " + str);
            logRecord.setLoggerName(logger.getName());
            logRecord.setSourceClassName(logger.getName());
            logRecord.setSourceMethodName("log");
            logger.log(logRecord);
        }
    }

    public final void b(h94 h94Var) {
        Level level;
        int i = a.a[h94Var.b.ordinal()];
        if (i != 1) {
            level = i != 2 ? Level.FINEST : Level.FINER;
        } else {
            level = Level.FINE;
        }
        synchronized (this.a) {
        }
        a(this.b, level, h94Var.a);
    }
}
