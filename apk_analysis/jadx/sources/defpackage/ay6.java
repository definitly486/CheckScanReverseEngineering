package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class ay6<T> implements wb8<T> {
    public final long b;
    public bc8 c;
    public final mu0 d;

    public ay6(int i, cu0 cu0Var, long j) {
        this.b = j;
        this.d = l91.a(i == 0 ? 1 : i, cu0Var, null, 4);
    }

    @Override // defpackage.wb8
    public final void a(bc8 bc8Var) {
        this.c = bc8Var;
        if (bc8Var != null) {
            bc8Var.request(this.b);
        } else {
            aa4.j(FirebaseAnalytics.Param.SUBSCRIPTION);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(f02 f02Var) throws Throwable {
        zx6 zx6Var;
        Object objC;
        if (f02Var instanceof zx6) {
            zx6Var = (zx6) f02Var;
            int i = zx6Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                zx6Var.n = i - Integer.MIN_VALUE;
            } else {
                zx6Var = new zx6(this, f02Var);
            }
        } else {
            zx6Var = new zx6(this, f02Var);
        }
        Object obj = zx6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = zx6Var.n;
        if (i2 == 0) {
            r57.b(obj);
            zx6Var.n = 1;
            objC = mu0.C(this.d, zx6Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            objC = ((p91) obj).a;
        }
        Throwable thA = p91.a(objC);
        if (thA != null) {
            throw thA;
        }
        if (objC instanceof p91.b) {
            return null;
        }
        return objC;
    }

    @Override // defpackage.wb8
    public final void onComplete() {
        this.d.close(null);
    }

    @Override // defpackage.wb8
    public final void onError(Throwable th) {
        this.d.d(th, false);
    }

    @Override // defpackage.wb8
    public final void onNext(T t) {
        mu0 mu0Var = this.d;
        if (mu0Var.mo0trySendJP2dKIU(t) instanceof p91.b) {
            kg.f("Element ", t, " was not added to channel because it was full, ", mu0Var);
        }
    }
}
