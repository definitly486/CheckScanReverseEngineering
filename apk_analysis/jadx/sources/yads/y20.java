package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class y20 extends cm3 {
    public static final y20 a = new y20();

    @Override // yads.cm3
    public final void a(int i, Object obj) {
        ((o66) obj).a(new l20(i));
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        Object objB = ((o66) obj).b();
        objB.getClass();
        return Integer.valueOf(((l20) objB).a);
    }
}
