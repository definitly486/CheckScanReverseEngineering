package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class e27 {
    private static final /* synthetic */ e27[] $VALUES;
    public static final e27 AUTOMATIC;
    public static final e27 HARDWARE;
    public static final e27 SOFTWARE;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e27.values().length];
            a = iArr;
            try {
                iArr[e27.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e27.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[e27.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        e27 e27Var = new e27("AUTOMATIC", 0);
        AUTOMATIC = e27Var;
        e27 e27Var2 = new e27("HARDWARE", 1);
        HARDWARE = e27Var2;
        e27 e27Var3 = new e27("SOFTWARE", 2);
        SOFTWARE = e27Var3;
        $VALUES = new e27[]{e27Var, e27Var2, e27Var3};
    }

    public e27() {
        throw null;
    }

    public static e27 valueOf(String str) {
        return (e27) Enum.valueOf(e27.class, str);
    }

    public static e27[] values() {
        return (e27[]) $VALUES.clone();
    }
}
