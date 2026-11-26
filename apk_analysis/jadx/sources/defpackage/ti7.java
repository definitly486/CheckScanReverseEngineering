package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class ti7 {
    private static final /* synthetic */ ti7[] $VALUES;
    public static final ti7 Down;
    public static final ti7 Up;

    static {
        ti7 ti7Var = new ti7("Up", 0);
        Up = ti7Var;
        ti7 ti7Var2 = new ti7("Down", 1);
        Down = ti7Var2;
        $VALUES = new ti7[]{ti7Var, ti7Var2};
    }

    public ti7() {
        throw null;
    }

    public static ti7 valueOf(String str) {
        return (ti7) Enum.valueOf(ti7.class, str);
    }

    public static ti7[] values() {
        return (ti7[]) $VALUES.clone();
    }
}
