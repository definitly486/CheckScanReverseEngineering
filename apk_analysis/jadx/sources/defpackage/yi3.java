package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class yi3<ReqT, RespT> extends d46<ReqT, RespT> {

    public static abstract class a<ReqT, RespT> extends yi3<ReqT, RespT> {
        public final rl1<ReqT, RespT> a;

        public a(rl1<ReqT, RespT> rl1Var) {
            this.a = rl1Var;
        }

        @Override // defpackage.d46
        public final rl1<ReqT, RespT> f() {
            return this.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.rl1
    public final void d(ReqT reqt) {
        f().d(reqt);
    }
}
