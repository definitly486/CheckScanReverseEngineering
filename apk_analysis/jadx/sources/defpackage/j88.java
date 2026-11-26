package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class j88 {
    private static final /* synthetic */ j88[] $VALUES;
    public static final j88 FAIL;
    public static final j88 FAIL_MCO;
    public static final j88 SUCCESS;

    static {
        j88 j88Var = new j88("SUCCESS", 0);
        SUCCESS = j88Var;
        j88 j88Var2 = new j88("FAIL", 1);
        FAIL = j88Var2;
        j88 j88Var3 = new j88("FAIL_MCO", 2);
        FAIL_MCO = j88Var3;
        $VALUES = new j88[]{j88Var, j88Var2, j88Var3};
    }

    public j88() {
        throw null;
    }

    public static j88 valueOf(String str) {
        return (j88) Enum.valueOf(j88.class, str);
    }

    public static j88[] values() {
        return (j88[]) $VALUES.clone();
    }
}
