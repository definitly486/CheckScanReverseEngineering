package defpackage;

import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class ui extends Handler {
    public static final ui a = new ui();

    @Override // java.util.logging.Handler
    public final void close() {
    }

    @Override // java.util.logging.Handler
    public final void flush() {
    }

    @Override // java.util.logging.Handler
    public final void publish(LogRecord logRecord) {
        int i;
        int iMin;
        logRecord.getClass();
        CopyOnWriteArraySet<Logger> copyOnWriteArraySet = ti.a;
        String loggerName = logRecord.getLoggerName();
        loggerName.getClass();
        int iIntValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        if (iIntValue > level.intValue()) {
            i = 5;
        } else {
            i = logRecord.getLevel().intValue() == level.intValue() ? 4 : 3;
        }
        String message = logRecord.getMessage();
        message.getClass();
        Throwable thrown = logRecord.getThrown();
        String strL0 = ti.b.get(loggerName);
        if (strL0 == null) {
            strL0 = ua8.l0(23, loggerName);
        }
        if (Log.isLoggable(strL0, i)) {
            if (thrown != null) {
                message = message + '\n' + Log.getStackTraceString(thrown);
            }
            int length = message.length();
            int i2 = 0;
            while (i2 < length) {
                int iJ = ta8.J('\n', i2, 4, message);
                if (iJ == -1) {
                    iJ = length;
                }
                while (true) {
                    iMin = Math.min(iJ, i2 + MapTrimmers.DEFAULT_VALUE_MAX_LENGTH);
                    Log.println(i, strL0, message.substring(i2, iMin));
                    if (iMin >= iJ) {
                        break;
                    } else {
                        i2 = iMin;
                    }
                }
                i2 = iMin + 1;
            }
        }
    }
}
