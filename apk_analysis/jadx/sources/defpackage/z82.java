package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class z82 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ z82[] $VALUES;
    public static final z82 DISK;
    public static final z82 MEMORY;
    public static final z82 MEMORY_CACHE;
    public static final z82 NETWORK;

    static {
        z82 z82Var = new z82("MEMORY_CACHE", 0);
        MEMORY_CACHE = z82Var;
        z82 z82Var2 = new z82("MEMORY", 1);
        MEMORY = z82Var2;
        z82 z82Var3 = new z82("DISK", 2);
        DISK = z82Var3;
        z82 z82Var4 = new z82("NETWORK", 3);
        NETWORK = z82Var4;
        z82[] z82VarArr = {z82Var, z82Var2, z82Var3, z82Var4};
        $VALUES = z82VarArr;
        $ENTRIES = new i03(z82VarArr);
    }

    public z82() {
        throw null;
    }

    public static z82 valueOf(String str) {
        return (z82) Enum.valueOf(z82.class, str);
    }

    public static z82[] values() {
        return (z82[]) $VALUES.clone();
    }
}
