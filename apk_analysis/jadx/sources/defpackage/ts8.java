package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class ts8 {
    private static final /* synthetic */ ts8[] $VALUES;
    public static final ts8 INDEX;
    public static final ts8 PERCENT;

    static {
        ts8 ts8Var = new ts8("PERCENT", 0);
        PERCENT = ts8Var;
        ts8 ts8Var2 = new ts8("INDEX", 1);
        INDEX = ts8Var2;
        $VALUES = new ts8[]{ts8Var, ts8Var2};
    }

    public ts8() {
        throw null;
    }

    public static ts8 valueOf(String str) {
        return (ts8) Enum.valueOf(ts8.class, str);
    }

    public static ts8[] values() {
        return (ts8[]) $VALUES.clone();
    }
}
