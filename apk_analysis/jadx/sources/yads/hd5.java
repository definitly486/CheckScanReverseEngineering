package yads;

import androidx.media3.common.C;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class hd5 extends bv5 {
    public long b;
    public long[] c;
    public long[] d;

    public hd5() {
        super(new cm2());
        this.b = C.TIME_UNSET;
        this.c = new long[0];
        this.d = new long[0];
    }

    public static Serializable a(int i, os4 os4Var) {
        if (i == 8) {
            return a(os4Var);
        }
        if (i == 10) {
            int iN = os4Var.n();
            ArrayList arrayList = new ArrayList(iN);
            for (int i2 = 0; i2 < iN; i2++) {
                Serializable serializableA = a(os4Var.k(), os4Var);
                if (serializableA != null) {
                    arrayList.add(serializableA);
                }
            }
            return arrayList;
        }
        if (i == 11) {
            Date date = new Date((long) Double.longBitsToDouble(os4Var.g()));
            os4Var.e(os4Var.b + 2);
            return date;
        }
        if (i == 0) {
            return Double.valueOf(Double.longBitsToDouble(os4Var.g()));
        }
        if (i == 1) {
            return Boolean.valueOf(os4Var.k() == 1);
        }
        if (i == 2) {
            return b(os4Var);
        }
        if (i != 3) {
            return null;
        }
        HashMap map = new HashMap();
        while (true) {
            String strB = b(os4Var);
            int iK = os4Var.k();
            if (iK == 9) {
                return map;
            }
            Serializable serializableA2 = a(iK, os4Var);
            if (serializableA2 != null) {
                map.put(strB, serializableA2);
            }
        }
    }

    public static String b(os4 os4Var) {
        int iP = os4Var.p();
        int i = os4Var.b;
        os4Var.e(i + iP);
        return new String(os4Var.a, i, iP);
    }

    public static HashMap a(os4 os4Var) {
        int iN = os4Var.n();
        HashMap map = new HashMap(iN);
        for (int i = 0; i < iN; i++) {
            String strB = b(os4Var);
            Serializable serializableA = a(os4Var.k(), os4Var);
            if (serializableA != null) {
                map.put(strB, serializableA);
            }
        }
        return map;
    }
}
