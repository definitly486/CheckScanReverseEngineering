package yads;

import android.os.SystemClock;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class qt4 {
    public static tt4 a(defpackage.y22 y22Var, int i) {
        if ((i & 1) != 0) {
            y22Var = xn.a(rm9.b(), new i90());
        }
        return new tt4(y22Var, new defpackage.cg());
    }

    public static final long a() {
        return SystemClock.elapsedRealtime();
    }
}
