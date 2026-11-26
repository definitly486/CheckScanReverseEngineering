package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class s33 {
    private static final /* synthetic */ s33[] $VALUES;
    public static final s33 CONTROL;
    public static final s33 TEST;

    static {
        s33 s33Var = new s33("CONTROL", 0);
        CONTROL = s33Var;
        s33 s33Var2 = new s33("TEST", 1);
        TEST = s33Var2;
        $VALUES = new s33[]{s33Var, s33Var2};
    }

    public s33() {
        throw null;
    }

    public static s33 valueOf(String str) {
        return (s33) Enum.valueOf(s33.class, str);
    }

    public static s33[] values() {
        return (s33[]) $VALUES.clone();
    }
}
