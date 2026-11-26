package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ry {
    public static void a(long j, os4 os4Var, k06[] k06VarArr) {
        int i;
        int iK;
        while (true) {
            if (os4Var.c - os4Var.b <= 1) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (os4Var.c - os4Var.b == 0) {
                    i = -1;
                    break;
                }
                int iK2 = os4Var.k();
                i2 += iK2;
                if (iK2 != 255) {
                    i = i2;
                    break;
                }
            }
            int i3 = 0;
            do {
                if (os4Var.c - os4Var.b == 0) {
                    i3 = -1;
                    break;
                } else {
                    iK = os4Var.k();
                    i3 += iK;
                }
            } while (iK == 255);
            int i4 = os4Var.b;
            int i5 = i4 + i3;
            if (i3 == -1 || i3 > os4Var.c - i4) {
                sv3.d("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i5 = os4Var.c;
            } else if (i == 4 && i3 >= 8) {
                int iK3 = os4Var.k();
                int iP = os4Var.p();
                int iA = iP == 49 ? os4Var.a() : 0;
                int iK4 = os4Var.k();
                if (iP == 47) {
                    os4Var.e(os4Var.b + 1);
                }
                boolean z = iK3 == 181 && (iP == 49 || iP == 47) && iK4 == 3;
                if (iP == 49) {
                    z &= iA == 1195456820;
                }
                if (z) {
                    b(j, os4Var, k06VarArr);
                }
            }
            os4Var.e(i5);
        }
    }

    public static void b(long j, os4 os4Var, k06[] k06VarArr) {
        long j2;
        int iK = os4Var.k();
        if ((iK & 64) != 0) {
            os4Var.e(os4Var.b + 1);
            int i = (iK & 31) * 3;
            int i2 = os4Var.b;
            int length = k06VarArr.length;
            int i3 = 0;
            while (i3 < length) {
                k06 k06Var = k06VarArr[i3];
                os4Var.e(i2);
                k06Var.a(i, os4Var);
                if (j != C.TIME_UNSET) {
                    j2 = j;
                    k06Var.a(j2, 1, i, 0, null);
                } else {
                    j2 = j;
                }
                i3++;
                j = j2;
            }
        }
    }
}
