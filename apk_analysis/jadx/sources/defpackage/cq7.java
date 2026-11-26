package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cq7<T> implements ls5<T>, cp2 {
    public final ls5<? super T> b;
    public cp2 c;
    public boolean d;
    public mq<Object> e;
    public volatile boolean f;

    public cq7(ls5<? super T> ls5Var) {
        this.b = ls5Var;
    }

    @Override // defpackage.cp2
    public final void dispose() {
        this.c.dispose();
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this.c.isDisposed();
    }

    @Override // defpackage.ls5
    public final void onComplete() {
        if (this.f) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f) {
                    return;
                }
                if (!this.d) {
                    this.f = true;
                    this.d = true;
                    this.b.onComplete();
                } else {
                    mq<Object> mqVar = this.e;
                    if (mqVar == null) {
                        mqVar = new mq<>();
                        this.e = mqVar;
                    }
                    mqVar.a(xo5.COMPLETE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.ls5
    public final void onError(Throwable th) {
        if (this.f) {
            d97.b(th);
            return;
        }
        synchronized (this) {
            try {
                boolean z = true;
                if (!this.f) {
                    if (this.d) {
                        this.f = true;
                        mq<Object> mqVar = this.e;
                        if (mqVar == null) {
                            mqVar = new mq<>();
                            this.e = mqVar;
                        }
                        mqVar.a[0] = new xo5.b(th);
                        return;
                    }
                    this.f = true;
                    this.d = true;
                    z = false;
                }
                if (z) {
                    d97.b(th);
                } else {
                    this.b.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // defpackage.ls5
    public final void onNext(T t) {
        Object obj;
        if (this.f) {
            return;
        }
        if (t == null) {
            this.c.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            try {
                if (this.f) {
                    return;
                }
                if (this.d) {
                    mq<Object> mqVar = this.e;
                    if (mqVar == null) {
                        mqVar = new mq<>();
                        this.e = mqVar;
                    }
                    mqVar.a(t);
                    return;
                }
                this.d = true;
                this.b.onNext(t);
                while (true) {
                    synchronized (this) {
                        try {
                            mq<Object> mqVar2 = this.e;
                            if (mqVar2 == null) {
                                this.d = false;
                                return;
                            }
                            this.e = null;
                            ls5<? super T> ls5Var = this.b;
                            for (Object[] objArr = mqVar2.a; objArr != null; objArr = (Object[]) objArr[4]) {
                                for (int i = 0; i < 4 && (obj = objArr[i]) != null; i++) {
                                    if (obj == xo5.COMPLETE) {
                                        ls5Var.onComplete();
                                        return;
                                    } else {
                                        if (obj instanceof xo5.b) {
                                            ls5Var.onError(((xo5.b) obj).b);
                                            return;
                                        }
                                        if (obj instanceof xo5.a) {
                                            ls5Var.onSubscribe(null);
                                        } else {
                                            ls5Var.onNext(obj);
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // defpackage.ls5
    public final void onSubscribe(cp2 cp2Var) {
        if (ip2.i(this.c, cp2Var)) {
            this.c = cp2Var;
            this.b.onSubscribe(this);
        }
    }
}
