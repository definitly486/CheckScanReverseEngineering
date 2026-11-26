package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class w87 implements t08<Object> {
    public final /* synthetic */ c31 b;

    public w87(c31 c31Var) {
        this.b = c31Var;
    }

    @Override // defpackage.t08
    public final void onError(Throwable th) {
        this.b.resumeWith(r57.a(th));
    }

    @Override // defpackage.t08
    public final void onSubscribe(cp2 cp2Var) {
        this.b.n(new om4(cp2Var, 1));
    }

    @Override // defpackage.t08
    public final void onSuccess(Object obj) {
        this.b.resumeWith(obj);
    }
}
