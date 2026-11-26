package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d6 extends gh4 implements nl3<a57<b57>, z79> {
    public static final d6 f = new d6(1);

    @Override // defpackage.nl3
    public final z79 invoke(a57<b57> a57Var) {
        z79.a aVar;
        a57<b57> a57Var2 = a57Var;
        a57Var2.getClass();
        z47 z47Var = a57Var2.a;
        if (z47Var.o()) {
            aVar = z79.a.Success;
        } else {
            aVar = z47Var.e == 403 ? z79.a.Forbidden : z79.a.Error;
        }
        return new z79(aVar);
    }
}
