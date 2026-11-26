package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class xu4 {
    private static final /* synthetic */ xu4[] $VALUES;
    public static final xu4 Error;
    public static final xu4 IncorrectLoginOrPassword;
    public static final xu4 Locked;
    public static final xu4 LoggedIn;

    static {
        xu4 xu4Var = new xu4("LoggedIn", 0);
        LoggedIn = xu4Var;
        xu4 xu4Var2 = new xu4("IncorrectLoginOrPassword", 1);
        IncorrectLoginOrPassword = xu4Var2;
        xu4 xu4Var3 = new xu4("Error", 2);
        Error = xu4Var3;
        xu4 xu4Var4 = new xu4("Locked", 3);
        Locked = xu4Var4;
        $VALUES = new xu4[]{xu4Var, xu4Var2, xu4Var3, xu4Var4};
    }

    public xu4() {
        throw null;
    }

    public static xu4 valueOf(String str) {
        return (xu4) Enum.valueOf(xu4.class, str);
    }

    public static xu4[] values() {
        return (xu4[]) $VALUES.clone();
    }
}
