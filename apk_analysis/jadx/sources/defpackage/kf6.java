package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class kf6 {
    private static final /* synthetic */ kf6[] $VALUES;
    public static final kf6 DISPLAY_P3;
    public static final kf6 SRGB;

    static {
        kf6 kf6Var = new kf6("SRGB", 0);
        SRGB = kf6Var;
        kf6 kf6Var2 = new kf6("DISPLAY_P3", 1);
        DISPLAY_P3 = kf6Var2;
        $VALUES = new kf6[]{kf6Var, kf6Var2};
    }

    public kf6() {
        throw null;
    }

    public static kf6 valueOf(String str) {
        return (kf6) Enum.valueOf(kf6.class, str);
    }

    public static kf6[] values() {
        return (kf6[]) $VALUES.clone();
    }
}
