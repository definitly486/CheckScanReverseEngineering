package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class m07 {
    private static final /* synthetic */ m07[] $VALUES;
    public static final m07 REDUCED_MOTION;
    public static final m07 STANDARD_MOTION;

    static {
        m07 m07Var = new m07("STANDARD_MOTION", 0);
        STANDARD_MOTION = m07Var;
        m07 m07Var2 = new m07("REDUCED_MOTION", 1);
        REDUCED_MOTION = m07Var2;
        $VALUES = new m07[]{m07Var, m07Var2};
    }

    public m07() {
        throw null;
    }

    public static m07 valueOf(String str) {
        return (m07) Enum.valueOf(m07.class, str);
    }

    public static m07[] values() {
        return (m07[]) $VALUES.clone();
    }
}
