package yads;

import android.util.SparseArray;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class i83 {
    public final k06 a;
    public final boolean b;
    public final boolean c;
    public final ps4 f;
    public byte[] g;
    public int h;
    public int i;
    public long j;
    public long l;
    public long p;
    public long q;
    public boolean r;
    public final SparseArray d = new SparseArray();
    public final SparseArray e = new SparseArray();
    public h83 m = new h83();
    public h83 n = new h83();
    public boolean k = false;
    public boolean o = false;

    public i83(k06 k06Var, boolean z, boolean z2) {
        this.a = k06Var;
        this.b = z;
        this.c = z2;
        byte[] bArr = new byte[128];
        this.g = bArr;
        this.f = new ps4(bArr, 0, 0);
        h83 h83Var = this.n;
        h83Var.b = false;
        h83Var.a = false;
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0108  */
    /* JADX WARN: Code duplicated, block: B:54:0x010a  */
    /* JADX WARN: Code duplicated, block: B:56:0x010d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0117  */
    /* JADX WARN: Code duplicated, block: B:60:0x011e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0123  */
    /* JADX WARN: Code duplicated, block: B:66:0x012e  */
    /* JADX WARN: Code duplicated, block: B:73:0x014e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0152  */
    /* JADX WARN: Code duplicated, block: B:88:0x0186  */
    public final void a(byte[] bArr, int i, int i2) {
        boolean zC;
        boolean zC2;
        boolean z;
        boolean z2;
        int iD;
        int i3;
        int iE;
        int iE2;
        int i4;
        int iB;
        if (this.k) {
            int i5 = i2 - i;
            byte[] bArrCopyOf = this.g;
            int length = bArrCopyOf.length;
            int i6 = this.h + i5;
            if (length < i6) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i6 * 2);
                this.g = bArrCopyOf;
            }
            System.arraycopy(bArr, i, bArrCopyOf, this.h, i5);
            int i7 = this.h + i5;
            this.h = i7;
            ps4 ps4Var = this.f;
            ps4Var.a = this.g;
            int i8 = 0;
            ps4Var.c = 0;
            ps4Var.b = i7;
            ps4Var.d = 0;
            ps4Var.a();
            if (this.f.a(8)) {
                this.f.f();
                int iB2 = this.f.b(2);
                this.f.d(5);
                if (this.f.b()) {
                    this.f.d();
                    if (this.f.b()) {
                        int iD2 = this.f.d();
                        if (!this.c) {
                            this.k = false;
                            h83 h83Var = this.n;
                            h83Var.e = iD2;
                            h83Var.b = true;
                            return;
                        }
                        if (this.f.b()) {
                            int iD3 = this.f.d();
                            if (this.e.indexOfKey(iD3) < 0) {
                                this.k = false;
                                return;
                            }
                            od4 od4Var = (od4) this.e.get(iD3);
                            pd4 pd4Var = (pd4) this.d.get(od4Var.a);
                            if (pd4Var.h) {
                                if (!this.f.a(2)) {
                                    return;
                                } else {
                                    this.f.d(2);
                                }
                            }
                            if (this.f.a(pd4Var.j)) {
                                int iB3 = this.f.b(pd4Var.j);
                                if (!pd4Var.i) {
                                    if (this.f.a(1)) {
                                        zC = this.f.c();
                                        if (!zC) {
                                            zC2 = false;
                                        } else {
                                            if (!this.f.a(1)) {
                                                return;
                                            }
                                            zC2 = this.f.c();
                                            z = true;
                                        }
                                        if (this.i == 5) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            iD = 0;
                                        } else if (!this.f.b()) {
                                            return;
                                        } else {
                                            iD = this.f.d();
                                        }
                                        i3 = pd4Var.k;
                                        if (i3 == 0) {
                                            if (!this.f.a(pd4Var.l)) {
                                                return;
                                            }
                                            iB = this.f.b(pd4Var.l);
                                            if (od4Var.b || zC) {
                                                iE = 0;
                                                i4 = iB;
                                                iE2 = 0;
                                            } else {
                                                if (!this.f.b()) {
                                                    return;
                                                }
                                                iE = this.f.e();
                                                i4 = iB;
                                                iE2 = 0;
                                            }
                                        } else if (i3 == 1 || pd4Var.m) {
                                            iE = 0;
                                            iE2 = 0;
                                            i4 = 0;
                                        } else {
                                            if (!this.f.b()) {
                                                return;
                                            }
                                            int iE3 = this.f.e();
                                            if (!od4Var.b || zC) {
                                                iE = 0;
                                                i4 = 0;
                                                i8 = iE3;
                                                iE2 = 0;
                                            } else {
                                                if (!this.f.b()) {
                                                    return;
                                                }
                                                i4 = 0;
                                                i8 = iE3;
                                                iE2 = this.f.e();
                                                iE = 0;
                                            }
                                        }
                                        h83 h83Var2 = this.n;
                                        h83Var2.c = pd4Var;
                                        h83Var2.d = iB2;
                                        h83Var2.e = iD2;
                                        h83Var2.f = iB3;
                                        h83Var2.g = iD3;
                                        h83Var2.h = zC;
                                        h83Var2.i = z;
                                        h83Var2.j = zC2;
                                        h83Var2.k = z2;
                                        h83Var2.l = iD;
                                        h83Var2.m = i4;
                                        h83Var2.n = iE;
                                        h83Var2.o = i8;
                                        h83Var2.p = iE2;
                                        h83Var2.a = true;
                                        h83Var2.b = true;
                                        this.k = false;
                                    }
                                    return;
                                }
                                zC = false;
                                zC2 = false;
                                z = zC2;
                                if (this.i == 5) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    iD = 0;
                                } else if (!this.f.b()) {
                                    return;
                                } else {
                                    iD = this.f.d();
                                }
                                i3 = pd4Var.k;
                                if (i3 == 0) {
                                    if (!this.f.a(pd4Var.l)) {
                                        return;
                                    }
                                    iB = this.f.b(pd4Var.l);
                                    if (od4Var.b) {
                                        iE = 0;
                                        i4 = iB;
                                        iE2 = 0;
                                    } else {
                                        iE = 0;
                                        i4 = iB;
                                        iE2 = 0;
                                    }
                                } else if (i3 == 1) {
                                    iE = 0;
                                    iE2 = 0;
                                    i4 = 0;
                                } else {
                                    iE = 0;
                                    iE2 = 0;
                                    i4 = 0;
                                }
                                h83 h83Var3 = this.n;
                                h83Var3.c = pd4Var;
                                h83Var3.d = iB2;
                                h83Var3.e = iD2;
                                h83Var3.f = iB3;
                                h83Var3.g = iD3;
                                h83Var3.h = zC;
                                h83Var3.i = z;
                                h83Var3.j = zC2;
                                h83Var3.k = z2;
                                h83Var3.l = iD;
                                h83Var3.m = i4;
                                h83Var3.n = iE;
                                h83Var3.o = i8;
                                h83Var3.p = iE2;
                                h83Var3.a = true;
                                h83Var3.b = true;
                                this.k = false;
                            }
                        }
                    }
                }
            }
        }
    }
}
