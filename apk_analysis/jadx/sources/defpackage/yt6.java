package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class yt6 {
    private static final /* synthetic */ yt6[] $VALUES;
    public static final yt6 ADMITAD_ONLINE;
    public static final yt6 ADVERTISING_CAMPAIGN;

    static {
        yt6 yt6Var = new yt6("ADMITAD_ONLINE", 0);
        ADMITAD_ONLINE = yt6Var;
        yt6 yt6Var2 = new yt6("ADVERTISING_CAMPAIGN", 1);
        ADVERTISING_CAMPAIGN = yt6Var2;
        $VALUES = new yt6[]{yt6Var, yt6Var2};
    }

    public yt6() {
        throw null;
    }

    public static yt6 valueOf(String str) {
        return (yt6) Enum.valueOf(yt6.class, str);
    }

    public static yt6[] values() {
        return (yt6[]) $VALUES.clone();
    }
}
