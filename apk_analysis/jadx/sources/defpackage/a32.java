package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class a32 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ a32[] $VALUES;
    public static final a32 COROUTINE_SUSPENDED;
    public static final a32 RESUMED;
    public static final a32 UNDECIDED;

    static {
        a32 a32Var = new a32("COROUTINE_SUSPENDED", 0);
        COROUTINE_SUSPENDED = a32Var;
        a32 a32Var2 = new a32("UNDECIDED", 1);
        UNDECIDED = a32Var2;
        a32 a32Var3 = new a32("RESUMED", 2);
        RESUMED = a32Var3;
        a32[] a32VarArr = {a32Var, a32Var2, a32Var3};
        $VALUES = a32VarArr;
        $ENTRIES = new i03(a32VarArr);
    }

    public a32() {
        throw null;
    }

    public static a32 valueOf(String str) {
        return (a32) Enum.valueOf(a32.class, str);
    }

    public static a32[] values() {
        return (a32[]) $VALUES.clone();
    }
}
