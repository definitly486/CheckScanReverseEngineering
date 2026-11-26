package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class kq1 extends qp1 {
    public final ArrayList b;

    public static final class a extends AtomicBoolean implements mq1 {
        public final fu1 b;
        public final mq1 c;
        public final AtomicInteger d;

        public a(mq1 mq1Var, fu1 fu1Var, AtomicInteger atomicInteger) {
            this.c = mq1Var;
            this.b = fu1Var;
            this.d = atomicInteger;
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            if (this.d.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.c.onComplete();
            }
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.dispose();
            if (compareAndSet(false, true)) {
                this.c.onError(th);
            } else {
                d97.b(th);
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            this.b.b(cp2Var);
        }
    }

    public kq1(ArrayList arrayList) {
        this.b = arrayList;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        fu1 fu1Var = new fu1();
        mq1Var.onSubscribe(fu1Var);
        try {
            Iterator it = this.b.iterator();
            nq5.a(it, "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            a aVar = new a(mq1Var, fu1Var, atomicInteger);
            while (!fu1Var.c) {
                try {
                    if (!it.hasNext()) {
                        aVar.onComplete();
                        return;
                    }
                    if (fu1Var.c) {
                        return;
                    }
                    try {
                        Object next = it.next();
                        nq5.a(next, "The iterator returned a null CompletableSource");
                        qq1 qq1Var = (qq1) next;
                        if (fu1Var.c) {
                            return;
                        }
                        atomicInteger.getAndIncrement();
                        qq1Var.b(aVar);
                    } catch (Throwable th) {
                        m13.d(th);
                        fu1Var.dispose();
                        aVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    m13.d(th2);
                    fu1Var.dispose();
                    aVar.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            m13.d(th3);
            mq1Var.onError(th3);
        }
    }
}
