package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class sc5 {
    public static final sc5 BASE;
    public static final sc5 CUSTOM;
    public static final sc5 DIGITAL_INK;
    public static final sc5 DIGITAL_INK_SEGMENTATION;
    public static final sc5 ENTITY_EXTRACTION;
    public static final sc5 IMAGE_CAPTIONING;
    public static final sc5 TOXICITY_DETECTION;
    public static final sc5 TRANSLATE;
    public static final sc5 UNKNOWN;
    private static final /* synthetic */ sc5[] zza;

    static {
        sc5 sc5Var = new sc5("UNKNOWN", 0);
        UNKNOWN = sc5Var;
        sc5 sc5Var2 = new sc5("BASE", 1);
        BASE = sc5Var2;
        sc5 sc5Var3 = new sc5("TRANSLATE", 2);
        TRANSLATE = sc5Var3;
        sc5 sc5Var4 = new sc5("ENTITY_EXTRACTION", 3);
        ENTITY_EXTRACTION = sc5Var4;
        sc5 sc5Var5 = new sc5("CUSTOM", 4);
        CUSTOM = sc5Var5;
        sc5 sc5Var6 = new sc5("DIGITAL_INK", 5);
        DIGITAL_INK = sc5Var6;
        sc5 sc5Var7 = new sc5("DIGITAL_INK_SEGMENTATION", 6);
        DIGITAL_INK_SEGMENTATION = sc5Var7;
        sc5 sc5Var8 = new sc5("TOXICITY_DETECTION", 7);
        TOXICITY_DETECTION = sc5Var8;
        sc5 sc5Var9 = new sc5("IMAGE_CAPTIONING", 8);
        IMAGE_CAPTIONING = sc5Var9;
        zza = new sc5[]{sc5Var, sc5Var2, sc5Var3, sc5Var4, sc5Var5, sc5Var6, sc5Var7, sc5Var8, sc5Var9};
    }

    public static sc5[] values() {
        return (sc5[]) zza.clone();
    }
}
