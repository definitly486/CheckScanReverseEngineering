package defpackage;

import androidx.webkit.Profile;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class vg7 {
    private static final /* synthetic */ vg7[] $VALUES;
    public static final vg7 Default;
    public static final vg7 FromCatalog;

    static {
        vg7 vg7Var = new vg7(Profile.DEFAULT_PROFILE_NAME, 0);
        Default = vg7Var;
        vg7 vg7Var2 = new vg7("FromCatalog", 1);
        FromCatalog = vg7Var2;
        $VALUES = new vg7[]{vg7Var, vg7Var2};
    }

    public vg7() {
        throw null;
    }

    public static vg7 valueOf(String str) {
        return (vg7) Enum.valueOf(vg7.class, str);
    }

    public static vg7[] values() {
        return (vg7[]) $VALUES.clone();
    }
}
