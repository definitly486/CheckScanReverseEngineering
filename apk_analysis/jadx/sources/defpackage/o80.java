package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class o80 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ o80[] $VALUES;
    public static final o80 FADE;
    public static final o80 NONE;

    static {
        o80 o80Var = new o80("NONE", 0);
        NONE = o80Var;
        o80 o80Var2 = new o80("FADE", 1);
        FADE = o80Var2;
        o80[] o80VarArr = {o80Var, o80Var2};
        $VALUES = o80VarArr;
        $ENTRIES = new i03(o80VarArr);
    }

    public o80() {
        throw null;
    }

    public static o80 valueOf(String str) {
        return (o80) Enum.valueOf(o80.class, str);
    }

    public static o80[] values() {
        return (o80[]) $VALUES.clone();
    }
}
