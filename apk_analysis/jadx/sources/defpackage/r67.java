package defpackage;

import io.grpc.l;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class r67 extends nj3 {
    public final k00 c;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            r67.this.b();
        }
    }

    public class b extends l.d {
        public final l.d a;

        public b(l.d dVar) {
            this.a = dVar;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0044  */
        @Override // io.grpc.l.d
        public final h88 a(l.e eVar) {
            h88 h88VarA = this.a.a(eVar);
            boolean zF = h88VarA.f();
            r67 r67Var = r67.this;
            k00 k00Var = r67Var.c;
            if (zF) {
                ch8 ch8Var = k00Var.b;
                ch8Var.d();
                ch8Var.execute(new j00(k00Var, 0));
                return h88VarA;
            }
            a aVar = r67Var.new a();
            k00Var.b.d();
            w33 w33VarA = k00Var.d;
            if (w33VarA == null) {
                w33VarA = k00Var.c.a();
                k00Var.d = w33VarA;
            }
            ch8.c cVar = k00Var.e;
            if (cVar != null) {
                ch8.b bVar = cVar.a;
                if (bVar.d || bVar.c) {
                    long jA = w33VarA.a();
                    k00Var.e = k00Var.b.c(aVar, jA, TimeUnit.NANOSECONDS, k00Var.a);
                    k00.f.log(Level.FINE, "Scheduling DNS resolution backoff for {0}ns", Long.valueOf(jA));
                }
            } else {
                long jA2 = w33VarA.a();
                k00Var.e = k00Var.b.c(aVar, jA2, TimeUnit.NANOSECONDS, k00Var.a);
                k00.f.log(Level.FINE, "Scheduling DNS resolution backoff for {0}ns", Long.valueOf(jA2));
            }
            return h88VarA;
        }
    }

    public r67(l lVar, k00 k00Var, ch8 ch8Var) {
        super(lVar);
        this.c = k00Var;
    }

    @Override // defpackage.nj3, io.grpc.l
    public final void c() {
        super.c();
        k00 k00Var = this.c;
        ch8 ch8Var = k00Var.b;
        ch8Var.d();
        ch8Var.execute(new j00(k00Var, 0));
    }

    @Override // defpackage.nj3, io.grpc.l
    public final void d(l.d dVar) {
        super.d(new b(dVar));
    }
}
