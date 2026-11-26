package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yl1 {
    public static final /* synthetic */ int a = 0;

    public class a extends rl1<Object, Object> {
        @Override // defpackage.rl1
        public final void a(String str, Throwable th) {
        }

        @Override // defpackage.rl1
        public final void b() {
        }

        @Override // defpackage.rl1
        public final void c() {
        }

        @Override // defpackage.rl1
        public final void d(Object obj) {
        }

        @Override // defpackage.rl1
        public final void e(rl1.a<Object> aVar, la5 la5Var) {
        }
    }

    public static class b extends y81 {
        public final y81 a;
        public final xl1 b;

        public b(y81 y81Var, xl1 xl1Var) {
            this.a = y81Var;
            o8.l(xl1Var, "interceptor");
            this.b = xl1Var;
        }

        @Override // defpackage.y81
        public final String a() {
            return this.a.a();
        }

        @Override // defpackage.y81
        public final <ReqT, RespT> rl1<ReqT, RespT> f(ra5<ReqT, RespT> ra5Var, io.grpc.b bVar) {
            return this.b.a(ra5Var, bVar, this.a);
        }
    }

    static {
        new a();
    }
}
