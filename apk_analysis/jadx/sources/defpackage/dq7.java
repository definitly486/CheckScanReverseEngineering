package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dq7<T> implements rh3<T>, bc8 {
    public final wb8<? super T> b;
    public bc8 c;
    public boolean d;
    public mq<Object> e;
    public volatile boolean f;

    public dq7(wb8<? super T> wb8Var) {
        this.b = wb8Var;
    }

    @Override // defpackage.wb8
    public final void a(bc8 bc8Var) {
        if (hc8.f(this.c, bc8Var)) {
            this.c = bc8Var;
            this.b.a(this);
        }
    }

    @Override // defpackage.bc8
    public final void cancel() {
        this.c.cancel();
    }

    @Override // defpackage.wb8
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

    @Override // defpackage.wb8
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

    @Override // defpackage.wb8
    public final void onNext(T t) {
        Object obj;
        if (this.f) {
            return;
        }
        if (t == null) {
            this.c.cancel();
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
                            wb8<? super T> wb8Var = this.b;
                            for (Object[] objArr = mqVar2.a; objArr != null; objArr = (Object[]) objArr[4]) {
                                for (int i = 0; i < 4 && (obj = objArr[i]) != null; i++) {
                                    if (obj == xo5.COMPLETE) {
                                        wb8Var.onComplete();
                                        return;
                                    } else {
                                        if (obj instanceof xo5.b) {
                                            wb8Var.onError(((xo5.b) obj).b);
                                            return;
                                        }
                                        if (obj instanceof xo5.c) {
                                            wb8Var.a(null);
                                        } else {
                                            wb8Var.onNext(obj);
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

    @Override // defpackage.bc8
    public final void request(long j) {
        this.c.request(j);
    }
}
