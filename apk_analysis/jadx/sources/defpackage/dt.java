package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class dt {
    private static final /* synthetic */ dt[] $VALUES;
    public static final dt AUTOMATIC;
    public static final dt DISABLED;
    public static final dt ENABLED;

    static {
        dt dtVar = new dt("AUTOMATIC", 0);
        AUTOMATIC = dtVar;
        dt dtVar2 = new dt("ENABLED", 1);
        ENABLED = dtVar2;
        dt dtVar3 = new dt("DISABLED", 2);
        DISABLED = dtVar3;
        $VALUES = new dt[]{dtVar, dtVar2, dtVar3};
    }

    public dt() {
        throw null;
    }

    public static dt valueOf(String str) {
        return (dt) Enum.valueOf(dt.class, str);
    }

    public static dt[] values() {
        return (dt[]) $VALUES.clone();
    }
}
