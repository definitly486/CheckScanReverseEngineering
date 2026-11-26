package defpackage;

import com.google.gson.Gson;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class ia7 {
    public static final tc5 a = h.c(a.f);

    public static final class a extends gh4 implements nl3<tc5, j59> {
        public static final a f = new a(1);

        @Override // defpackage.nl3
        public final j59 invoke(tc5 tc5Var) {
            tc5 tc5Var2 = tc5Var;
            tc5Var2.getClass();
            ba8 ba8Var = x97.b;
            cg4 cg4Var = cg4.Singleton;
            zk1 zk1VarA = x07.a(Gson.class);
            ba8 ba8Var2 = bf7.e;
            u4.d(new gi0(ba8Var2, zk1VarA, ba8Var, ea7.f, cg4Var), tc5Var2);
            u4.d(new gi0(ba8Var2, x07.a(OkHttpClient.class), x97.c, fa7.f, cg4Var), tc5Var2);
            u4.d(new gi0(ba8Var2, x07.a(b37.class), x97.d, ga7.f, cg4Var), tc5Var2);
            u4.d(new gi0(ba8Var2, x07.a(ka7.class), null, ha7.f, cg4Var), tc5Var2);
            return j59.a;
        }
    }
}
