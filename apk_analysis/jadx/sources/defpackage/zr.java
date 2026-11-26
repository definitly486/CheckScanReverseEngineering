package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class zr {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ zr[] $VALUES;
    public static final zr BOTTOM;
    public static final a Companion;
    public static final zr END;
    public static final zr START;
    public static final zr TOP;

    public static final class a {

        /* JADX INFO: renamed from: zr$a$a, reason: collision with other inner class name */
        public static final /* synthetic */ class C0374a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[zr.values().length];
                try {
                    iArr[zr.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[zr.END.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }
    }

    static {
        zr zrVar = new zr("BOTTOM", 0);
        BOTTOM = zrVar;
        zr zrVar2 = new zr("TOP", 1);
        TOP = zrVar2;
        zr zrVar3 = new zr("START", 2);
        START = zrVar3;
        zr zrVar4 = new zr("END", 3);
        END = zrVar4;
        zr[] zrVarArr = {zrVar, zrVar2, zrVar3, zrVar4};
        $VALUES = zrVarArr;
        $ENTRIES = new i03(zrVarArr);
        Companion = new a();
    }

    public zr() {
        throw null;
    }

    public static zr valueOf(String str) {
        return (zr) Enum.valueOf(zr.class, str);
    }

    public static zr[] values() {
        return (zr[]) $VALUES.clone();
    }
}
