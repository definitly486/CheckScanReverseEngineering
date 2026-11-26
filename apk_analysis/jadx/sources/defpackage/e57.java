package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e57 extends cd0 {
    public e57(e02<Object> e02Var) {
        super(e02Var);
        if (e02Var == null || e02Var.getContext() == gx2.b) {
            return;
        }
        fg.c("Coroutines with restricted suspension must have EmptyCoroutineContext");
        throw null;
    }

    @Override // defpackage.e02
    public o22 getContext() {
        return gx2.b;
    }
}
