package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface wm3<T> extends hd3<T> {
    static /* synthetic */ hd3 d(wm3 wm3Var, o22 o22Var, int i, cu0 cu0Var, int i2) {
        if ((i2 & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i2 & 2) != 0) {
            i = -3;
        }
        if ((i2 & 4) != 0) {
            cu0Var = cu0.SUSPEND;
        }
        return wm3Var.c(o22Var, i, cu0Var);
    }

    hd3<T> c(o22 o22Var, int i, cu0 cu0Var);
}
