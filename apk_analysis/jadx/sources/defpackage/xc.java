package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class xc {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ xc[] $VALUES;
    public static final xc AM;
    public static final xc PM;

    static {
        xc xcVar = new xc("AM", 0);
        AM = xcVar;
        xc xcVar2 = new xc("PM", 1);
        PM = xcVar2;
        xc[] xcVarArr = {xcVar, xcVar2};
        $VALUES = xcVarArr;
        $ENTRIES = new i03(xcVarArr);
    }

    public xc() {
        throw null;
    }

    public static xc valueOf(String str) {
        return (xc) Enum.valueOf(xc.class, str);
    }

    public static xc[] values() {
        return (xc[]) $VALUES.clone();
    }
}
