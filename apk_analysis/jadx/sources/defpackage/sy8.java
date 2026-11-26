package defpackage;

import androidx.webkit.UserAgentMetadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class sy8 {
    private static final /* synthetic */ sy8[] $VALUES;
    public static final sy8 App;
    public static final sy8 Desktop;
    public static final sy8 Mobile;

    static {
        sy8 sy8Var = new sy8(UserAgentMetadata.FORM_FACTOR_DESKTOP, 0);
        Desktop = sy8Var;
        sy8 sy8Var2 = new sy8(UserAgentMetadata.FORM_FACTOR_MOBILE, 1);
        Mobile = sy8Var2;
        sy8 sy8Var3 = new sy8("App", 2);
        App = sy8Var3;
        $VALUES = new sy8[]{sy8Var, sy8Var2, sy8Var3};
    }

    public sy8() {
        throw null;
    }

    public static sy8 valueOf(String str) {
        return (sy8) Enum.valueOf(sy8.class, str);
    }

    public static sy8[] values() {
        return (sy8[]) $VALUES.clone();
    }
}
