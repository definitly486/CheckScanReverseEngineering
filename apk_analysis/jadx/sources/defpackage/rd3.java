package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rd3 implements hd3<Object> {
    public final /* synthetic */ Object b;

    public rd3(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        Object objEmit = id3Var.emit(this.b, e02Var);
        return objEmit == a32.COROUTINE_SUSPENDED ? objEmit : j59.a;
    }
}
