package yads;

import androidx.media3.common.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class dp5 extends vk5 {
    public final os4 a = new os4();
    public final ns4 b = new ns4();
    public vx5 c;

    /* JADX WARN: Code duplicated, block: B:14:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.vk5
    public final h84 a(j84 j84Var, ByteBuffer byteBuffer) {
        int i;
        g84 ip5Var;
        int i2;
        long j;
        long j2;
        long j3;
        boolean z;
        boolean z2;
        boolean z3;
        int iP;
        int iK;
        int iK2;
        long jL;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        int i3;
        int i4;
        int iK3;
        List list;
        long j4;
        long j5;
        long j6;
        boolean z9;
        long j7;
        vx5 vx5Var = this.c;
        if (vx5Var != null) {
            long j8 = j84Var.i;
            synchronized (vx5Var) {
                j7 = vx5Var.b;
            }
            if (j8 != j7) {
                vx5 vx5Var2 = new vx5(j84Var.f);
                this.c = vx5Var2;
                vx5Var2.a(j84Var.f - j84Var.i);
            }
        } else {
            vx5 vx5Var3 = new vx5(j84Var.f);
            this.c = vx5Var3;
            vx5Var3.a(j84Var.f - j84Var.i);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        os4 os4Var = this.a;
        os4Var.a = bArrArray;
        os4Var.c = iLimit;
        int i5 = 0;
        os4Var.b = 0;
        this.b.b(bArrArray, iLimit);
        this.b.c(39);
        long jA = (((long) this.b.a(1)) << 32) | ((long) this.b.a(32));
        this.b.c(20);
        int iA = this.b.a(12);
        int iA2 = this.b.a(8);
        os4 os4Var2 = this.a;
        os4Var2.e(os4Var2.b + 14);
        if (iA2 == 0) {
            i = 0;
            ip5Var = new ip5();
        } else if (iA2 != 255) {
            long j9 = 1;
            long jL2 = C.TIME_UNSET;
            if (iA2 == 4) {
                os4 os4Var3 = this.a;
                int iK4 = os4Var3.k();
                ArrayList arrayList = new ArrayList(iK4);
                int i6 = 0;
                while (i6 < iK4) {
                    long jL3 = os4Var3.l();
                    boolean z10 = (os4Var3.k() & 128) != 0 ? 1 : i5;
                    ArrayList arrayList2 = new ArrayList();
                    if (z10 == 0) {
                        int iK5 = os4Var3.k();
                        int i7 = (iK5 & 128) != 0 ? 1 : i5;
                        int i8 = (iK5 & 64) != 0 ? 1 : i5;
                        int i9 = (iK5 & 32) != 0 ? 1 : i5;
                        long jL4 = i8 != 0 ? os4Var3.l() : -9223372036854775807L;
                        if (i8 == 0) {
                            int iK6 = os4Var3.k();
                            ArrayList arrayList3 = new ArrayList(iK6);
                            int i10 = i5;
                            while (i10 < iK6) {
                                arrayList3.add(new kp5(os4Var3.k(), os4Var3.l()));
                                i10++;
                                i6 = i6;
                                j9 = j9;
                            }
                            arrayList2 = arrayList3;
                        }
                        i2 = i6;
                        j = j9;
                        if (i9 != 0) {
                            long jK = os4Var3.k();
                            z4 = (jK & 128) != 0;
                            jL = ((((jK & j) << 32) | os4Var3.l()) * 1000) / 90;
                        } else {
                            jL = -9223372036854775807L;
                            z4 = false;
                        }
                        j3 = jL;
                        z3 = z4;
                        z = i7;
                        z2 = i8;
                        j2 = jL4;
                        iP = os4Var3.p();
                        iK = os4Var3.k();
                        iK2 = os4Var3.k();
                    } else {
                        i2 = i6;
                        j = j9;
                        j2 = -9223372036854775807L;
                        j3 = -9223372036854775807L;
                        z = 0;
                        z2 = 0;
                        z3 = false;
                        iP = 0;
                        iK = 0;
                        iK2 = 0;
                    }
                    arrayList.add(new lp5(jL3, z10, z, z2, arrayList2, j2, z3, j3, iP, iK, iK2));
                    i6 = i2 + 1;
                    j9 = j;
                    i5 = 0;
                }
                ip5Var = new mp5(arrayList);
                i = 0;
            } else if (iA2 != 5) {
                if (iA2 != 6) {
                    ip5Var = null;
                } else {
                    os4 os4Var4 = this.a;
                    vx5 vx5Var4 = this.c;
                    long jA2 = dx5.a(os4Var4, jA);
                    ip5Var = new dx5(jA2, vx5Var4.b(jA2));
                }
                i = 0;
            } else {
                os4 os4Var5 = this.a;
                vx5 vx5Var5 = this.c;
                long jL5 = os4Var5.l();
                boolean z11 = (os4Var5.k() & 128) != 0;
                List list2 = Collections.EMPTY_LIST;
                if (z11) {
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    z8 = false;
                    i3 = 0;
                    i4 = 0;
                    iK3 = 0;
                    list = list2;
                    j4 = -9223372036854775807L;
                    j5 = -9223372036854775807L;
                } else {
                    int iK7 = os4Var5.k();
                    boolean z12 = (iK7 & 128) != 0;
                    boolean z13 = (iK7 & 64) != 0;
                    boolean z14 = (iK7 & 32) != 0;
                    boolean z15 = (iK7 & 16) != 0;
                    long jA3 = (!z13 || z15) ? -9223372036854775807L : dx5.a(os4Var5, jA);
                    if (z13) {
                        j6 = 90;
                    } else {
                        int iK8 = os4Var5.k();
                        ArrayList arrayList4 = new ArrayList(iK8);
                        j6 = 90;
                        for (int i11 = 0; i11 < iK8; i11++) {
                            int iK9 = os4Var5.k();
                            long jA4 = !z15 ? dx5.a(os4Var5, jA) : -9223372036854775807L;
                            arrayList4.add(new fp5(iK9, jA4, vx5Var5.b(jA4)));
                        }
                        list2 = arrayList4;
                    }
                    if (z14) {
                        long jK2 = os4Var5.k();
                        z9 = (jK2 & 128) != 0;
                        jL2 = ((((jK2 & 1) << 32) | os4Var5.l()) * 1000) / j6;
                    } else {
                        z9 = false;
                    }
                    int iP2 = os4Var5.p();
                    int iK10 = os4Var5.k();
                    z8 = z9;
                    iK3 = os4Var5.k();
                    list = list2;
                    z7 = z15;
                    i3 = iP2;
                    i4 = iK10;
                    j5 = jL2;
                    j4 = jA3;
                    z5 = z12;
                    z6 = z13;
                }
                i = 0;
                ip5Var = new gp5(jL5, z11, z5, z6, z7, j4, vx5Var5.b(j4), list, z8, j5, i3, i4, iK3);
            }
        } else {
            os4 os4Var6 = this.a;
            long jL6 = os4Var6.l();
            int i12 = iA - 4;
            byte[] bArr = new byte[i12];
            i = 0;
            os4Var6.a(bArr, 0, i12);
            ip5Var = new q05(jL6, bArr, jA);
        }
        if (ip5Var == null) {
            return new h84(new g84[i]);
        }
        g84[] g84VarArr = new g84[1];
        g84VarArr[i] = ip5Var;
        return new h84(g84VarArr);
    }
}
