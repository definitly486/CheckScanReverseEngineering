package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class hx2 implements yv6<Object> {
    private static final /* synthetic */ hx2[] $VALUES;
    public static final hx2 INSTANCE;
    public static final hx2 NEVER;

    static {
        hx2 hx2Var = new hx2("INSTANCE", 0);
        INSTANCE = hx2Var;
        hx2 hx2Var2 = new hx2("NEVER", 1);
        NEVER = hx2Var2;
        $VALUES = new hx2[]{hx2Var, hx2Var2};
    }

    public hx2() {
        throw null;
    }

    public static hx2 valueOf(String str) {
        return (hx2) Enum.valueOf(hx2.class, str);
    }

    public static hx2[] values() {
        return (hx2[]) $VALUES.clone();
    }

    @Override // defpackage.iz7
    public final void clear() {
    }

    @Override // defpackage.dw6
    public final int d(int i) {
        return 2;
    }

    @Override // defpackage.cp2
    public final void dispose() {
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return this == INSTANCE;
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
}
