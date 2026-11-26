package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class dp7 extends ly1 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements zo7<T> {
        public final /* synthetic */ Iterator a;

        public a(Iterator it) {
            this.a = it;
        }

        @Override // defpackage.zo7
        public final Iterator<T> iterator() {
            return this.a;
        }
    }

    public static <T> zo7<T> f(Iterator<? extends T> it) {
        it.getClass();
        return new lx1(new a(it));
    }

    public static final nc3 g(zo7 zo7Var) {
        u00 u00Var = new u00(4);
        if (!(zo7Var instanceof f29)) {
            return new nc3(zo7Var, new si1(2), u00Var);
        }
        f29 f29Var = (f29) zo7Var;
        return new nc3(f29Var.a, f29Var.b, u00Var);
    }

    public static zo7 h(nl3 nl3Var, Object obj) {
        nl3Var.getClass();
        return obj == null ? nx2.a : new ep3(new dz0(obj, 2), nl3Var);
    }
}
