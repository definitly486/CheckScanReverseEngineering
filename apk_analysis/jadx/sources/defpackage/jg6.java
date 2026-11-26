package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class jg6 {
    private static final /* synthetic */ jg6[] $VALUES;
    public static final jg6 HIGH;
    public static final jg6 IMMEDIATE;
    public static final jg6 LOW;
    public static final jg6 NORMAL;

    static {
        jg6 jg6Var = new jg6("IMMEDIATE", 0);
        IMMEDIATE = jg6Var;
        jg6 jg6Var2 = new jg6("HIGH", 1);
        HIGH = jg6Var2;
        jg6 jg6Var3 = new jg6("NORMAL", 2);
        NORMAL = jg6Var3;
        jg6 jg6Var4 = new jg6("LOW", 3);
        LOW = jg6Var4;
        $VALUES = new jg6[]{jg6Var, jg6Var2, jg6Var3, jg6Var4};
    }

    public jg6() {
        throw null;
    }

    public static jg6 valueOf(String str) {
        return (jg6) Enum.valueOf(jg6.class, str);
    }

    public static jg6[] values() {
        return (jg6[]) $VALUES.clone();
    }
}
