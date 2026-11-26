package yads;

import android.os.Bundle;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class j04 implements kv {
    public static final j04 g = new j04(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f);
    public static final jv h = new defpackage.av();
    public final long b;
    public final long c;
    public final long d;
    public final float e;
    public final float f;

    public j04(long j, long j2, long j3, float f, float f2) {
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = f;
        this.f = f2;
    }

    public static j04 a(Bundle bundle) {
        return new j04(bundle.getLong(Integer.toString(0, 36), C.TIME_UNSET), bundle.getLong(Integer.toString(1, 36), C.TIME_UNSET), bundle.getLong(Integer.toString(2, 36), C.TIME_UNSET), bundle.getFloat(Integer.toString(3, 36), -3.4028235E38f), bundle.getFloat(Integer.toString(4, 36), -3.4028235E38f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j04)) {
            return false;
        }
        j04 j04Var = (j04) obj;
        return this.b == j04Var.b && this.c == j04Var.c && this.d == j04Var.d && this.e == j04Var.e && this.f == j04Var.f;
    }

    public final int hashCode() {
        long j = this.b;
        long j2 = this.c;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.d;
        int i2 = (i + ((int) ((j3 >>> 32) ^ j3))) * 31;
        float f = this.e;
        int iFloatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
        float f2 = this.f;
        return iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
    }
}
