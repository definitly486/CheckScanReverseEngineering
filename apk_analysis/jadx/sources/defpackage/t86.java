package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class t86 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ t86[] $VALUES;
    public static final t86 ALIGNMENT;
    public static final t86 CENTER;
    public static final t86 DROPDOWN;

    static {
        t86 t86Var = new t86("ALIGNMENT", 0);
        ALIGNMENT = t86Var;
        t86 t86Var2 = new t86("DROPDOWN", 1);
        DROPDOWN = t86Var2;
        t86 t86Var3 = new t86("CENTER", 2);
        CENTER = t86Var3;
        t86[] t86VarArr = {t86Var, t86Var2, t86Var3};
        $VALUES = t86VarArr;
        $ENTRIES = new i03(t86VarArr);
    }

    public t86() {
        throw null;
    }

    public static t86 valueOf(String str) {
        return (t86) Enum.valueOf(t86.class, str);
    }

    public static t86[] values() {
        return (t86[]) $VALUES.clone();
    }
}
