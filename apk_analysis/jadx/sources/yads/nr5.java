package yads;

import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public abstract class nr5 {
    public static kr5 a(ir5 ir5Var, String str, String str2) {
        int iOrdinal = ir5Var.ordinal();
        if (iOrdinal == 0) {
            return new gr5(str, str2);
        }
        if (iOrdinal == 1) {
            try {
                return new fr5(str, Long.parseLong(str2));
            } catch (NumberFormatException e) {
                throw new lr5(null, e, 1);
            }
        }
        if (iOrdinal == 2) {
            return new br5(str, a(str2));
        }
        if (iOrdinal == 3) {
            try {
                return new er5(str, Double.parseDouble(str2));
            } catch (NumberFormatException e2) {
                throw new lr5(null, e2, 1);
            }
        }
        if (iOrdinal == 4) {
            return new cr5(str, b(str2));
        }
        if (iOrdinal == 5) {
            try {
                return new jr5(str, p46.a(str2));
            } catch (IllegalArgumentException e3) {
                throw new lr5(null, e3, 1);
            }
        }
        throw new lr5("Cannot create stored value of type = '" + ir5Var + "'.", null, 2);
    }

    public static int b(String str) {
        Integer num = (Integer) bt4.a.invoke(str);
        if (num != null) {
            return l20.b(num.intValue());
        }
        throw new lr5(defpackage.me0.c("Wrong value format for color stored value: '", str, "'"), null, 2);
    }

    public static boolean a(String str) {
        Boolean boolE0 = ta8.e0(str);
        if (boolE0 == null) {
            try {
                Boolean boolA = d70.a(Integer.parseInt(str));
                if (boolA == null) {
                    throw new lr5(defpackage.me0.c("Unable to convert ", str, " to boolean"), null, 2);
                }
                boolE0 = boolA;
            } catch (NumberFormatException e) {
                throw new lr5(null, e, 1);
            }
        }
        return boolE0.booleanValue();
    }
}
