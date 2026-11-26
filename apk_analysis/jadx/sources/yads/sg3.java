package yads;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class sg3 {
    public static WeakReference d;
    public Object a;
    public boolean b;
    public final rg3 c;

    public sg3(vq0 vq0Var) {
        rg3 rg3Var = new rg3(this);
        this.c = rg3Var;
        synchronized (vq0Var.E) {
            vq0Var.v.a(rg3Var);
        }
    }
}
