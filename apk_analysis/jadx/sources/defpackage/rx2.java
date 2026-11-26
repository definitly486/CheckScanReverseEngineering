package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class rx2 {
    private static final /* synthetic */ rx2[] $VALUES;
    public static final rx2 NONE;
    public static final rx2 SOURCE;
    public static final rx2 TRANSFORMED;

    static {
        rx2 rx2Var = new rx2("SOURCE", 0);
        SOURCE = rx2Var;
        rx2 rx2Var2 = new rx2("TRANSFORMED", 1);
        TRANSFORMED = rx2Var2;
        rx2 rx2Var3 = new rx2("NONE", 2);
        NONE = rx2Var3;
        $VALUES = new rx2[]{rx2Var, rx2Var2, rx2Var3};
    }

    public rx2() {
        throw null;
    }

    public static rx2 valueOf(String str) {
        return (rx2) Enum.valueOf(rx2.class, str);
    }

    public static rx2[] values() {
        return (rx2[]) $VALUES.clone();
    }
}
