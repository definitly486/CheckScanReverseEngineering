package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class w48 {
    private static final /* synthetic */ w48[] $VALUES;
    public static final w48 VK;
    public static final w48 YANDEX;

    static {
        w48 w48Var = new w48("YANDEX", 0);
        YANDEX = w48Var;
        w48 w48Var2 = new w48("VK", 1);
        VK = w48Var2;
        $VALUES = new w48[]{w48Var, w48Var2};
    }

    public w48() {
        throw null;
    }

    public static w48 valueOf(String str) {
        return (w48) Enum.valueOf(w48.class, str);
    }

    public static w48[] values() {
        return (w48[]) $VALUES.clone();
    }
}
