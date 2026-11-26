package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i91<T> extends h91<T, T> {
    public i91(hd3 hd3Var, o22 o22Var, int i, cu0 cu0Var, int i2) {
        super((i2 & 4) != 0 ? -3 : i, (i2 & 8) != 0 ? cu0.SUSPEND : cu0Var, (i2 & 2) != 0 ? gx2.b : o22Var, hd3Var);
    }

    @Override // defpackage.d91
    public final d91<T> i(o22 o22Var, int i, cu0 cu0Var) {
        return new i91(i, cu0Var, o22Var, this.e);
    }

    @Override // defpackage.d91
    public final hd3<T> j() {
        return (hd3<T>) this.e;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.h91
    public final Object l(id3<? super T> id3Var, e02<? super j59> e02Var) {
        Object objCollect = this.e.collect((id3<? super S>) id3Var, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
