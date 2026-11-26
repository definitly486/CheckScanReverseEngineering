package yads;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class z5 implements kv {
    public static final jv i = new defpackage.y83(6);
    public final long b;
    public final int c;
    public final Uri[] d;
    public final int[] e;
    public final long[] f;
    public final long g;
    public final boolean h;

    public z5(long j, int i2, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        if (iArr.length != uriArr.length) {
            defpackage.mi2.b();
            throw null;
        }
        this.b = j;
        this.c = i2;
        this.e = iArr;
        this.d = uriArr;
        this.f = jArr;
        this.g = j2;
        this.h = z;
    }

    public static z5 a(Bundle bundle) {
        long j = bundle.getLong(Integer.toString(0, 36));
        int i2 = bundle.getInt(Integer.toString(1, 36), -1);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(2, 36));
        int[] intArray = bundle.getIntArray(Integer.toString(3, 36));
        long[] longArray = bundle.getLongArray(Integer.toString(4, 36));
        long j2 = bundle.getLong(Integer.toString(5, 36));
        boolean z = bundle.getBoolean(Integer.toString(6, 36));
        int[] iArr = intArray;
        if (iArr == null) {
            iArr = new int[0];
        }
        Uri[] uriArr = parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]);
        if (longArray == null) {
            longArray = new long[0];
        }
        return new z5(j, i2, iArr, uriArr, longArray, j2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && z5.class == obj.getClass()) {
            z5 z5Var = (z5) obj;
            if (this.b == z5Var.b && this.c == z5Var.c && Arrays.equals(this.d, z5Var.d) && Arrays.equals(this.e, z5Var.e) && Arrays.equals(this.f, z5Var.f) && this.g == z5Var.g && this.h == z5Var.h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.c * 31;
        long j = this.b;
        int iHashCode = (Arrays.hashCode(this.f) + ((Arrays.hashCode(this.e) + ((((i2 + ((int) (j ^ (j >>> 32)))) * 31) + Arrays.hashCode(this.d)) * 31)) * 31)) * 31;
        long j2 = this.g;
        return ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.h ? 1 : 0);
    }

    public final z5 a() {
        int[] iArr = this.e;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = this.f;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, C.TIME_UNSET);
        return new z5(this.b, 0, iArrCopyOf, (Uri[]) Arrays.copyOf(this.d, 0), jArrCopyOf, this.g, this.h);
    }

    public final int a(int i2) {
        int i3;
        int i4 = i2 + 1;
        while (true) {
            int[] iArr = this.e;
            if (i4 >= iArr.length || this.h || (i3 = iArr[i4]) == 0 || i3 == 1) {
                break;
            }
            i4++;
        }
        return i4;
    }
}
