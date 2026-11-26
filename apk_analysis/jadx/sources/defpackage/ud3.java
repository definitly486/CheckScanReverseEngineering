package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ud3 {
    public static hd3 a(hd3 hd3Var, int i) {
        cu0 cu0Var = cu0.SUSPEND;
        if (i < 0 && i != -2 && i != -1) {
            c9.f(jh.b(i, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "));
            return null;
        }
        if (i == -1) {
            cu0Var = cu0.DROP_OLDEST;
            i = 0;
        }
        int i2 = i;
        cu0 cu0Var2 = cu0Var;
        return hd3Var instanceof wm3 ? wm3.d((wm3) hd3Var, null, i2, cu0Var2, 1) : new i91(hd3Var, null, i2, cu0Var2, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> hd3<T> b(hd3<? extends T> hd3Var, o22 o22Var) {
        if (o22Var.get(mb4.a.b) != null) {
            eg.d(o22Var, "Flow context cannot contain job in it. Had ");
            return null;
        }
        if (o22Var.equals(gx2.b)) {
            return hd3Var;
        }
        return hd3Var instanceof wm3 ? wm3.d((wm3) hd3Var, o22Var, 0, null, 6) : new i91(hd3Var, o22Var, 0, null, 12);
    }
}
