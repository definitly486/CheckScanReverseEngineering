package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class fi7 {
    private static final /* synthetic */ fi7[] $VALUES;
    public static final fi7 AlreadyScanned;
    public static final fi7 FnsNotResponding;
    public static final fi7 INVALID;
    public static final fi7 NoShopReceived;
    public static final fi7 NotCorrectFormat;

    static {
        fi7 fi7Var = new fi7("AlreadyScanned", 0);
        AlreadyScanned = fi7Var;
        fi7 fi7Var2 = new fi7("INVALID", 1);
        INVALID = fi7Var2;
        fi7 fi7Var3 = new fi7("NotCorrectFormat", 2);
        NotCorrectFormat = fi7Var3;
        fi7 fi7Var4 = new fi7("FnsNotResponding", 3);
        FnsNotResponding = fi7Var4;
        fi7 fi7Var5 = new fi7("NoShopReceived", 4);
        NoShopReceived = fi7Var5;
        $VALUES = new fi7[]{fi7Var, fi7Var2, fi7Var3, fi7Var4, fi7Var5};
    }

    public fi7() {
        throw null;
    }

    public static fi7 valueOf(String str) {
        return (fi7) Enum.valueOf(fi7.class, str);
    }

    public static fi7[] values() {
        return (fi7[]) $VALUES.clone();
    }
}
