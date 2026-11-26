package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class hf4 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ hf4[] $VALUES;
    public static final hf4 INTERNAL;
    public static final hf4 PRIVATE;
    public static final hf4 PROTECTED;
    public static final hf4 PUBLIC;

    static {
        hf4 hf4Var = new hf4("PUBLIC", 0);
        PUBLIC = hf4Var;
        hf4 hf4Var2 = new hf4("PROTECTED", 1);
        PROTECTED = hf4Var2;
        hf4 hf4Var3 = new hf4("INTERNAL", 2);
        INTERNAL = hf4Var3;
        hf4 hf4Var4 = new hf4("PRIVATE", 3);
        PRIVATE = hf4Var4;
        hf4[] hf4VarArr = {hf4Var, hf4Var2, hf4Var3, hf4Var4};
        $VALUES = hf4VarArr;
        $ENTRIES = new i03(hf4VarArr);
    }

    public hf4() {
        throw null;
    }

    public static hf4 valueOf(String str) {
        return (hf4) Enum.valueOf(hf4.class, str);
    }

    public static hf4[] values() {
        return (hf4[]) $VALUES.clone();
    }
}
