package defpackage;

import io.grpc.b;

/* JADX INFO: loaded from: classes5.dex */
public final class pa5 implements xl1 {
    public final la5 a;

    public final class a<ReqT, RespT> extends yi3.a<ReqT, RespT> {
        public a(rl1<ReqT, RespT> rl1Var) {
            super(rl1Var);
        }

        @Override // defpackage.rl1
        public final void e(rl1.a<RespT> aVar, la5 la5Var) {
            la5Var.d(pa5.this.a);
            this.a.e(aVar, la5Var);
        }
    }

    public pa5(la5 la5Var) {
        o8.l(la5Var, "extraHeaders");
        this.a = la5Var;
    }

    @Override // defpackage.xl1
    public final <ReqT, RespT> rl1<ReqT, RespT> a(ra5<ReqT, RespT> ra5Var, b bVar, y81 y81Var) {
        return new a(y81Var.f(ra5Var, bVar));
    }
}
