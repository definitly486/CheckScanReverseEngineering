package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xg3<T> extends gg3<T> {
    public final T[] c;

    public static final class a<T> extends c<T> {
        public final gv1<? super T> e;

        public a(gv1<? super T> gv1Var, T[] tArr) {
            super(tArr);
            this.e = gv1Var;
        }

        @Override // xg3.c
        public final void a() {
            T[] tArr = this.b;
            int length = tArr.length;
            gv1<? super T> gv1Var = this.e;
            int i = this.c;
            while (true) {
                boolean z = this.d;
                if (i == length) {
                    if (z) {
                        return;
                    }
                    gv1Var.onComplete();
                    return;
                } else {
                    if (z) {
                        return;
                    }
                    T t = tArr[i];
                    if (t == null) {
                        gv1Var.onError(new NullPointerException(kv2.b(i, "The element at index ", " is null")));
                        return;
                    } else {
                        gv1Var.e(t);
                        i++;
                    }
                }
            }
        }

        @Override // xg3.c
        public final void b(long j) {
            T[] tArr = this.b;
            int length = tArr.length;
            int i = this.c;
            gv1<? super T> gv1Var = this.e;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j || i == length) {
                        if (i == length) {
                            if (this.d) {
                                return;
                            }
                            gv1Var.onComplete();
                            return;
                        } else {
                            j = get();
                            if (j2 == j) {
                                break;
                            }
                        }
                    } else {
                        if (this.d) {
                            return;
                        }
                        T t = tArr[i];
                        if (t == null) {
                            gv1Var.onError(new NullPointerException(kv2.b(i, "The element at index ", " is null")));
                            return;
                        } else {
                            if (gv1Var.e(t)) {
                                j2++;
                            }
                            i++;
                        }
                    }
                }
                this.c = i;
                j = addAndGet(-j2);
            } while (j != 0);
        }
    }

    public static final class b<T> extends c<T> {
        public final wb8<? super T> e;

        public b(wb8<? super T> wb8Var, T[] tArr) {
            super(tArr);
            this.e = wb8Var;
        }

        @Override // xg3.c
        public final void a() {
            T[] tArr = this.b;
            int length = tArr.length;
            wb8<? super T> wb8Var = this.e;
            int i = this.c;
            while (true) {
                boolean z = this.d;
                if (i == length) {
                    if (z) {
                        return;
                    }
                    wb8Var.onComplete();
                    return;
                } else {
                    if (z) {
                        return;
                    }
                    T t = tArr[i];
                    if (t == null) {
                        wb8Var.onError(new NullPointerException(kv2.b(i, "The element at index ", " is null")));
                        return;
                    } else {
                        wb8Var.onNext(t);
                        i++;
                    }
                }
            }
        }

        @Override // xg3.c
        public final void b(long j) {
            T[] tArr = this.b;
            int length = tArr.length;
            int i = this.c;
            wb8<? super T> wb8Var = this.e;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j || i == length) {
                        if (i == length) {
                            if (this.d) {
                                return;
                            }
                            wb8Var.onComplete();
                            return;
                        } else {
                            j = get();
                            if (j2 == j) {
                                break;
                            }
                        }
                    } else {
                        if (this.d) {
                            return;
                        }
                        T t = tArr[i];
                        if (t == null) {
                            wb8Var.onError(new NullPointerException(kv2.b(i, "The element at index ", " is null")));
                            return;
                        } else {
                            wb8Var.onNext(t);
                            j2++;
                            i++;
                        }
                    }
                }
                this.c = i;
                j = addAndGet(-j2);
            } while (j != 0);
        }
    }

    public static abstract class c<T> extends bf0<T> {
        public final T[] b;
        public int c;
        public volatile boolean d;

        public c(T[] tArr) {
            this.b = tArr;
        }

        public abstract void a();

        public abstract void b(long j);

        @Override // defpackage.bc8
        public final void cancel() {
            this.d = true;
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.c = this.b.length;
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return 1;
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return this.c == this.b.length;
        }

        @Override // defpackage.iz7
        public final T poll() {
            int i = this.c;
            T[] tArr = this.b;
            if (i == tArr.length) {
                return null;
            }
            this.c = i + 1;
            T t = tArr[i];
            nq5.a(t, "array element is null");
            return t;
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j) && m00.c(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j);
                }
            }
        }
    }

    public xg3(T[] tArr) {
        this.c = tArr;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        boolean z = wb8Var instanceof gv1;
        T[] tArr = this.c;
        if (z) {
            wb8Var.a(new a((gv1) wb8Var, tArr));
        } else {
            wb8Var.a(new b(wb8Var, tArr));
        }
    }
}
