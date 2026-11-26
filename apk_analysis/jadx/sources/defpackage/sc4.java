package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sc4 {
    public final cw2 a;
    public boolean b;

    public static final /* synthetic */ class a extends qm3 implements bm3<mp7, Integer, Boolean> {
        @Override // defpackage.bm3
        public final Boolean invoke(mp7 mp7Var, Integer num) {
            mp7 mp7Var2 = mp7Var;
            int iIntValue = num.intValue();
            mp7Var2.getClass();
            sc4 sc4Var = (sc4) this.receiver;
            sc4Var.getClass();
            boolean z = !mp7Var2.i(iIntValue) && mp7Var2.d(iIntValue).b();
            sc4Var.b = z;
            return Boolean.valueOf(z);
        }
    }

    public sc4(mp7 mp7Var) {
        mp7Var.getClass();
        this.a = new cw2(mp7Var, new a(2, this, sc4.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0));
    }
}
