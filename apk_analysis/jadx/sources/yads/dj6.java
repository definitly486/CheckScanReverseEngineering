package yads;

import android.util.Base64;
import androidx.media3.extractor.ts.PsExtractor;
import defpackage.u4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class dj6 {
    public static h84 a(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            int i2 = u56.a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                sv3.d("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    os4 os4Var = new os4(Base64.decode(strArrSplit[1], 0));
                    int iA = os4Var.a();
                    String strA = os4Var.a(os4Var.a(), az.a);
                    String strA2 = os4Var.a(os4Var.a(), az.c);
                    int iA2 = os4Var.a();
                    int iA3 = os4Var.a();
                    int iA4 = os4Var.a();
                    int iA5 = os4Var.a();
                    int iA6 = os4Var.a();
                    byte[] bArr = new byte[iA6];
                    os4Var.a(bArr, 0, iA6);
                    arrayList.add(new zu4(iA, strA, strA2, iA2, iA3, iA4, iA5, bArr));
                } catch (RuntimeException e) {
                    sv3.d("VorbisUtil", sv3.a("Failed to parse vorbis picture", e));
                }
            } else {
                arrayList.add(new wi6(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new h84(arrayList);
    }

    public static cj6 a(os4 os4Var) {
        a(1, os4Var, false);
        int iC = os4Var.c();
        if (iC >= 0) {
            int iK = os4Var.k();
            int iC2 = os4Var.c();
            if (iC2 >= 0) {
                int iC3 = os4Var.c();
                int i = iC3 <= 0 ? -1 : iC3;
                int iC4 = os4Var.c();
                int i2 = iC4 <= 0 ? -1 : iC4;
                os4Var.c();
                int iK2 = os4Var.k();
                int iPow = (int) Math.pow(2.0d, iK2 & 15);
                int iPow2 = (int) Math.pow(2.0d, (iK2 & PsExtractor.VIDEO_STREAM_MASK) >> 4);
                os4Var.k();
                return new cj6(iK, iC2, i, i2, iPow, iPow2, Arrays.copyOf(os4Var.a, os4Var.c));
            }
            defpackage.ah.f(vx4.a(iC2, "Top bit not zero: "));
            return null;
        }
        defpackage.ah.f(vx4.a(iC, "Top bit not zero: "));
        return null;
    }

    public static aj6 a(os4 os4Var, boolean z, boolean z2) throws xs4 {
        if (z) {
            a(3, os4Var, false);
        }
        os4Var.a((int) os4Var.e(), az.c);
        long jE = os4Var.e();
        String[] strArr = new String[(int) jE];
        for (int i = 0; i < jE; i++) {
            strArr[i] = os4Var.a((int) os4Var.e(), az.c);
        }
        if (z2 && (os4Var.k() & 1) == 0) {
            defpackage.e2.h("framing bit expected to be set", null);
            return null;
        }
        return new aj6(strArr);
    }

    public static boolean a(int i, os4 os4Var, boolean z) {
        if (os4Var.c - os4Var.b < 7) {
            if (z) {
                return false;
            }
            u4.c(os4Var.c - os4Var.b, "too short header: ");
            return false;
        }
        if (os4Var.k() != i) {
            if (z) {
                return false;
            }
            defpackage.e2.h(defpackage.c9.e(i, new StringBuilder("expected header type ")), null);
            return false;
        }
        if (os4Var.k() == 118 && os4Var.k() == 111 && os4Var.k() == 114 && os4Var.k() == 98 && os4Var.k() == 105 && os4Var.k() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        defpackage.e2.h("expected characters 'vorbis'", null);
        return false;
    }
}
