package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class bh4 {
    private static final /* synthetic */ bh4[] $VALUES;
    public static final bh4 ADD;
    public static final bh4 COLOR;
    public static final bh4 COLOR_BURN;
    public static final bh4 COLOR_DODGE;
    public static final bh4 DARKEN;
    public static final bh4 DIFFERENCE;
    public static final bh4 EXCLUSION;
    public static final bh4 HARD_LIGHT;
    public static final bh4 HARD_MIX;
    public static final bh4 HUE;
    public static final bh4 LIGHTEN;
    public static final bh4 LUMINOSITY;
    public static final bh4 MULTIPLY;
    public static final bh4 NORMAL;
    public static final bh4 OVERLAY;
    public static final bh4 SATURATION;
    public static final bh4 SCREEN;
    public static final bh4 SOFT_LIGHT;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[bh4.values().length];
            a = iArr;
            try {
                iArr[bh4.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[bh4.MULTIPLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[bh4.SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[bh4.OVERLAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[bh4.DARKEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[bh4.LIGHTEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[bh4.ADD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[bh4.COLOR_DODGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[bh4.COLOR_BURN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[bh4.HARD_LIGHT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[bh4.SOFT_LIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[bh4.DIFFERENCE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[bh4.EXCLUSION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[bh4.HUE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[bh4.SATURATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[bh4.COLOR.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[bh4.LUMINOSITY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[bh4.HARD_MIX.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    static {
        bh4 bh4Var = new bh4("NORMAL", 0);
        NORMAL = bh4Var;
        bh4 bh4Var2 = new bh4("MULTIPLY", 1);
        MULTIPLY = bh4Var2;
        bh4 bh4Var3 = new bh4("SCREEN", 2);
        SCREEN = bh4Var3;
        bh4 bh4Var4 = new bh4("OVERLAY", 3);
        OVERLAY = bh4Var4;
        bh4 bh4Var5 = new bh4("DARKEN", 4);
        DARKEN = bh4Var5;
        bh4 bh4Var6 = new bh4("LIGHTEN", 5);
        LIGHTEN = bh4Var6;
        bh4 bh4Var7 = new bh4("COLOR_DODGE", 6);
        COLOR_DODGE = bh4Var7;
        bh4 bh4Var8 = new bh4("COLOR_BURN", 7);
        COLOR_BURN = bh4Var8;
        bh4 bh4Var9 = new bh4("HARD_LIGHT", 8);
        HARD_LIGHT = bh4Var9;
        bh4 bh4Var10 = new bh4("SOFT_LIGHT", 9);
        SOFT_LIGHT = bh4Var10;
        bh4 bh4Var11 = new bh4("DIFFERENCE", 10);
        DIFFERENCE = bh4Var11;
        bh4 bh4Var12 = new bh4("EXCLUSION", 11);
        EXCLUSION = bh4Var12;
        bh4 bh4Var13 = new bh4("HUE", 12);
        HUE = bh4Var13;
        bh4 bh4Var14 = new bh4("SATURATION", 13);
        SATURATION = bh4Var14;
        bh4 bh4Var15 = new bh4("COLOR", 14);
        COLOR = bh4Var15;
        bh4 bh4Var16 = new bh4("LUMINOSITY", 15);
        LUMINOSITY = bh4Var16;
        bh4 bh4Var17 = new bh4("ADD", 16);
        ADD = bh4Var17;
        bh4 bh4Var18 = new bh4("HARD_MIX", 17);
        HARD_MIX = bh4Var18;
        $VALUES = new bh4[]{bh4Var, bh4Var2, bh4Var3, bh4Var4, bh4Var5, bh4Var6, bh4Var7, bh4Var8, bh4Var9, bh4Var10, bh4Var11, bh4Var12, bh4Var13, bh4Var14, bh4Var15, bh4Var16, bh4Var17, bh4Var18};
    }

    public bh4() {
        throw null;
    }

    public static bh4 valueOf(String str) {
        return (bh4) Enum.valueOf(bh4.class, str);
    }

    public static bh4[] values() {
        return (bh4[]) $VALUES.clone();
    }
}
