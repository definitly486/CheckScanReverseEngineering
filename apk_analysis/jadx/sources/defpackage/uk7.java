package defpackage;

import android.os.CountDownTimer;

/* JADX INFO: loaded from: classes5.dex */
public final class uk7 extends CountDownTimer {
    public final nl3<Long, j59> a;
    public final ll3<j59> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public uk7(int i, nl3<? super Long, j59> nl3Var, ll3<j59> ll3Var) {
        super(((long) i) * 1000, 1000L);
        nl3Var.getClass();
        this.a = nl3Var;
        this.b = ll3Var;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        this.b.invoke();
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j) {
        this.a.invoke(Long.valueOf(j));
    }
}
