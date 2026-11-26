package defpackage;

import androidx.webkit.Profile;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class fl3 {
    private static final /* synthetic */ fl3[] $VALUES;
    public static final fl3 Default;
    public static final fl3 FailClarification;
    public static final fl3 Location;

    static {
        fl3 fl3Var = new fl3(Profile.DEFAULT_PROFILE_NAME, 0);
        Default = fl3Var;
        fl3 fl3Var2 = new fl3("Location", 1);
        Location = fl3Var2;
        fl3 fl3Var3 = new fl3("FailClarification", 2);
        FailClarification = fl3Var3;
        $VALUES = new fl3[]{fl3Var, fl3Var2, fl3Var3};
    }

    public fl3() {
        throw null;
    }

    public static fl3 valueOf(String str) {
        return (fl3) Enum.valueOf(fl3.class, str);
    }

    public static fl3[] values() {
        return (fl3[]) $VALUES.clone();
    }
}
