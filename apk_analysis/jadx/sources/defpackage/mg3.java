package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mg3<T, K> extends k0<T, T> {
    public final rm3.i d;
    public final ff1 e;

    public static final class a<T, K> extends ue0<T, T> {
        public final xl3<? super T, K> g;
        public final mi0<? super K, ? super K> h;
        public K i;
        public boolean j;

        public a(gv1 gv1Var, rm3.i iVar, ff1 ff1Var) {
            super(gv1Var);
            this.g = iVar;
            this.h = ff1Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.gv1
        public final boolean e(T t) {
            if (this.e) {
                return false;
            }
            int i = this.f;
            gv1<? super R> gv1Var = this.b;
            if (i != 0) {
                return gv1Var.e((Object) t);
            }
            try {
                K kApply = this.g.apply(t);
                if (this.j) {
                    boolean zTest = this.h.test(this.i, kApply);
                    this.i = kApply;
                    if (zTest) {
                        return false;
                    }
                } else {
                    this.j = true;
                    this.i = kApply;
                }
                gv1Var.onNext((Object) t);
                return true;
            } catch (Throwable th) {
                b(th);
                return true;
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (e(t)) {
                return;
            }
            this.c.request(1L);
        }

        @Override // defpackage.iz7
        public final T poll() {
            while (true) {
                T tPoll = this.d.poll();
                if (tPoll == null) {
                    return null;
                }
                K kApply = this.g.apply(tPoll);
                if (!this.j) {
                    this.j = true;
                    this.i = kApply;
                    return tPoll;
                }
                if (!this.h.test(this.i, kApply)) {
                    this.i = kApply;
                    return tPoll;
                }
                this.i = kApply;
                if (this.f != 1) {
                    this.c.request(1L);
                }
            }
        }
    }

    public static final class b<T, K> extends we0<T, T> implements gv1<T> {
        public final xl3<? super T, K> g;
        public final mi0<? super K, ? super K> h;
        public K i;
        public boolean j;

        public b(wb8 wb8Var, rm3.i iVar, ff1 ff1Var) {
            super(wb8Var);
            this.g = iVar;
            this.h = ff1Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.gv1
        public final boolean e(T t) {
            if (this.e) {
                return false;
            }
            int i = this.f;
            wb8<? super R> wb8Var = this.b;
            if (i != 0) {
                wb8Var.onNext((Object) t);
                return true;
            }
            try {
                K kApply = this.g.apply(t);
                if (this.j) {
                    boolean zTest = this.h.test(this.i, kApply);
                    this.i = kApply;
                    if (zTest) {
                        return false;
                    }
                } else {
                    this.j = true;
                    this.i = kApply;
                }
                wb8Var.onNext((Object) t);
                return true;
            } catch (Throwable th) {
                b(th);
                return true;
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (e(t)) {
                return;
            }
            this.c.request(1L);
        }

        @Override // defpackage.iz7
        public final T poll() {
            while (true) {
                T tPoll = this.d.poll();
                if (tPoll == null) {
                    return null;
                }
                K kApply = this.g.apply(tPoll);
                if (!this.j) {
                    this.j = true;
                    this.i = kApply;
                    return tPoll;
                }
                if (!this.h.test(this.i, kApply)) {
                    this.i = kApply;
                    return tPoll;
                }
                this.i = kApply;
                if (this.f != 1) {
                    this.c.request(1L);
                }
            }
        }
    }

    public mg3(gg3 gg3Var, ff1 ff1Var) {
        super(gg3Var);
        this.d = rm3.a;
        this.e = ff1Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        boolean z = wb8Var instanceof gv1;
        ff1 ff1Var = this.e;
        rm3.i iVar = this.d;
        gg3<T> gg3Var = this.c;
        if (z) {
            gg3Var.f(new a((gv1) wb8Var, iVar, ff1Var));
        } else {
            gg3Var.f(new b(wb8Var, iVar, ff1Var));
        }
    }
}
