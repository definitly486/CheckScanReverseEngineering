package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class nz6 {
    private static final /* synthetic */ nz6[] $VALUES;
    public static final nz6 ALREADY_SCANNED;
    public static final nz6 CHEQUE_NO_SHOP_RECEIVED;
    public static final nz6 CHEQUE_RECEIVED;
    public static final a Companion;
    public static final nz6 FNS_NOT_RESPONDING;
    public static final nz6 INVALID;
    public static final nz6 NOT_CORRECT_FORMAT;
    public static final nz6 WAITING;

    public static final class a {
        public static nz6 a(int i) {
            if (i == 200) {
                return nz6.CHEQUE_NO_SHOP_RECEIVED;
            }
            if (i == 201) {
                return nz6.CHEQUE_RECEIVED;
            }
            if (i == 204) {
                return nz6.FNS_NOT_RESPONDING;
            }
            if (i == 400) {
                return nz6.NOT_CORRECT_FORMAT;
            }
            if (i != 409) {
                return i != 412 ? nz6.FNS_NOT_RESPONDING : nz6.INVALID;
            }
            return nz6.ALREADY_SCANNED;
        }
    }

    static {
        nz6 nz6Var = new nz6("WAITING", 0);
        WAITING = nz6Var;
        nz6 nz6Var2 = new nz6("FNS_NOT_RESPONDING", 1);
        FNS_NOT_RESPONDING = nz6Var2;
        nz6 nz6Var3 = new nz6("NOT_CORRECT_FORMAT", 2);
        NOT_CORRECT_FORMAT = nz6Var3;
        nz6 nz6Var4 = new nz6("CHEQUE_RECEIVED", 3);
        CHEQUE_RECEIVED = nz6Var4;
        nz6 nz6Var5 = new nz6("CHEQUE_NO_SHOP_RECEIVED", 4);
        CHEQUE_NO_SHOP_RECEIVED = nz6Var5;
        nz6 nz6Var6 = new nz6("ALREADY_SCANNED", 5);
        ALREADY_SCANNED = nz6Var6;
        nz6 nz6Var7 = new nz6("INVALID", 6);
        INVALID = nz6Var7;
        $VALUES = new nz6[]{nz6Var, nz6Var2, nz6Var3, nz6Var4, nz6Var5, nz6Var6, nz6Var7};
        Companion = new a();
    }

    public nz6() {
        throw null;
    }

    public static nz6 valueOf(String str) {
        return (nz6) Enum.valueOf(nz6.class, str);
    }

    public static nz6[] values() {
        return (nz6[]) $VALUES.clone();
    }
}
