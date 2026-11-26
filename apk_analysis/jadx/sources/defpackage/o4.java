package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class o4 extends gh4 implements nl3<a57<b57>, c4.a> {
    public static final o4 f = new o4(1);

    @Override // defpackage.nl3
    public final c4.a invoke(a57<b57> a57Var) {
        a57<b57> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        if (200 <= i && i < 300) {
            return c4.a.NewUsernameSent;
        }
        if (i == 404) {
            return c4.a.UsernameNotFound;
        }
        if (500 > i || i >= 600) {
            return i == 409 ? c4.a.AlreadyCreated : c4.a.Error;
        }
        return c4.a.BackendError;
    }
}
