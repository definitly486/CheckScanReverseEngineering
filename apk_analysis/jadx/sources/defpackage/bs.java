package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class bs {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ bs[] $VALUES;
    public static final bs ALIGN_ANCHOR;
    public static final bs ALIGN_BALLOON;

    static {
        bs bsVar = new bs("ALIGN_BALLOON", 0);
        ALIGN_BALLOON = bsVar;
        bs bsVar2 = new bs("ALIGN_ANCHOR", 1);
        ALIGN_ANCHOR = bsVar2;
        bs[] bsVarArr = {bsVar, bsVar2};
        $VALUES = bsVarArr;
        $ENTRIES = new i03(bsVarArr);
    }

    public bs() {
        throw null;
    }

    public static bs valueOf(String str) {
        return (bs) Enum.valueOf(bs.class, str);
    }

    public static bs[] values() {
        return (bs[]) $VALUES.clone();
    }
}
