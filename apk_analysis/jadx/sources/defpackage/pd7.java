package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class pd7 implements cc9<od7> {
    public static final pd7 b = new pd7();

    @Override // defpackage.cc9
    public final od7 e(td4 td4Var, float f) {
        boolean z = td4Var.U() == td4.b.BEGIN_ARRAY;
        if (z) {
            td4Var.m();
        }
        float fE = (float) td4Var.E();
        float fE2 = (float) td4Var.E();
        while (td4Var.v()) {
            td4Var.e0();
        }
        if (z) {
            td4Var.o();
        }
        return new od7((fE / 100.0f) * f, (fE2 / 100.0f) * f);
    }
}
