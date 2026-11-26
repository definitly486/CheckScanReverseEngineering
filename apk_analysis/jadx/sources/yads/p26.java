package yads;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class p26 implements oh5 {
    public final ns4 a = new ns4(new byte[5]);
    public final SparseArray b = new SparseArray();
    public final SparseIntArray c = new SparseIntArray();
    public final int d;
    public final /* synthetic */ q26 e;

    public p26(q26 q26Var, int i) {
        this.e = q26Var;
        this.d = i;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x014b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0152  */
    /* JADX WARN: Code duplicated, block: B:55:0x015f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0219  */
    @Override // yads.oh5
    public final void a(os4 os4Var) {
        vx5 vx5Var;
        int i;
        int i2;
        u26 u26VarA;
        int i3;
        if (os4Var.k() != 2) {
            return;
        }
        q26 q26Var = this.e;
        int i4 = q26Var.a;
        int i5 = 0;
        if (i4 == 1 || i4 == 2 || q26Var.m == 1) {
            vx5Var = (vx5) q26Var.c.get(0);
        } else {
            vx5Var = new vx5(((vx5) q26Var.c.get(0)).a());
            this.e.c.add(vx5Var);
        }
        if ((os4Var.k() & 128) == 0) {
            return;
        }
        os4Var.e(os4Var.b + 1);
        int iP = os4Var.p();
        int i6 = 3;
        os4Var.e(os4Var.b + 3);
        ns4 ns4Var = this.a;
        os4Var.a(ns4Var.a, 0, 2);
        ns4Var.b(0);
        this.a.c(3);
        int i7 = 13;
        this.e.s = this.a.a(13);
        ns4 ns4Var2 = this.a;
        os4Var.a(ns4Var2.a, 0, 2);
        ns4Var2.b(0);
        int i8 = 4;
        this.a.c(4);
        int i9 = 12;
        os4Var.e(os4Var.b + this.a.a(12));
        q26 q26Var2 = this.e;
        int i10 = 21;
        if (q26Var2.a == 2 && q26Var2.q == null) {
            s26 s26Var = new s26(21, null, null, u56.f);
            q26 q26Var3 = this.e;
            q26Var3.q = q26Var3.f.a(21, s26Var);
            q26 q26Var4 = this.e;
            u26 u26Var = q26Var4.q;
            if (u26Var != null) {
                u26Var.a(vx5Var, q26Var4.l, new t26(iP, 21, 8192));
            }
        }
        this.b.clear();
        this.c.clear();
        int i11 = os4Var.c - os4Var.b;
        while (i11 > 0) {
            ns4 ns4Var3 = this.a;
            int i12 = 5;
            os4Var.a(ns4Var3.a, i5, 5);
            ns4Var3.b(i5);
            int iA = this.a.a(8);
            this.a.c(i6);
            int iA2 = this.a.a(i7);
            this.a.c(i8);
            int iA3 = this.a.a(i9);
            int i13 = os4Var.b;
            int i14 = i13 + iA3;
            int i15 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (true) {
                if (os4Var.b >= i14) {
                    i = i8;
                    break;
                }
                int iK = os4Var.k();
                int iK2 = os4Var.b + os4Var.k();
                if (iK2 > i14) {
                    i = 4;
                    break;
                }
                if (iK == i12) {
                    long jL = os4Var.l();
                    if (jL == 1094921523) {
                        i15 = TsExtractor.TS_STREAM_TYPE_AC3;
                    } else if (jL == 1161904947) {
                        i15 = TsExtractor.TS_STREAM_TYPE_E_AC3;
                    } else if (jL == 1094921524) {
                        i15 = TsExtractor.TS_STREAM_TYPE_AC4;
                    } else if (jL == 1212503619) {
                        i15 = 36;
                    }
                    i3 = 4;
                } else {
                    if (iK == 106) {
                        i15 = TsExtractor.TS_STREAM_TYPE_AC3;
                    } else if (iK == 122) {
                        i15 = TsExtractor.TS_STREAM_TYPE_E_AC3;
                    } else if (iK == 127) {
                        if (os4Var.k() == i10) {
                            i15 = TsExtractor.TS_STREAM_TYPE_AC4;
                        }
                    } else if (iK == 123) {
                        i15 = TsExtractor.TS_STREAM_TYPE_DTS;
                    } else if (iK == 10) {
                        strTrim = os4Var.a(i6, az.c).trim();
                    } else if (iK == 89) {
                        ArrayList arrayList2 = new ArrayList();
                        while (os4Var.b < iK2) {
                            String strTrim2 = os4Var.a(i6, az.c).trim();
                            os4Var.k();
                            byte[] bArr = new byte[4];
                            os4Var.a(bArr, 0, 4);
                            arrayList2.add(new r26(strTrim2, bArr));
                            i6 = 3;
                        }
                        i3 = 4;
                        arrayList = arrayList2;
                        i15 = 89;
                    } else {
                        i3 = 4;
                        if (iK == 111) {
                            i15 = 257;
                        }
                    }
                    i3 = 4;
                }
                int i16 = os4Var.b;
                os4Var.e((iK2 - i16) + i16);
                i8 = i3;
                i12 = 5;
                i6 = 3;
                i10 = 21;
            }
            os4Var.e(i14);
            s26 s26Var2 = new s26(i15, strTrim, arrayList, Arrays.copyOfRange(os4Var.a, i13, i14));
            if (iA == 6 || iA == 5) {
                iA = i15;
            }
            i11 -= iA3 + 5;
            q26 q26Var5 = this.e;
            int i17 = q26Var5.a == 2 ? iA : iA2;
            if (q26Var5.h.get(i17)) {
                i2 = 21;
            } else {
                q26 q26Var6 = this.e;
                if (q26Var6.a == 2) {
                    i2 = 21;
                    if (iA == 21) {
                        u26VarA = q26Var6.q;
                    }
                    if (this.e.a == 2 || iA2 < this.c.get(i17, 8192)) {
                        this.c.put(i17, iA2);
                        this.b.put(i17, u26VarA);
                    }
                } else {
                    i2 = 21;
                }
                u26VarA = q26Var6.f.a(iA, s26Var2);
                if (this.e.a == 2) {
                    this.c.put(i17, iA2);
                    this.b.put(i17, u26VarA);
                } else {
                    this.c.put(i17, iA2);
                    this.b.put(i17, u26VarA);
                }
            }
            i8 = i;
            i10 = i2;
            i5 = 0;
            i6 = 3;
            i7 = 13;
            i9 = 12;
        }
        int size = this.c.size();
        for (int i18 = 0; i18 < size; i18++) {
            int iKeyAt = this.c.keyAt(i18);
            int iValueAt = this.c.valueAt(i18);
            this.e.h.put(iKeyAt, true);
            this.e.i.put(iValueAt, true);
            u26 u26Var2 = (u26) this.b.valueAt(i18);
            if (u26Var2 != null) {
                q26 q26Var7 = this.e;
                if (u26Var2 != q26Var7.q) {
                    u26Var2.a(vx5Var, q26Var7.l, new t26(iP, iKeyAt, 8192));
                }
                this.e.g.put(iValueAt, u26Var2);
            }
        }
        q26 q26Var8 = this.e;
        if (q26Var8.a == 2) {
            if (q26Var8.n) {
                return;
            }
            q26Var8.l.a();
            q26 q26Var9 = this.e;
            q26Var9.m = 0;
            q26Var9.n = true;
            return;
        }
        q26Var8.g.remove(this.d);
        q26 q26Var10 = this.e;
        int i19 = q26Var10.a == 1 ? 0 : q26Var10.m - 1;
        q26Var10.m = i19;
        if (i19 == 0) {
            q26Var10.l.a();
            this.e.n = true;
        }
    }

    @Override // yads.oh5
    public final void a(vx5 vx5Var, zs2 zs2Var, t26 t26Var) {
    }
}
