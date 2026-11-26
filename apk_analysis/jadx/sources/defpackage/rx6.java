package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class rx6 {
    private static final /* synthetic */ rx6[] $VALUES;
    public static final rx6 Bad;
    public static final rx6 Good;
    public static final rx6 Middle;
    public static final rx6 Perfect;
    public static final rx6 VeryBad;

    static {
        rx6 rx6Var = new rx6("Perfect", 0);
        Perfect = rx6Var;
        rx6 rx6Var2 = new rx6("Good", 1);
        Good = rx6Var2;
        rx6 rx6Var3 = new rx6("Middle", 2);
        Middle = rx6Var3;
        rx6 rx6Var4 = new rx6("Bad", 3);
        Bad = rx6Var4;
        rx6 rx6Var5 = new rx6("VeryBad", 4);
        VeryBad = rx6Var5;
        $VALUES = new rx6[]{rx6Var, rx6Var2, rx6Var3, rx6Var4, rx6Var5};
    }

    public rx6() {
        throw null;
    }

    public static rx6 valueOf(String str) {
        return (rx6) Enum.valueOf(rx6.class, str);
    }

    public static rx6[] values() {
        return (rx6[]) $VALUES.clone();
    }
}
