package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class c32 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ c32[] $VALUES;
    public static final c32 ATOMIC;
    public static final c32 DEFAULT;
    public static final c32 LAZY;
    public static final c32 UNDISPATCHED;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c32.values().length];
            try {
                iArr[c32.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c32.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c32.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[c32.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    static {
        c32 c32Var = new c32("DEFAULT", 0);
        DEFAULT = c32Var;
        c32 c32Var2 = new c32("LAZY", 1);
        LAZY = c32Var2;
        c32 c32Var3 = new c32("ATOMIC", 2);
        ATOMIC = c32Var3;
        c32 c32Var4 = new c32("UNDISPATCHED", 3);
        UNDISPATCHED = c32Var4;
        c32[] c32VarArr = {c32Var, c32Var2, c32Var3, c32Var4};
        $VALUES = c32VarArr;
        $ENTRIES = new i03(c32VarArr);
    }

    public c32() {
        throw null;
    }

    public static c32 valueOf(String str) {
        return (c32) Enum.valueOf(c32.class, str);
    }

    public static c32[] values() {
        return (c32[]) $VALUES.clone();
    }
}
