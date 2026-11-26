package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rb0 extends gh4 implements nl3<a57<uc>, c18<? extends ob0<? extends String>>> {
    public static final rb0 f = new rb0(1);

    @Override // defpackage.nl3
    public final c18<? extends ob0<? extends String>> invoke(a57<uc> a57Var) {
        a57<uc> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        if (i == 200) {
            uc ucVar = a57Var2.b;
            String strA = ucVar != null ? ucVar.a() : null;
            return (strA == null || ta8.M(strA)) ? mz7.e(new ob0.a(null)) : mz7.e(new ob0.b(strA));
        }
        if (i != 403 && i != 406 && i != 503) {
            return mz7.e(new ob0.a(null));
        }
        b57 b57Var = a57Var2.c;
        nb0 nb0Var = b57Var != null ? (nb0) ht3.b(nb0.class, b57Var.v()) : null;
        return mz7.e(new ob0.a(nb0Var != null ? nb0Var.a() : null));
    }
}
