package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class fv4 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ fv4[] $VALUES;
    public static final fv4 Debug;
    public static final fv4 Error;
    public static final fv4 Info;
    public static final fv4 Verbose;
    public static final fv4 Warn;

    static {
        fv4 fv4Var = new fv4("Verbose", 0);
        Verbose = fv4Var;
        fv4 fv4Var2 = new fv4("Debug", 1);
        Debug = fv4Var2;
        fv4 fv4Var3 = new fv4("Info", 2);
        Info = fv4Var3;
        fv4 fv4Var4 = new fv4("Warn", 3);
        Warn = fv4Var4;
        fv4 fv4Var5 = new fv4("Error", 4);
        Error = fv4Var5;
        fv4[] fv4VarArr = {fv4Var, fv4Var2, fv4Var3, fv4Var4, fv4Var5};
        $VALUES = fv4VarArr;
        $ENTRIES = new i03(fv4VarArr);
    }

    public fv4() {
        throw null;
    }

    public static fv4 valueOf(String str) {
        return (fv4) Enum.valueOf(fv4.class, str);
    }

    public static fv4[] values() {
        return (fv4[]) $VALUES.clone();
    }
}
