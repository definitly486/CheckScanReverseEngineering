package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class ck0 {
    private static final /* synthetic */ ck0[] $VALUES;
    public static final ck0 Description;
    public static final ck0 OnlineShopInfo;
    public static final ck0 OnlineShopSteps;
    public static final ck0 Promocodes;

    static {
        ck0 ck0Var = new ck0("OnlineShopInfo", 0);
        OnlineShopInfo = ck0Var;
        ck0 ck0Var2 = new ck0("OnlineShopSteps", 1);
        OnlineShopSteps = ck0Var2;
        ck0 ck0Var3 = new ck0("Description", 2);
        Description = ck0Var3;
        ck0 ck0Var4 = new ck0("Promocodes", 3);
        Promocodes = ck0Var4;
        $VALUES = new ck0[]{ck0Var, ck0Var2, ck0Var3, ck0Var4};
    }

    public ck0() {
        throw null;
    }

    public static ck0 valueOf(String str) {
        return (ck0) Enum.valueOf(ck0.class, str);
    }

    public static ck0[] values() {
        return (ck0[]) $VALUES.clone();
    }
}
