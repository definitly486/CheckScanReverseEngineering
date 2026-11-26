package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class jl0 {
    public final long a;
    public final long b;
    public long c = C.TIME_UNSET;
    public long d = C.TIME_UNSET;
    public long f = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public float j = 0.97f;
    public float i = 1.03f;
    public float k = 1.0f;
    public long l = C.TIME_UNSET;
    public long e = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public long m = C.TIME_UNSET;
    public long n = C.TIME_UNSET;

    public jl0(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final void a() {
        long j = this.c;
        if (j != C.TIME_UNSET) {
            long j2 = this.d;
            if (j2 != C.TIME_UNSET) {
                j = j2;
            }
            long j3 = this.f;
            if (j3 != C.TIME_UNSET && j < j3) {
                j = j3;
            }
            long j4 = this.g;
            if (j4 != C.TIME_UNSET && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.e == j) {
            return;
        }
        this.e = j;
        this.h = j;
        this.m = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
    }
}
