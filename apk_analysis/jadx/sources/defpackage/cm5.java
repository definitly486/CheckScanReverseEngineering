package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public final class cm5 {
    private static final /* synthetic */ cm5[] $VALUES;
    public static final cm5 PLAINTEXT;
    public static final cm5 TLS;

    static {
        cm5 cm5Var = new cm5("TLS", 0);
        TLS = cm5Var;
        cm5 cm5Var2 = new cm5("PLAINTEXT", 1);
        PLAINTEXT = cm5Var2;
        $VALUES = new cm5[]{cm5Var, cm5Var2};
    }

    public cm5() {
        throw null;
    }

    public static cm5 valueOf(String str) {
        return (cm5) Enum.valueOf(cm5.class, str);
    }

    public static cm5[] values() {
        return (cm5[]) $VALUES.clone();
    }
}
