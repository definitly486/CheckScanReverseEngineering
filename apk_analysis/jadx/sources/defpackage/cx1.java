package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class cx1 {
    private static final /* synthetic */ cx1[] $VALUES;
    public static final cx1 CONNECTING;
    public static final cx1 IDLE;
    public static final cx1 READY;
    public static final cx1 SHUTDOWN;
    public static final cx1 TRANSIENT_FAILURE;

    static {
        cx1 cx1Var = new cx1("CONNECTING", 0);
        CONNECTING = cx1Var;
        cx1 cx1Var2 = new cx1("READY", 1);
        READY = cx1Var2;
        cx1 cx1Var3 = new cx1("TRANSIENT_FAILURE", 2);
        TRANSIENT_FAILURE = cx1Var3;
        cx1 cx1Var4 = new cx1("IDLE", 3);
        IDLE = cx1Var4;
        cx1 cx1Var5 = new cx1("SHUTDOWN", 4);
        SHUTDOWN = cx1Var5;
        $VALUES = new cx1[]{cx1Var, cx1Var2, cx1Var3, cx1Var4, cx1Var5};
    }

    public cx1() {
        throw null;
    }

    public static cx1 valueOf(String str) {
        return (cx1) Enum.valueOf(cx1.class, str);
    }

    public static cx1[] values() {
        return (cx1[]) $VALUES.clone();
    }
}
