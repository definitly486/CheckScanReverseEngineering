package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class fl7 {
    private static final /* synthetic */ fl7[] $VALUES;
    public static final fl7 INTEGRITY;
    public static final fl7 NONE;
    public static final fl7 PRIVACY_AND_INTEGRITY;

    static {
        fl7 fl7Var = new fl7("NONE", 0);
        NONE = fl7Var;
        fl7 fl7Var2 = new fl7("INTEGRITY", 1);
        INTEGRITY = fl7Var2;
        fl7 fl7Var3 = new fl7("PRIVACY_AND_INTEGRITY", 2);
        PRIVACY_AND_INTEGRITY = fl7Var3;
        $VALUES = new fl7[]{fl7Var, fl7Var2, fl7Var3};
    }

    public fl7() {
        throw null;
    }

    public static fl7 valueOf(String str) {
        return (fl7) Enum.valueOf(fl7.class, str);
    }

    public static fl7[] values() {
        return (fl7[]) $VALUES.clone();
    }
}
