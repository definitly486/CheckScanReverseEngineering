package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class hd2 {
    private static final /* synthetic */ hd2[] $VALUES;
    public static final hd2 EFFECT_EXPLODE;
    public static final hd2 EFFECT_SPIRAL_EXPLODE;
    public static final hd2 EFFECT_SPIRAL_IN;
    public static final hd2 EFFECT_SPIRAL_OUT;
    public static final hd2 EFFECT_SPIRAL_OUT_FILL;

    static {
        hd2 hd2Var = new hd2("EFFECT_SPIRAL_OUT_FILL", 0);
        EFFECT_SPIRAL_OUT_FILL = hd2Var;
        hd2 hd2Var2 = new hd2("EFFECT_SPIRAL_OUT", 1);
        EFFECT_SPIRAL_OUT = hd2Var2;
        hd2 hd2Var3 = new hd2("EFFECT_SPIRAL_IN", 2);
        EFFECT_SPIRAL_IN = hd2Var3;
        hd2 hd2Var4 = new hd2("EFFECT_EXPLODE", 3);
        EFFECT_EXPLODE = hd2Var4;
        hd2 hd2Var5 = new hd2("EFFECT_SPIRAL_EXPLODE", 4);
        EFFECT_SPIRAL_EXPLODE = hd2Var5;
        $VALUES = new hd2[]{hd2Var, hd2Var2, hd2Var3, hd2Var4, hd2Var5};
    }

    public hd2() {
        throw null;
    }

    public static hd2 valueOf(String str) {
        return (hd2) Enum.valueOf(hd2.class, str);
    }

    public static hd2[] values() {
        return (hd2[]) $VALUES.clone();
    }
}
