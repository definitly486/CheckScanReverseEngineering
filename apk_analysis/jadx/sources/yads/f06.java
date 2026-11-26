package yads;

import android.os.Bundle;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class f06 implements kv {
    public static final jv g = new defpackage.jg();
    public final int b;
    public final String c;
    public final int d;
    public final vz2[] e;
    public int f;

    public f06(String str, vz2... vz2VarArr) {
        if (vz2VarArr.length <= 0) {
            defpackage.mi2.b();
            throw null;
        }
        this.c = str;
        this.e = vz2VarArr;
        this.b = vz2VarArr.length;
        int iD = z84.d(vz2VarArr[0].m);
        this.d = iD == -1 ? z84.d(vz2VarArr[0].l) : iD;
        String str2 = vz2VarArr[0].d;
        str2 = (str2 == null || str2.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str2;
        int i = vz2VarArr[0].f | 16384;
        int i2 = 1;
        while (true) {
            vz2[] vz2VarArr2 = this.e;
            if (i2 >= vz2VarArr2.length) {
                return;
            }
            String str3 = vz2VarArr2[i2].d;
            boolean zEquals = str2.equals((str3 == null || str3.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str3);
            vz2[] vz2VarArr3 = this.e;
            if (!zEquals) {
                sv3.b("TrackGroup", sv3.a("", new IllegalStateException(defpackage.l2.e(defpackage.ad2.d("Different languages combined in one TrackGroup: '", vz2VarArr3[0].d, "' (track 0) and '", vz2VarArr3[i2].d, "' (track "), ")", i2))));
                return;
            } else {
                if (i != (vz2VarArr3[i2].f | 16384)) {
                    sv3.b("TrackGroup", sv3.a("", new IllegalStateException(defpackage.l2.e(defpackage.ad2.d("Different role flags combined in one TrackGroup: '", Integer.toBinaryString(vz2VarArr3[0].f), "' (track 0) and '", Integer.toBinaryString(this.e[i2].f), "' (track "), ")", i2))));
                    return;
                }
                i2++;
            }
        }
    }

    public static f06 a(Bundle bundle) {
        k55 k55VarA;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
        if (parcelableArrayList == null) {
            le3 le3Var = oe3.c;
            k55VarA = k55.f;
        } else {
            k55VarA = lv.a(vz2.I, parcelableArrayList);
        }
        return new f06(bundle.getString(Integer.toString(1, 36), ""), (vz2[]) k55VarA.toArray(new vz2[0]));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && f06.class == obj.getClass()) {
            f06 f06Var = (f06) obj;
            if (this.c.equals(f06Var.c) && Arrays.equals(this.e, f06Var.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int iA = l4.a(527, 31, this.c) + Arrays.hashCode(this.e);
        this.f = iA;
        return iA;
    }
}
