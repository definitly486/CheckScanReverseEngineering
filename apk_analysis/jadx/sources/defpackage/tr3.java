package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class tr3 {
    private static final /* synthetic */ tr3[] $VALUES;
    public static final tr3 LINEAR;
    public static final tr3 RADIAL;

    static {
        tr3 tr3Var = new tr3("LINEAR", 0);
        LINEAR = tr3Var;
        tr3 tr3Var2 = new tr3("RADIAL", 1);
        RADIAL = tr3Var2;
        $VALUES = new tr3[]{tr3Var, tr3Var2};
    }

    public tr3() {
        throw null;
    }

    public static tr3 valueOf(String str) {
        return (tr3) Enum.valueOf(tr3.class, str);
    }

    public static tr3[] values() {
        return (tr3[]) $VALUES.clone();
    }
}
