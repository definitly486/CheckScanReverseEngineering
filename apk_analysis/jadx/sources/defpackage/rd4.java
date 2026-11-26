package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rd4 extends t0 {
    public final oc4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rd4(xb4 xb4Var, oc4 oc4Var, String str) {
        super(xb4Var, oc4Var, str);
        xb4Var.getClass();
        oc4Var.getClass();
        this.f = oc4Var;
        this.a.add("primitive");
    }

    @Override // defpackage.du1
    public final int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        return 0;
    }

    @Override // defpackage.t0
    public final oc4 r(String str) {
        str.getClass();
        if (str == "primitive") {
            return this.f;
        }
        fg.c("This input can only handle primitives with 'primitive' tag");
        return null;
    }

    @Override // defpackage.t0
    public final oc4 t() {
        return this.f;
    }
}
