package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class as {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ as[] $VALUES;
    public static final as ALIGN_ANCHOR;
    public static final as ALIGN_FIXED;

    static {
        as asVar = new as("ALIGN_ANCHOR", 0);
        ALIGN_ANCHOR = asVar;
        as asVar2 = new as("ALIGN_FIXED", 1);
        ALIGN_FIXED = asVar2;
        as[] asVarArr = {asVar, asVar2};
        $VALUES = asVarArr;
        $ENTRIES = new i03(asVarArr);
    }

    public as() {
        throw null;
    }

    public static as valueOf(String str) {
        return (as) Enum.valueOf(as.class, str);
    }

    public static as[] values() {
        return (as[]) $VALUES.clone();
    }
}
