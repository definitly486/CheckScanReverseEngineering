package defpackage;

import androidx.webkit.Profile;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class d62 {
    private static final /* synthetic */ d62[] $VALUES;
    public static final d62 Deeplink;
    public static final d62 Default;
    public static final d62 RegisterToCreate;

    static {
        d62 d62Var = new d62(Profile.DEFAULT_PROFILE_NAME, 0);
        Default = d62Var;
        d62 d62Var2 = new d62("Deeplink", 1);
        Deeplink = d62Var2;
        d62 d62Var3 = new d62("RegisterToCreate", 2);
        RegisterToCreate = d62Var3;
        $VALUES = new d62[]{d62Var, d62Var2, d62Var3};
    }

    public d62() {
        throw null;
    }

    public static d62 valueOf(String str) {
        return (d62) Enum.valueOf(d62.class, str);
    }

    public static d62[] values() {
        return (d62[]) $VALUES.clone();
    }
}
