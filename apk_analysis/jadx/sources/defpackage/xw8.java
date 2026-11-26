package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class xw8 {
    private static final /* synthetic */ xw8[] $VALUES;
    public static final xw8 CUSTOM_MANAGERS;
    public static final xw8 FAKE;
    public static final xw8 MTLS;

    static {
        xw8 xw8Var = new xw8("FAKE", 0);
        FAKE = xw8Var;
        xw8 xw8Var2 = new xw8("MTLS", 1);
        MTLS = xw8Var2;
        xw8 xw8Var3 = new xw8("CUSTOM_MANAGERS", 2);
        CUSTOM_MANAGERS = xw8Var3;
        $VALUES = new xw8[]{xw8Var, xw8Var2, xw8Var3};
    }

    public xw8() {
        throw null;
    }

    public static xw8 valueOf(String str) {
        return (xw8) Enum.valueOf(xw8.class, str);
    }

    public static xw8[] values() {
        return (xw8[]) $VALUES.clone();
    }
}
