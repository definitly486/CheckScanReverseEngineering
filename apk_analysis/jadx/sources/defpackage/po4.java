package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class po4 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ po4[] $VALUES;
    public static final po4 NONE;
    public static final po4 PUBLICATION;
    public static final po4 SYNCHRONIZED;

    static {
        po4 po4Var = new po4("SYNCHRONIZED", 0);
        SYNCHRONIZED = po4Var;
        po4 po4Var2 = new po4("PUBLICATION", 1);
        PUBLICATION = po4Var2;
        po4 po4Var3 = new po4("NONE", 2);
        NONE = po4Var3;
        po4[] po4VarArr = {po4Var, po4Var2, po4Var3};
        $VALUES = po4VarArr;
        $ENTRIES = new i03(po4VarArr);
    }

    public po4() {
        throw null;
    }

    public static po4 valueOf(String str) {
        return (po4) Enum.valueOf(po4.class, str);
    }

    public static po4[] values() {
        return (po4[]) $VALUES.clone();
    }
}
