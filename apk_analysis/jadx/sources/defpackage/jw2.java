package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class jw2 {
    private static final /* synthetic */ jw2[] $VALUES;
    public static final jw2 AddEmail;
    public static final jw2 SignIn;

    static {
        jw2 jw2Var = new jw2("SignIn", 0);
        SignIn = jw2Var;
        jw2 jw2Var2 = new jw2("AddEmail", 1);
        AddEmail = jw2Var2;
        $VALUES = new jw2[]{jw2Var, jw2Var2};
    }

    public jw2() {
        throw null;
    }

    public static jw2 valueOf(String str) {
        return (jw2) Enum.valueOf(jw2.class, str);
    }

    public static jw2[] values() {
        return (jw2[]) $VALUES.clone();
    }
}
