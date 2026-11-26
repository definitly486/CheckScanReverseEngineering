package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class be4 extends zd4 {
    public final jd4 j;
    public final List<String> k;
    public final int l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be4(xb4 xb4Var, jd4 jd4Var) {
        super(xb4Var, jd4Var, (String) null, 12);
        xb4Var.getClass();
        this.j = jd4Var;
        List<String> listT0 = qn1.t0(jd4Var.b.keySet());
        this.k = listT0;
        this.l = listT0.size() * 2;
        this.m = -1;
    }

    @Override // defpackage.zd4, defpackage.du1
    public final int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        int i = this.m;
        if (i >= this.l - 1) {
            return -1;
        }
        int i2 = i + 1;
        this.m = i2;
        return i2;
    }

    @Override // defpackage.zd4, defpackage.t0, defpackage.du1
    public final void endStructure(mp7 mp7Var) {
        mp7Var.getClass();
    }

    @Override // defpackage.zd4, defpackage.yh5
    public final String n(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return this.k.get(i / 2);
    }

    @Override // defpackage.zd4, defpackage.t0
    public final oc4 r(String str) {
        str.getClass();
        if (this.m % 2 != 0) {
            return (oc4) n05.c(str, this.j);
        }
        i54 i54Var = rc4.a;
        return new cd4(str, true);
    }

    @Override // defpackage.zd4, defpackage.t0
    public final oc4 t() {
        return this.j;
    }

    @Override // defpackage.zd4
    /* JADX INFO: renamed from: w */
    public final jd4 t() {
        return this.j;
    }
}
