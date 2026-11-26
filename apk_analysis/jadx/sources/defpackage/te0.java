package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class te0<T> implements fo5<T> {
    public final x83<T> a;

    /* JADX WARN: Multi-variable type inference failed */
    public te0(x83<? super T> x83Var) {
        this.a = x83Var;
    }

    @Override // defpackage.ti3
    public final vi3<T> a() {
        return this.a.a();
    }

    @Override // defpackage.ti3
    public final a46<T> b() {
        return this.a.b();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof te0) {
            return this.a.equals(((te0) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "BasicFormatStructure(" + this.a + ')';
    }
}
