package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class wc9 {
    private static final /* synthetic */ wc9[] $VALUES;
    public static final wc9 NewerAvailable;
    public static final wc9 Supported;
    public static final wc9 Unsupported;

    static {
        wc9 wc9Var = new wc9("Supported", 0);
        Supported = wc9Var;
        wc9 wc9Var2 = new wc9("NewerAvailable", 1);
        NewerAvailable = wc9Var2;
        wc9 wc9Var3 = new wc9("Unsupported", 2);
        Unsupported = wc9Var3;
        $VALUES = new wc9[]{wc9Var, wc9Var2, wc9Var3};
    }

    public wc9() {
        throw null;
    }

    public static wc9 valueOf(String str) {
        return (wc9) Enum.valueOf(wc9.class, str);
    }

    public static wc9[] values() {
        return (wc9[]) $VALUES.clone();
    }
}
