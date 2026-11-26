package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class w01 {
    private static final /* synthetic */ w01[] $VALUES;
    public static final w01 BACK;
    public static final w01 FRONT;

    static {
        w01 w01Var = new w01("BACK", 0);
        BACK = w01Var;
        w01 w01Var2 = new w01("FRONT", 1);
        FRONT = w01Var2;
        $VALUES = new w01[]{w01Var, w01Var2};
    }

    public w01() {
        throw null;
    }

    public static w01 valueOf(String str) {
        return (w01) Enum.valueOf(w01.class, str);
    }

    public static w01[] values() {
        return (w01[]) $VALUES.clone();
    }
}
