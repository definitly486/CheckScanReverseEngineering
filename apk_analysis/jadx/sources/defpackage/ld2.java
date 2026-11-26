package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class ld2 {
    private static final /* synthetic */ ld2[] $VALUES;
    public static final ld2 DEFAULT;
    public static final ld2 PREFER_ARGB_8888;
    public static final ld2 PREFER_RGB_565;

    static {
        ld2 ld2Var = new ld2("PREFER_ARGB_8888", 0);
        PREFER_ARGB_8888 = ld2Var;
        ld2 ld2Var2 = new ld2("PREFER_RGB_565", 1);
        PREFER_RGB_565 = ld2Var2;
        $VALUES = new ld2[]{ld2Var, ld2Var2};
        DEFAULT = ld2Var;
    }

    public ld2() {
        throw null;
    }

    public static ld2 valueOf(String str) {
        return (ld2) Enum.valueOf(ld2.class, str);
    }

    public static ld2[] values() {
        return (ld2[]) $VALUES.clone();
    }
}
