package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class hf7 {
    private static final /* synthetic */ hf7[] $VALUES;
    public static final hf7 CallScreen;
    public static final hf7 SmsScreen;

    static {
        hf7 hf7Var = new hf7("SmsScreen", 0);
        SmsScreen = hf7Var;
        hf7 hf7Var2 = new hf7("CallScreen", 1);
        CallScreen = hf7Var2;
        $VALUES = new hf7[]{hf7Var, hf7Var2};
    }

    public hf7() {
        throw null;
    }

    public static hf7 valueOf(String str) {
        return (hf7) Enum.valueOf(hf7.class, str);
    }

    public static hf7[] values() {
        return (hf7[]) $VALUES.clone();
    }
}
