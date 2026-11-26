package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ve0<T, R> implements ls5<T>, yv6<R> {
    public final ls5<? super R> b;
    public cp2 c;
    public yv6<T> d;
    public boolean e;

    public ve0(ls5<? super R> ls5Var) {
        this.b = ls5Var;
    }

    public final int a(int i) {
        return 0;
    }

    @Override // defpackage.iz7
    public final void clear() {
        this.d.clear();
    }

    @Override // defpackage.cp2
    public final void dispose() {
        this.c.dispose();
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this.c.isDisposed();
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return this.d.isEmpty();
    }

    @Override // defpackage.iz7
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.ls5
    public final void onComplete() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.onComplete();
    }

    @Override // defpackage.ls5
    public final void onError(Throwable th) {
        if (this.e) {
            d97.b(th);
        } else {
            this.e = true;
            this.b.onError(th);
        }
    }

    @Override // defpackage.ls5
    public final void onSubscribe(cp2 cp2Var) {
        if (ip2.i(this.c, cp2Var)) {
            this.c = cp2Var;
            if (cp2Var instanceof yv6) {
                this.d = (yv6) cp2Var;
            }
            this.b.onSubscribe(this);
        }
    }
}
