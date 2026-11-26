package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d91<T> implements wm3<T> {
    public final o22 b;
    public final int c;
    public final cu0 d;

    public d91(o22 o22Var, int i, cu0 cu0Var) {
        this.b = o22Var;
        this.c = i;
        this.d = cu0Var;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    @Override // defpackage.wm3
    public final hd3<T> c(o22 o22Var, int i, cu0 cu0Var) {
        o22 o22Var2 = this.b;
        o22 o22VarPlus = o22Var.plus(o22Var2);
        cu0 cu0Var2 = cu0.SUSPEND;
        cu0 cu0Var3 = this.d;
        int i2 = this.c;
        if (cu0Var == cu0Var2) {
            if (i2 != -3) {
                if (i == -3) {
                    i = i2;
                } else if (i2 != -2) {
                    if (i == -2) {
                        i = i2;
                    } else {
                        i += i2;
                        if (i < 0) {
                            i = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            cu0Var = cu0Var3;
        }
        return (aa4.e(o22VarPlus, o22Var2) && i == i2 && cu0Var == cu0Var3) ? this : i(o22VarPlus, i, cu0Var);
    }

    @Override // defpackage.hd3
    public Object collect(id3<? super T> id3Var, e02<? super j59> e02Var) {
        Object objC = z22.c(new b91(id3Var, this, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public String g() {
        return null;
    }

    public abstract Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var);

    public abstract d91<T> i(o22 o22Var, int i, cu0 cu0Var);

    public hd3<T> j() {
        return null;
    }

    public qz6<T> k(y22 y22Var) {
        int i = this.c;
        if (i == -3) {
            i = -2;
        }
        c32 c32Var = c32.ATOMIC;
        bm3 c91Var = new c91(this, null);
        tg6 tg6Var = new tg6(q22.b(y22Var, this.b), l91.a(i, this.d, null, 4));
        tg6Var.m0(c32Var, tg6Var, c91Var);
        return tg6Var;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strG = g();
        if (strG != null) {
            arrayList.add(strG);
        }
        gx2 gx2Var = gx2.b;
        o22 o22Var = this.b;
        if (o22Var != gx2Var) {
            arrayList.add("context=" + o22Var);
        }
        int i = this.c;
        if (i != -3) {
            arrayList.add("capacity=" + i);
        }
        cu0 cu0Var = cu0.SUSPEND;
        cu0 cu0Var2 = this.d;
        if (cu0Var2 != cu0Var) {
            arrayList.add("onBufferOverflow=" + cu0Var2);
        }
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append('[');
        return xp.e(sb, qn1.a0(arrayList, ", ", null, null, 0, null, 62), ']');
    }
}
