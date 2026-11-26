package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class re6 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ re6[] $VALUES;
    public static final re6 EXACT;
    public static final re6 INEXACT;

    static {
        re6 re6Var = new re6("EXACT", 0);
        EXACT = re6Var;
        re6 re6Var2 = new re6("INEXACT", 1);
        INEXACT = re6Var2;
        re6[] re6VarArr = {re6Var, re6Var2};
        $VALUES = re6VarArr;
        $ENTRIES = new i03(re6VarArr);
    }

    public re6() {
        throw null;
    }

    public static re6 valueOf(String str) {
        return (re6) Enum.valueOf(re6.class, str);
    }

    public static re6[] values() {
        return (re6[]) $VALUES.clone();
    }
}
