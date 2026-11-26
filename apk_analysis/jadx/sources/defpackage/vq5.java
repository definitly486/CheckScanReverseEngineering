package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vq5<T> extends mz7<Boolean> implements vm3<Boolean> {
    public final pr5 b;
    public final rm3.g c;

    public static final class a<T> implements ls5<T>, cp2 {
        public final t08<? super Boolean> b;
        public final ze6<? super T> c;
        public cp2 d;
        public boolean e;

        public a(t08 t08Var, rm3.g gVar) {
            this.b = t08Var;
            this.c = gVar;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            this.b.onSuccess(Boolean.FALSE);
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
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            try {
                if (this.c.test(t)) {
                    this.e = true;
                    this.d.dispose();
                    this.b.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                m13.d(th);
                this.d.dispose();
                onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public vq5(pr5 pr5Var, rm3.g gVar) {
        this.b = pr5Var;
        this.c = gVar;
    }

    @Override // defpackage.vm3
    public final tq5<Boolean> a() {
        return new uq5(this.b, this.c);
    }

    @Override // defpackage.mz7
    public final void h(t08<? super Boolean> t08Var) {
        this.b.a(new a(t08Var, this.c));
    }
}
