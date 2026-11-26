package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kz1 implements y22 {
    public final o22 b;

    public kz1(o22 o22Var) {
        this.b = o22Var;
    }

    @Override // defpackage.y22
    public final o22 getCoroutineContext() {
        return this.b;
    }

    public final String toString() {
        return "CoroutineScope(coroutineContext=" + this.b + ')';
    }
}
