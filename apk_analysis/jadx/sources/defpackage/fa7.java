package defpackage;

import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class fa7 extends gh4 implements bm3<ze7, i36, OkHttpClient> {
    public static final fa7 f = new fa7(2);

    @Override // defpackage.bm3
    public final OkHttpClient invoke(ze7 ze7Var, i36 i36Var) {
        ze7 ze7Var2 = ze7Var;
        ze7Var2.getClass();
        i36Var.getClass();
        f94 f94Var = (f94) ze7Var2.e(x07.a(f94.class), null, x97.e);
        l02 l02Var = (l02) ze7Var2.e(x07.a(l02.class), null, x97.f);
        OkHttpClient.a aVar = new OkHttpClient.a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        timeUnit.getClass();
        aVar.x = gb9.b(30L, timeUnit);
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        timeUnit2.getClass();
        aVar.y = gb9.b(30L, timeUnit2);
        aVar.z = gb9.b(30L, timeUnit2);
        aVar.c.add(f94Var);
        aVar.j = l02Var;
        return new OkHttpClient(aVar);
    }
}
