package defpackage;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public final class rj {
    public static final ju3 a;

    public static final class a {
        public static final ju3 a = new ju3(new Handler(Looper.getMainLooper()));
    }

    static {
        try {
            ju3 ju3Var = a.a;
            if (ju3Var == null) {
                throw new NullPointerException("Scheduler Callable returned null");
            }
            a = ju3Var;
        } catch (Throwable th) {
            throw k13.d(th);
        }
    }

    public static ju3 a() {
        ju3 ju3Var = a;
        if (ju3Var != null) {
            return ju3Var;
        }
        o2.d("scheduler == null");
        return null;
    }
}
