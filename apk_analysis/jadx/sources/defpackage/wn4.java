package defpackage;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class wn4 {
    public final Object a = new Object();
    public final String b;
    public volatile Logger c;

    public wn4(Class<?> cls) {
        this.b = cls.getName();
    }

    public final Logger a() {
        Logger logger = this.c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.a) {
            try {
                Logger logger2 = this.c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.b);
                this.c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
