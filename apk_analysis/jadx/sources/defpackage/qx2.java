package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class qx2 implements mw6<Object> {
    private static final /* synthetic */ qx2[] $VALUES;
    public static final qx2 INSTANCE;

    static {
        qx2 qx2Var = new qx2("INSTANCE", 0);
        INSTANCE = qx2Var;
        $VALUES = new qx2[]{qx2Var};
    }

    public qx2() {
        throw null;
    }

    public static qx2 valueOf(String str) {
        return (qx2) Enum.valueOf(qx2.class, str);
    }

    public static qx2[] values() {
        return (qx2[]) $VALUES.clone();
    }

    @Override // defpackage.bc8
    public final void cancel() {
    }

    @Override // defpackage.iz7
    public final void clear() {
    }

    @Override // defpackage.dw6
    public final int d(int i) {
        return 2;
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return true;
    }

    @Override // defpackage.iz7
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.iz7
    public final Object poll() {
        return null;
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        hc8.e(j);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "EmptySubscription";
    }
}
