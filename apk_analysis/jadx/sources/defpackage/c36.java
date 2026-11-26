package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c36<K, V> extends qf4<K, V, b36<? extends K, ? extends V>> {
    public final op7 c;

    public c36(df4<K> df4Var, df4<V> df4Var2) {
        super(df4Var, df4Var2);
        this.c = rp7.c("kotlin.Pair", new mp7[0], new q12(1, df4Var, df4Var2));
    }

    @Override // defpackage.qf4
    public final Object a(Object obj) {
        b36 b36Var = (b36) obj;
        b36Var.getClass();
        return b36Var.b;
    }

    @Override // defpackage.qf4
    public final Object b(Object obj) {
        b36 b36Var = (b36) obj;
        b36Var.getClass();
        return b36Var.c;
    }

    @Override // defpackage.qf4
    public final Object c(Object obj, Object obj2) {
        return new b36(obj, obj2);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.c;
    }
}
