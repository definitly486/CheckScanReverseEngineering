package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class y82 {
    private static final /* synthetic */ y82[] $VALUES;
    public static final y82 DATA_DISK_CACHE;
    public static final y82 LOCAL;
    public static final y82 MEMORY_CACHE;
    public static final y82 REMOTE;
    public static final y82 RESOURCE_DISK_CACHE;

    static {
        y82 y82Var = new y82("LOCAL", 0);
        LOCAL = y82Var;
        y82 y82Var2 = new y82("REMOTE", 1);
        REMOTE = y82Var2;
        y82 y82Var3 = new y82("DATA_DISK_CACHE", 2);
        DATA_DISK_CACHE = y82Var3;
        y82 y82Var4 = new y82("RESOURCE_DISK_CACHE", 3);
        RESOURCE_DISK_CACHE = y82Var4;
        y82 y82Var5 = new y82("MEMORY_CACHE", 4);
        MEMORY_CACHE = y82Var5;
        $VALUES = new y82[]{y82Var, y82Var2, y82Var3, y82Var4, y82Var5};
    }

    public y82() {
        throw null;
    }

    public static y82 valueOf(String str) {
        return (y82) Enum.valueOf(y82.class, str);
    }

    public static y82[] values() {
        return (y82[]) $VALUES.clone();
    }
}
