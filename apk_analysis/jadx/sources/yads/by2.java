package yads;

import androidx.media3.common.C;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class by2 extends qt {
    public by2(ky2 ky2Var, int i, long j, long j2) {
        long j3;
        long j4;
        Objects.requireNonNull(ky2Var);
        defpackage.ci ciVar = new defpackage.ci(ky2Var);
        ay2 ay2Var = new ay2(ky2Var, i);
        long j5 = ky2Var.j;
        long j6 = j5 == 0 ? C.TIME_UNSET : (1000000 * j5) / ((long) ky2Var.e);
        int i2 = ky2Var.d;
        if (i2 > 0) {
            j3 = (((long) i2) + ((long) ky2Var.c)) / 2;
            j4 = 1;
        } else {
            int i3 = ky2Var.a;
            j3 = ((((i3 != ky2Var.b || i3 <= 0) ? 4096L : i3) * ((long) ky2Var.g)) * ((long) ky2Var.h)) / 8;
            j4 = 64;
        }
        super(ciVar, ay2Var, j6, j5, j, j2, j3 + j4, Math.max(6, ky2Var.c));
    }
}
