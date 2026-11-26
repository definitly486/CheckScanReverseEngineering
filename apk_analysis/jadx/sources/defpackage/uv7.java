package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class uv7 {
    private static final /* synthetic */ uv7[] $VALUES;
    public static final uv7 Category;
    public static final uv7 Selection;
    public static final uv7 TopSelection;

    static {
        uv7 uv7Var = new uv7("Selection", 0);
        Selection = uv7Var;
        uv7 uv7Var2 = new uv7("Category", 1);
        Category = uv7Var2;
        uv7 uv7Var3 = new uv7("TopSelection", 2);
        TopSelection = uv7Var3;
        $VALUES = new uv7[]{uv7Var, uv7Var2, uv7Var3};
    }

    public uv7() {
        throw null;
    }

    public static uv7 valueOf(String str) {
        return (uv7) Enum.valueOf(uv7.class, str);
    }

    public static uv7[] values() {
        return (uv7[]) $VALUES.clone();
    }
}
