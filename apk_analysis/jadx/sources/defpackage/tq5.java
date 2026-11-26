package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class tq5<T> implements wr5<T> {

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[n00.values().length];
            a = iArr;
            try {
                iArr[n00.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[n00.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[n00.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[n00.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static tq5 b(wr5 wr5Var, tq5 tq5Var, li0 li0Var) {
        nq5.a(wr5Var, "source1 is null");
        nq5.a(tq5Var, "source2 is null");
        return c(new wr5[]{wr5Var, tq5Var}, new rm3.a(li0Var), gg3.b);
    }

    public static <T, R> tq5<R> c(wr5<? extends T>[] wr5VarArr, xl3<? super Object[], ? extends R> xl3Var, int i) {
        if (wr5VarArr.length == 0) {
            return dr5.b;
        }
        nq5.b(i, "bufferSize");
        return new wq5(wr5VarArr, xl3Var, i << 1);
    }

    @Override // defpackage.wr5
    public final void a(ls5<? super T> ls5Var) {
        nq5.a(ls5Var, "observer is null");
        try {
            f(ls5Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> tq5<R> d(xl3<? super T, ? extends wr5<? extends R>> xl3Var) throws Exception {
        int i = gg3.b;
        nq5.b(Integer.MAX_VALUE, "maxConcurrency");
        nq5.b(i, "bufferSize");
        if (!(this instanceof kd7)) {
            return new fr5(this, xl3Var, i);
        }
        T tCall = ((kd7) this).call();
        return tCall == null ? dr5.b : new tr5.b(tCall, xl3Var);
    }

    public final qr5 e(he7 he7Var) {
        int i = gg3.b;
        nq5.b(i, "bufferSize");
        return new qr5(this, he7Var, i);
    }

    public abstract void f(ls5<? super T> ls5Var);

    public final xr5 g(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        return new xr5(this, he7Var);
    }

    public final gg3<T> h(n00 n00Var) {
        ah3 ah3Var = new ah3(this);
        int i = a.a[n00Var.ordinal()];
        if (i == 1) {
            return new gh3(ah3Var);
        }
        if (i == 2) {
            return new ih3(ah3Var);
        }
        if (i == 3) {
            return ah3Var;
        }
        if (i == 4) {
            return new hh3(ah3Var);
        }
        int i2 = gg3.b;
        nq5.b(i2, "capacity");
        return new fh3(ah3Var, i2);
    }
}
