package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z5 extends gh4 implements nl3<a57<b57>, wc9> {
    public static final z5 f = new z5(1);

    @Override // defpackage.nl3
    public final wc9 invoke(a57<b57> a57Var) {
        a57<b57> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        if (i == 200) {
            return wc9.Supported;
        }
        if (i != 206) {
            return i != 406 ? wc9.Supported : wc9.Unsupported;
        }
        return wc9.NewerAvailable;
    }
}
