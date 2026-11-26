package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lt8 {
    public static final bh8 a = new bh8("NO_THREAD_ELEMENTS");
    public static final jt8 b = new jt8();
    public static final xl4 c = new xl4(2);
    public static final kt8 d = new kt8(0);

    public static final void a(o22 o22Var, Object obj) {
        if (obj == a) {
            return;
        }
        if (!(obj instanceof tt8)) {
            Object objFold = o22Var.fold(null, c);
            objFold.getClass();
            ((it8) objFold).restoreThreadContext(o22Var, obj);
            return;
        }
        tt8 tt8Var = (tt8) obj;
        it8<Object>[] it8VarArr = tt8Var.c;
        int length = it8VarArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            it8<Object> it8Var = it8VarArr[length];
            it8Var.getClass();
            it8Var.restoreThreadContext(o22Var, tt8Var.b[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }

    public static final Object b(o22 o22Var) {
        Object objFold = o22Var.fold(0, b);
        objFold.getClass();
        return objFold;
    }

    public static final Object c(o22 o22Var, Object obj) {
        if (obj == null) {
            obj = b(o22Var);
        }
        if (obj == 0) {
            return a;
        }
        return obj instanceof Integer ? o22Var.fold(new tt8(((Number) obj).intValue(), o22Var), d) : ((it8) obj).updateThreadContext(o22Var);
    }
}
