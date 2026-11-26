package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nm3 extends cm3 {
    public static final nm3 a = new nm3();

    @Override // yads.cm3
    public final void a(int i, Object obj) {
        ((r66) obj).a(Long.valueOf(i));
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        Object objB = ((r66) obj).b();
        objB.getClass();
        return Integer.valueOf((int) ((Long) objB).longValue());
    }
}
