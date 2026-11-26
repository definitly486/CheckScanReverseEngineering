package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ue0<T, R> implements gv1<T>, mw6<R> {
    public final gv1<? super R> b;
    public bc8 c;
    public mw6<T> d;
    public boolean e;
    public int f;

    public ue0(gv1<? super R> gv1Var) {
        this.b = gv1Var;
    }

    @Override // defpackage.wb8
    public final void a(bc8 bc8Var) {
        if (hc8.f(this.c, bc8Var)) {
            this.c = bc8Var;
            if (bc8Var instanceof mw6) {
                this.d = (mw6) bc8Var;
            }
            this.b.a(this);
        }
    }

    public final void b(Throwable th) {
        m13.d(th);
        this.c.cancel();
        onError(th);
    }

    @Override // defpackage.bc8
    public final void cancel() {
        this.c.cancel();
    }

    @Override // defpackage.iz7
    public final void clear() {
        this.d.clear();
    }

    @Override // defpackage.dw6
    public int d(int i) {
        mw6<T> mw6Var = this.d;
        if (mw6Var == null || (i & 4) != 0) {
            return 0;
        }
        int iD = mw6Var.d(i);
        if (iD == 0) {
            return iD;
        }
        this.f = iD;
        return iD;
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return this.d.isEmpty();
    }

    @Override // defpackage.iz7
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.wb8
    public void onComplete() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.onComplete();
    }

    @Override // defpackage.wb8
    public void onError(Throwable th) {
        if (this.e) {
            d97.b(th);
        } else {
            this.e = true;
            this.b.onError(th);
        }
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        this.c.request(j);
    }
}
