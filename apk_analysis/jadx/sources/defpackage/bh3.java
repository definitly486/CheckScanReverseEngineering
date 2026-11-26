package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class bh3 implements qx1<bc8> {
    private static final /* synthetic */ bh3[] $VALUES;
    public static final bh3 INSTANCE;

    static {
        bh3 bh3Var = new bh3("INSTANCE", 0);
        INSTANCE = bh3Var;
        $VALUES = new bh3[]{bh3Var};
    }

    public bh3() {
        throw null;
    }

    public static bh3 valueOf(String str) {
        return (bh3) Enum.valueOf(bh3.class, str);
    }

    public static bh3[] values() {
        return (bh3[]) $VALUES.clone();
    }

    @Override // defpackage.qx1
    public final void accept(bc8 bc8Var) {
        bc8Var.request(Long.MAX_VALUE);
    }
}
