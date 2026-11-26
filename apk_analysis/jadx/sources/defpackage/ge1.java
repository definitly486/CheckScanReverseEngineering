package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ge1 extends gh4 implements nl3<a57<b57>, c18<? extends xd1.a>> {
    public static final ge1 f = new ge1(1);

    @Override // defpackage.nl3
    public final c18<? extends xd1.a> invoke(a57<b57> a57Var) {
        a57<b57> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        if (i != 200) {
            return i != 202 ? mz7.e(xd1.a.Error) : mz7.e(xd1.a.AcceptedButAlreadyReported);
        }
        return mz7.e(xd1.a.Success);
    }
}
