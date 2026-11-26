package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ae4 extends t0 {
    public final zb4 f;
    public final int g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae4(xb4 xb4Var, zb4 zb4Var) {
        super(xb4Var, zb4Var, null);
        xb4Var.getClass();
        this.f = zb4Var;
        this.g = zb4Var.b.size();
        this.h = -1;
    }

    @Override // defpackage.du1
    public final int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        int i = this.h;
        if (i >= this.g - 1) {
            return -1;
        }
        int i2 = i + 1;
        this.h = i2;
        return i2;
    }

    @Override // defpackage.yh5
    public final String n(mp7 mp7Var, int i) {
        mp7Var.getClass();
        return String.valueOf(i);
    }

    @Override // defpackage.t0
    public final oc4 r(String str) {
        str.getClass();
        return this.f.b.get(Integer.parseInt(str));
    }

    @Override // defpackage.t0
    public final oc4 t() {
        return this.f;
    }
}
