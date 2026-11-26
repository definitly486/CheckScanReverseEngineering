package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ox {
    private static final /* synthetic */ ox[] $VALUES;
    public static final ox Login;
    public static final ox SignUp;

    static {
        ox oxVar = new ox("Login", 0);
        Login = oxVar;
        ox oxVar2 = new ox("SignUp", 1);
        SignUp = oxVar2;
        $VALUES = new ox[]{oxVar, oxVar2};
    }

    public ox() {
        throw null;
    }

    public static ox valueOf(String str) {
        return (ox) Enum.valueOf(ox.class, str);
    }

    public static ox[] values() {
        return (ox[]) $VALUES.clone();
    }
}
