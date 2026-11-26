package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class bs0 {
    private static final /* synthetic */ bs0[] $VALUES;
    public static final bs0 BUTTON;
    public static final a Companion;
    public static final bs0 PROMOCODES;
    public static final bs0 SHOP;
    public static final bs0 TITLE;

    public static final class a {
    }

    static {
        bs0 bs0Var = new bs0("TITLE", 0);
        TITLE = bs0Var;
        bs0 bs0Var2 = new bs0("PROMOCODES", 1);
        PROMOCODES = bs0Var2;
        bs0 bs0Var3 = new bs0("BUTTON", 2);
        BUTTON = bs0Var3;
        bs0 bs0Var4 = new bs0("SHOP", 3);
        SHOP = bs0Var4;
        $VALUES = new bs0[]{bs0Var, bs0Var2, bs0Var3, bs0Var4};
        Companion = new a();
    }

    public bs0() {
        throw null;
    }

    public static bs0 valueOf(String str) {
        return (bs0) Enum.valueOf(bs0.class, str);
    }

    public static bs0[] values() {
        return (bs0[]) $VALUES.clone();
    }
}
