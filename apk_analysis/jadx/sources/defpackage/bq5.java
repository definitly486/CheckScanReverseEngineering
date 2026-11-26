package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bq5<T> implements df4<T> {
    public final df4<T> a;
    public final np7 b;

    public bq5(df4<T> df4Var) {
        df4Var.getClass();
        this.a = df4Var;
        this.b = new np7(df4Var.getDescriptor());
    }

    @Override // defpackage.xl2
    public final T deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return ud2Var.decodeNotNullMark() ? (T) ud2Var.decodeSerializableValue(this.a) : (T) ud2Var.decodeNull();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && bq5.class == obj.getClass() && aa4.e(this.a, ((bq5) obj).a);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.b;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, T t) {
        if (t == null) {
            ux2Var.encodeNull();
        } else {
            ux2Var.encodeNotNullMark();
            ux2Var.encodeSerializableValue(this.a, t);
        }
    }
}
