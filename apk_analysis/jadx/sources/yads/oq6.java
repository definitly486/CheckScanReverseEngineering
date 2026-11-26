package yads;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
public final class oq6 implements vp6 {
    public static oq6 e;
    public float a = 0.0f;
    public final gp6 b;
    public aq6 c;
    public tp6 d;

    public oq6(fq6 fq6Var, gp6 gp6Var) {
        this.b = gp6Var;
    }

    @Override // yads.vp6
    public final void a(boolean z) {
        if (!z) {
            a26.g.getClass();
            Handler handler = a26.i;
            if (handler != null) {
                handler.removeCallbacks(a26.k);
                a26.i = null;
                return;
            }
            return;
        }
        a26.g.getClass();
        if (a26.i == null) {
            Handler handler2 = new Handler(Looper.getMainLooper());
            a26.i = handler2;
            handler2.post(a26.j);
            a26.i.postDelayed(a26.k, 200L);
        }
    }

    public static oq6 a() {
        oq6 oq6Var = e;
        if (oq6Var != null) {
            return oq6Var;
        }
        oq6 oq6Var2 = new oq6(new fq6(), new gp6());
        e = oq6Var2;
        return oq6Var2;
    }
}
