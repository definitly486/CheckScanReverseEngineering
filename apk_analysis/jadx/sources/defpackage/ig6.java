package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ig6 {
    private static final /* synthetic */ ig6[] $VALUES;
    public static final ig6 DEFAULT;
    public static final ig6 HIGHEST;
    public static final ig6 VERY_LOW;

    static {
        ig6 ig6Var = new ig6("DEFAULT", 0);
        DEFAULT = ig6Var;
        ig6 ig6Var2 = new ig6("VERY_LOW", 1);
        VERY_LOW = ig6Var2;
        ig6 ig6Var3 = new ig6("HIGHEST", 2);
        HIGHEST = ig6Var3;
        $VALUES = new ig6[]{ig6Var, ig6Var2, ig6Var3};
    }

    public ig6() {
        throw null;
    }

    public static ig6 valueOf(String str) {
        return (ig6) Enum.valueOf(ig6.class, str);
    }

    public static ig6[] values() {
        return (ig6[]) $VALUES.clone();
    }
}
