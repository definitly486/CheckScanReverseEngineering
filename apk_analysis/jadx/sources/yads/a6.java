package yads;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class a6 implements kv {
    public static final a6 g = new a6(new z5[0], 0, C.TIME_UNSET, 0);
    public static final z5 h = new z5(0, -1, new int[0], new Uri[0], new long[0], 0, false).a();
    public static final jv i = new defpackage.cg();
    public final int b;
    public final long c;
    public final long d;
    public final int e;
    public final z5[] f;

    public a6(z5[] z5VarArr, long j, long j2, int i2) {
        this.c = j;
        this.d = j2;
        this.b = z5VarArr.length + i2;
        this.f = z5VarArr;
        this.e = i2;
    }

    public static a6 a(Bundle bundle) {
        z5[] z5VarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(1, 36));
        if (parcelableArrayList == null) {
            z5VarArr = new z5[0];
        } else {
            z5[] z5VarArr2 = new z5[parcelableArrayList.size()];
            for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
                z5VarArr2[i2] = (z5) z5.i.a((Bundle) parcelableArrayList.get(i2));
            }
            z5VarArr = z5VarArr2;
        }
        return new a6(z5VarArr, bundle.getLong(Integer.toString(2, 36), 0L), bundle.getLong(Integer.toString(3, 36), C.TIME_UNSET), bundle.getInt(Integer.toString(4, 36)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a6.class == obj.getClass()) {
            a6 a6Var = (a6) obj;
            if (u56.a((Object) null, (Object) null) && this.b == a6Var.b && this.c == a6Var.c && this.d == a6Var.d && this.e == a6Var.e && Arrays.equals(this.f, a6Var.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((((this.b * 961) + ((int) this.c)) * 31) + ((int) this.d)) * 31) + this.e) * 31) + Arrays.hashCode(this.f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=null, adResumePositionUs=");
        sb.append(this.c);
        sb.append(", adGroups=[");
        for (int i2 = 0; i2 < this.f.length; i2++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.f[i2].b);
            sb.append(", ads=[");
            for (int i3 = 0; i3 < this.f[i2].e.length; i3++) {
                sb.append("ad(state=");
                int i4 = this.f[i2].e[i3];
                if (i4 == 0) {
                    sb.append('_');
                } else if (i4 == 1) {
                    sb.append('R');
                } else if (i4 == 2) {
                    sb.append('S');
                } else if (i4 == 3) {
                    sb.append('P');
                } else if (i4 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.f[i2].f[i3]);
                sb.append(')');
                if (i3 < this.f[i2].e.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i2 < this.f.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    public final z5 a(int i2) {
        int i3 = this.e;
        if (i2 < i3) {
            return h;
        }
        return this.f[i2 - i3];
    }
}
