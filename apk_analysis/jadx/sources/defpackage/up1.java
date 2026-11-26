package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class up1 extends qp1 {
    public final ArrayList b;

    public static final class a extends AtomicInteger implements mq1 {
        public final mq1 b;
        public final Iterator<? extends qq1> c;
        public final kp7 d = new kp7();

        public a(mq1 mq1Var, Iterator<? extends qq1> it) {
            this.b = mq1Var;
            this.c = it;
        }

        public final void a() {
            mq1 mq1Var = this.b;
            kp7 kp7Var = this.d;
            if (!kp7Var.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends qq1> it = this.c;
                while (!kp7Var.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            mq1Var.onComplete();
                            return;
                        }
                        try {
                            qq1 next = it.next();
                            nq5.a(next, "The CompletableSource returned is null");
                            next.b(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            m13.d(th);
                            mq1Var.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        m13.d(th2);
                        mq1Var.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            a();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this.d, cp2Var);
        }
    }

    public up1(ArrayList arrayList) {
        this.b = arrayList;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        try {
            Iterator it = this.b.iterator();
            nq5.a(it, "The iterator returned is null");
            a aVar = new a(mq1Var, it);
            mq1Var.onSubscribe(aVar.d);
            aVar.a();
        } catch (Throwable th) {
            m13.d(th);
            mq1Var.onSubscribe(hx2.INSTANCE);
            mq1Var.onError(th);
        }
    }
}
