package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class gc0 {
    private static final /* synthetic */ gc0[] $VALUES;
    public static final gc0 ACTIVITY_BONUS;
    public static final gc0 BOTTOM_SHEET;
    public static final gc0 CHECK;
    public static final gc0 HEADER;
    public static final gc0 PROMO;
    public static final gc0 SPLASH;

    static {
        gc0 gc0Var = new gc0("CHECK", 0);
        CHECK = gc0Var;
        gc0 gc0Var2 = new gc0("BOTTOM_SHEET", 1);
        BOTTOM_SHEET = gc0Var2;
        gc0 gc0Var3 = new gc0("HEADER", 2);
        HEADER = gc0Var3;
        gc0 gc0Var4 = new gc0("PROMO", 3);
        PROMO = gc0Var4;
        gc0 gc0Var5 = new gc0("SPLASH", 4);
        SPLASH = gc0Var5;
        gc0 gc0Var6 = new gc0("ACTIVITY_BONUS", 5);
        ACTIVITY_BONUS = gc0Var6;
        $VALUES = new gc0[]{gc0Var, gc0Var2, gc0Var3, gc0Var4, gc0Var5, gc0Var6};
    }

    public gc0() {
        throw null;
    }

    public static gc0 valueOf(String str) {
        return (gc0) Enum.valueOf(gc0.class, str);
    }

    public static gc0[] values() {
        return (gc0[]) $VALUES.clone();
    }
}
