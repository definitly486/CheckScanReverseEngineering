package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class tp1 extends qp1 {
    public final qq1[] b;

    public static final class a extends AtomicInteger implements mq1 {
        public final mq1 b;
        public final qq1[] c;
        public int d;
        public final kp7 e = new kp7();

        public a(mq1 mq1Var, qq1[] qq1VarArr) {
            this.b = mq1Var;
            this.c = qq1VarArr;
        }

        public final void a() {
            kp7 kp7Var = this.e;
            if (!kp7Var.isDisposed() && getAndIncrement() == 0) {
                while (!kp7Var.isDisposed()) {
                    int i = this.d;
                    this.d = i + 1;
                    qq1[] qq1VarArr = this.c;
                    if (i == qq1VarArr.length) {
                        this.b.onComplete();
                        return;
                    } else {
                        qq1VarArr[i].b(this);
                        if (decrementAndGet() == 0) {
                            return;
                        }
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
            ip2.e(this.e, cp2Var);
        }
    }

    public tp1(qq1[] qq1VarArr) {
        this.b = qq1VarArr;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        a aVar = new a(mq1Var, this.b);
        mq1Var.onSubscribe(aVar.e);
        aVar.a();
    }
}
