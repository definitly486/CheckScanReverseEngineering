package defpackage;

import retrofit2.HttpException;

/* JADX INFO: loaded from: classes5.dex */
public final class tf1 extends gh4 implements nl3<a57<b57>, ec0> {
    public static final tf1 f = new tf1(1);

    @Override // defpackage.nl3
    public final ec0 invoke(a57<b57> a57Var) {
        a57<b57> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        if (200 <= i && i < 300) {
            return ec0.Ignored;
        }
        if (i == 401) {
            return ec0.Unauthorized;
        }
        throw new HttpException(a57Var2);
    }
}
