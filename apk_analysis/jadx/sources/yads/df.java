package yads;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
public final class df {
    public final defpackage.r22 a;
    public final Handler b;

    public df(defpackage.r22 r22Var) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.a = r22Var;
        this.b = handler;
    }
}
