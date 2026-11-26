package defpackage;

import android.content.Context;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes.dex */
public final class b64 {
    public final ru6 a;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public final /* synthetic */ kl8<a64>.a f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kl8<a64>.a aVar) {
            super(1);
            this.f = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            Throwable th2 = th;
            th2.getClass();
            kl8<a64> kl8Var = kl8.this;
            synchronized (kl8Var) {
                if (kl8Var.c == null) {
                    kl8Var.c = new k57<>(new k57.a(th2));
                    qc4.b(kl8Var.a, new il8(kl8Var, th2));
                    qc4.b(kl8Var.b, new el8(kl8Var, th2));
                    j59 j59Var = j59.a;
                }
            }
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<a64, j59> {
        public final /* synthetic */ kl8<a64>.a f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kl8<a64>.a aVar) {
            super(1);
            this.f = aVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(a64 a64Var) {
            a64 a64Var2 = a64Var;
            kl8<a64> kl8Var = kl8.this;
            synchronized (kl8Var) {
                if (kl8Var.c == null) {
                    kl8Var.c = new k57<>(a64Var2);
                    qc4.b(kl8Var.a, new gl8(kl8Var, a64Var2));
                    qc4.b(kl8Var.b, new el8(kl8Var, null));
                    j59 j59Var = j59.a;
                }
            }
            return j59.a;
        }
    }

    public b64(CiceroneActivity ciceroneActivity) {
        new xm9.h();
        Context applicationContext = ciceroneActivity.getApplicationContext();
        applicationContext.getClass();
        this.a = (ru6) xm9.h.a(applicationContext).b.getValue();
    }

    public final kl8<a64> a() {
        kl8<a64> kl8Var = new kl8<>();
        kl8.a aVar = new kl8.a();
        ru6 ru6Var = this.a;
        ru6Var.getClass();
        zz7 zz7Var = new zz7(new pz7(new l90(ru6Var, 1)), new n72(ru6Var));
        jo2 jo2VarA = po2.a();
        jo2VarA.getClass();
        a4 a4Var = new a4(d31.r(new f18(zz7Var, jo2VarA), new a(aVar), new b(aVar)));
        synchronized (kl8Var) {
            try {
                k57<? extends a64> k57Var = kl8Var.c;
                if (k57Var == null) {
                    kl8Var.b.add(new fr1(a4Var));
                } else {
                    kl8.b(new al8(a4Var, k57.a(k57Var.b)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return kl8Var;
    }
}
