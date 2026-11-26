package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class c28 {
    private static final /* synthetic */ c28[] $VALUES;
    public static final c28 Left;
    public static final c28 Right;

    static {
        c28 c28Var = new c28("Left", 0);
        Left = c28Var;
        c28 c28Var2 = new c28("Right", 1);
        Right = c28Var2;
        $VALUES = new c28[]{c28Var, c28Var2};
    }

    public c28() {
        throw null;
    }

    public static c28 valueOf(String str) {
        return (c28) Enum.valueOf(c28.class, str);
    }

    public static c28[] values() {
        return (c28[]) $VALUES.clone();
    }
}
