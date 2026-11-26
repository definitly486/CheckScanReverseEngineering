package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class o68<T> implements e02<T>, b32 {
    public final f91.a b;
    public final o22 c;

    public o68(f91.a aVar, o22 o22Var) {
        this.b = aVar;
        this.c = o22Var;
    }

    @Override // defpackage.b32
    public final b32 getCallerFrame() {
        return this.b;
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return this.c;
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        this.b.resumeWith(obj);
    }
}
