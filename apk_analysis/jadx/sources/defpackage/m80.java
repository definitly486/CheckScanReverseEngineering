package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class m80 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ m80[] $VALUES;
    public static final m80 BOTTOM;
    public static final m80 END;
    public static final m80 START;
    public static final m80 TOP;

    static {
        m80 m80Var = new m80("START", 0);
        START = m80Var;
        m80 m80Var2 = new m80("END", 1);
        END = m80Var2;
        m80 m80Var3 = new m80("TOP", 2);
        TOP = m80Var3;
        m80 m80Var4 = new m80("BOTTOM", 3);
        BOTTOM = m80Var4;
        m80[] m80VarArr = {m80Var, m80Var2, m80Var3, m80Var4};
        $VALUES = m80VarArr;
        $ENTRIES = new i03(m80VarArr);
    }

    public m80() {
        throw null;
    }

    public static m80 valueOf(String str) {
        return (m80) Enum.valueOf(m80.class, str);
    }

    public static m80[] values() {
        return (m80[]) $VALUES.clone();
    }
}
