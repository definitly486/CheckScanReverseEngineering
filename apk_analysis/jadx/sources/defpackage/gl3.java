package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class gl3 {
    private static final /* synthetic */ gl3[] $VALUES;
    public static final gl3 ISSUE_CARD;
    public static final gl3 PHONE_CHANGE;

    static {
        gl3 gl3Var = new gl3("PHONE_CHANGE", 0);
        PHONE_CHANGE = gl3Var;
        gl3 gl3Var2 = new gl3("ISSUE_CARD", 1);
        ISSUE_CARD = gl3Var2;
        $VALUES = new gl3[]{gl3Var, gl3Var2};
    }

    public gl3() {
        throw null;
    }

    public static gl3 valueOf(String str) {
        return (gl3) Enum.valueOf(gl3.class, str);
    }

    public static gl3[] values() {
        return (gl3[]) $VALUES.clone();
    }
}
