package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
public final class mz<T> {
    public static final /* synthetic */ AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(mz.class, "notCompletedCount$volatile");
    public final mk2<T>[] a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    public final class a extends rb4 {
        public static final /* synthetic */ long i = pz0.a.objectFieldOffset(a.class.getDeclaredField("_disposer$volatile"));
        private volatile /* synthetic */ Object _disposer$volatile;
        public final c31 f;
        public hp2 g;

        public a(c31 c31Var) {
            this.f = c31Var;
        }

        @Override // defpackage.rb4
        public final boolean k() {
            return false;
        }

        @Override // defpackage.rb4
        public final void l(Throwable th) {
            c31 c31Var = this.f;
            if (th != null) {
                c31Var.getClass();
                bh8 bh8VarF = c31Var.F(new yq1(th, false), null);
                if (bh8VarF != null) {
                    c31Var.j(bh8VarF);
                    b bVar = (b) pz0.a.getObjectVolatile(this, i);
                    if (bVar != null) {
                        bVar.a();
                        return;
                    }
                    return;
                }
                return;
            }
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = mz.b;
            mz<T> mzVar = mz.this;
            if (atomicIntegerFieldUpdater.decrementAndGet(mzVar) == 0) {
                mk2<T>[] mk2VarArr = mzVar.a;
                ArrayList arrayList = new ArrayList(mk2VarArr.length);
                for (mk2<T> mk2Var : mk2VarArr) {
                    arrayList.add(mk2Var.m());
                }
                c31Var.resumeWith(arrayList);
            }
        }
    }

    public final class b implements q21 {
        public final mz<T>.a[] b;

        public b(a[] aVarArr) {
            this.b = aVarArr;
        }

        public final void a() {
            for (mz<T>.a aVar : this.b) {
                hp2 hp2Var = aVar.g;
                if (hp2Var == null) {
                    aa4.j("handle");
                    throw null;
                }
                hp2Var.dispose();
            }
        }

        @Override // defpackage.q21
        public final void b(Throwable th) {
            a();
        }

        public final String toString() {
            return "DisposeHandlersOnCancel[" + this.b + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public mz(mk2<? extends T>[] mk2VarArr) {
        this.a = mk2VarArr;
        this.notCompletedCount$volatile = mk2VarArr.length;
    }
}
