package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yo7<T> implements id3<T> {
    public final no7<T> b;

    /* JADX WARN: Multi-variable type inference failed */
    public yo7(no7<? super T> no7Var) {
        this.b = no7Var;
    }

    @Override // defpackage.id3
    public final Object emit(T t, e02<? super j59> e02Var) {
        Object objSend = this.b.send(t, e02Var);
        return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
    }
}
