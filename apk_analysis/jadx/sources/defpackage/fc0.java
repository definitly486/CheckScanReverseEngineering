package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class fc0 {
    private static final /* synthetic */ fc0[] $VALUES;
    public static final fc0 ACTIVITY_BONUS;
    public static final fc0 BOTTOM_SHEET;
    public static final fc0 CHECK;
    public static final fc0 HEADER;
    public static final fc0 PROMO;
    public static final fc0 SPLASH;

    static {
        fc0 fc0Var = new fc0("CHECK", 0);
        CHECK = fc0Var;
        fc0 fc0Var2 = new fc0("BOTTOM_SHEET", 1);
        BOTTOM_SHEET = fc0Var2;
        fc0 fc0Var3 = new fc0("HEADER", 2);
        HEADER = fc0Var3;
        fc0 fc0Var4 = new fc0("PROMO", 3);
        PROMO = fc0Var4;
        fc0 fc0Var5 = new fc0("SPLASH", 4);
        SPLASH = fc0Var5;
        fc0 fc0Var6 = new fc0("ACTIVITY_BONUS", 5);
        ACTIVITY_BONUS = fc0Var6;
        $VALUES = new fc0[]{fc0Var, fc0Var2, fc0Var3, fc0Var4, fc0Var5, fc0Var6};
    }

    public fc0() {
        throw null;
    }

    public static fc0 valueOf(String str) {
        return (fc0) Enum.valueOf(fc0.class, str);
    }

    public static fc0[] values() {
        return (fc0[]) $VALUES.clone();
    }
}
