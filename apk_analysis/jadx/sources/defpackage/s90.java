package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class s90 implements r90 {
    public final da0 a;

    public s90(da0 da0Var) {
        this.a = da0Var;
    }

    @Override // defpackage.r90
    public final Object a(int i, String str, pg8 pg8Var) {
        Object objA = this.a.a(new y80(str, i), pg8Var);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }
}
