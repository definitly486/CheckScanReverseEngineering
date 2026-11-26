package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class pd0 {
    public static final pd0 ENTITY_EXTRACTION;
    public static final pd0 IMAGE_CAPTIONING;
    public static final pd0 TOXICITY_DETECTION;
    public static final pd0 TRANSLATE;
    public static final pd0 zza;
    public static final pd0 zzb;
    private static final /* synthetic */ pd0[] zzc;

    static {
        pd0 pd0Var = new pd0("FACE_DETECTION", 0);
        zza = pd0Var;
        pd0 pd0Var2 = new pd0("SMART_REPLY", 1);
        zzb = pd0Var2;
        pd0 pd0Var3 = new pd0("TRANSLATE", 2);
        TRANSLATE = pd0Var3;
        pd0 pd0Var4 = new pd0("ENTITY_EXTRACTION", 3);
        ENTITY_EXTRACTION = pd0Var4;
        pd0 pd0Var5 = new pd0("TOXICITY_DETECTION", 4);
        TOXICITY_DETECTION = pd0Var5;
        pd0 pd0Var6 = new pd0("IMAGE_CAPTIONING", 5);
        IMAGE_CAPTIONING = pd0Var6;
        zzc = new pd0[]{pd0Var, pd0Var2, pd0Var3, pd0Var4, pd0Var5, pd0Var6};
    }

    public static pd0[] values() {
        return (pd0[]) zzc.clone();
    }
}
