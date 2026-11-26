package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class l80 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ l80[] $VALUES;
    public static final l80 CIRCULAR;
    public static final l80 ELASTIC;
    public static final l80 FADE;
    public static final l80 NONE;
    public static final l80 OVERSHOOT;

    static {
        l80 l80Var = new l80("NONE", 0);
        NONE = l80Var;
        l80 l80Var2 = new l80("ELASTIC", 1);
        ELASTIC = l80Var2;
        l80 l80Var3 = new l80("FADE", 2);
        FADE = l80Var3;
        l80 l80Var4 = new l80("CIRCULAR", 3);
        CIRCULAR = l80Var4;
        l80 l80Var5 = new l80("OVERSHOOT", 4);
        OVERSHOOT = l80Var5;
        l80[] l80VarArr = {l80Var, l80Var2, l80Var3, l80Var4, l80Var5};
        $VALUES = l80VarArr;
        $ENTRIES = new i03(l80VarArr);
    }

    public l80() {
        throw null;
    }

    public static l80 valueOf(String str) {
        return (l80) Enum.valueOf(l80.class, str);
    }

    public static l80[] values() {
        return (l80[]) $VALUES.clone();
    }
}
