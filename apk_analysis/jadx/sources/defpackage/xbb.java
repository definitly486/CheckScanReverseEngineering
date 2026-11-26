package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzbc;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class xbb {
    public final zzbc a = new zzbc();
    public final String b;
    public volatile Logger c;

    public xbb(Class cls) {
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
