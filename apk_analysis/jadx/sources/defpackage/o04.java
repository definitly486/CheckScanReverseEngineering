package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class o04 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ o04[] $VALUES;
    public static final o04 BOTTOM;
    public static final o04 END;
    public static final o04 START;
    public static final o04 TOP;

    static {
        o04 o04Var = new o04("START", 0);
        START = o04Var;
        o04 o04Var2 = new o04("END", 1);
        END = o04Var2;
        o04 o04Var3 = new o04("TOP", 2);
        TOP = o04Var3;
        o04 o04Var4 = new o04("BOTTOM", 3);
        BOTTOM = o04Var4;
        o04[] o04VarArr = {o04Var, o04Var2, o04Var3, o04Var4};
        $VALUES = o04VarArr;
        $ENTRIES = new i03(o04VarArr);
    }

    public o04() {
        throw null;
    }

    public static o04 valueOf(String str) {
        return (o04) Enum.valueOf(o04.class, str);
    }

    public static o04[] values() {
        return (o04[]) $VALUES.clone();
    }
}
