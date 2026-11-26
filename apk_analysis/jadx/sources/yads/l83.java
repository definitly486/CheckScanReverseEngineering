package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public final class l83 implements zm2 {
    public final ki5 a;
    public String b;
    public k06 c;
    public k83 d;
    public boolean e;
    public long l;
    public final boolean[] f = new boolean[3];
    public final md4 g = new md4(32);
    public final md4 h = new md4(33);
    public final md4 i = new md4(34);
    public final md4 j = new md4(39);
    public final md4 k = new md4(40);
    public long m = C.TIME_UNSET;
    public final os4 n = new os4();

    public l83(ki5 ki5Var) {
        this.a = ki5Var;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x020b  */
    /* JADX WARN: Code duplicated, block: B:103:0x0211  */
    /* JADX WARN: Code duplicated, block: B:105:0x0218  */
    /* JADX WARN: Code duplicated, block: B:107:0x022c  */
    /* JADX WARN: Code duplicated, block: B:110:0x0232 A[LOOP:8: B:109:0x0230->B:110:0x0232, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:112:0x023a  */
    /* JADX WARN: Code duplicated, block: B:113:0x023c  */
    /* JADX WARN: Code duplicated, block: B:118:0x0259  */
    /* JADX WARN: Code duplicated, block: B:121:0x0270 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x0272  */
    /* JADX WARN: Code duplicated, block: B:124:0x0278  */
    /* JADX WARN: Code duplicated, block: B:126:0x0283  */
    /* JADX WARN: Code duplicated, block: B:128:0x0289  */
    /* JADX WARN: Code duplicated, block: B:131:0x0292  */
    /* JADX WARN: Code duplicated, block: B:133:0x02a3 A[LOOP:11: B:132:0x02a1->B:133:0x02a3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:136:0x02af A[LOOP:12: B:135:0x02ad->B:136:0x02af, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:141:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:144:0x02cc A[LOOP:13: B:142:0x02c6->B:144:0x02cc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:147:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:149:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:151:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:155:0x0305  */
    /* JADX WARN: Code duplicated, block: B:157:0x030b  */
    /* JADX WARN: Code duplicated, block: B:158:0x030e  */
    /* JADX WARN: Code duplicated, block: B:161:0x031b  */
    /* JADX WARN: Code duplicated, block: B:164:0x0324  */
    /* JADX WARN: Code duplicated, block: B:166:0x032f  */
    /* JADX WARN: Code duplicated, block: B:169:0x033a  */
    /* JADX WARN: Code duplicated, block: B:172:0x0349  */
    /* JADX WARN: Code duplicated, block: B:174:0x0378  */
    /* JADX WARN: Code duplicated, block: B:177:0x0384  */
    /* JADX WARN: Code duplicated, block: B:178:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:181:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:182:0x03da  */
    /* JADX WARN: Code duplicated, block: B:187:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:210:0x0434  */
    /* JADX WARN: Code duplicated, block: B:215:0x043d  */
    /* JADX WARN: Code duplicated, block: B:218:0x0444  */
    /* JADX WARN: Code duplicated, block: B:228:0x0453 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x013f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:235:0x016d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x028c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:50:0x0131  */
    /* JADX WARN: Code duplicated, block: B:52:0x0137  */
    /* JADX WARN: Code duplicated, block: B:57:0x014c A[LOOP:3: B:55:0x0148->B:57:0x014c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:60:0x015d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0163  */
    /* JADX WARN: Code duplicated, block: B:65:0x016b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0175  */
    /* JADX WARN: Code duplicated, block: B:72:0x0185  */
    /* JADX WARN: Code duplicated, block: B:75:0x0196  */
    /* JADX WARN: Code duplicated, block: B:81:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:91:0x01d7 A[LOOP:5: B:90:0x01d5->B:91:0x01d7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:98:0x0205  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // yads.zm2
    public final void a(os4 os4Var) {
        long j;
        int i;
        long j2;
        boolean z;
        boolean z2;
        boolean z3;
        md4 md4Var;
        md4 md4Var2;
        md4 md4Var3;
        ps4 ps4Var;
        int iB;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        int i6;
        int iD;
        int iD2;
        int iD3;
        int iD4;
        int i7;
        int i8;
        int i9;
        int i10;
        int iD5;
        int i11;
        boolean zC;
        int i12;
        float f;
        int iB2;
        float[] fArr;
        int iB3;
        int iB4;
        int i13;
        int iD6;
        int iD7;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iMin;
        int i19;
        int i20;
        int i21;
        int i22;
        if (this.c == null) {
            defpackage.ud.g();
            return;
        }
        int i23 = u56.a;
        while (true) {
            int i24 = os4Var.c;
            int i25 = os4Var.b;
            int i26 = i24 - i25;
            if (i26 <= 0) {
                return;
            }
            byte[] bArr = os4Var.a;
            this.l += (long) i26;
            this.c.a(i26, os4Var);
            while (i25 < i24) {
                int iA = qd4.a(bArr, i25, i24, this.f);
                if (iA == i24) {
                    a(bArr, i25, i24);
                    return;
                }
                int i27 = iA + 3;
                int i28 = (bArr[i27] & 126) >> 1;
                int i29 = iA - i25;
                if (i29 > 0) {
                    a(bArr, i25, iA);
                }
                int i30 = i24 - iA;
                long j3 = this.l - ((long) i30);
                int i31 = i29 < 0 ? -i29 : 0;
                long j4 = this.m;
                k83 k83Var = this.d;
                boolean z4 = this.e;
                if (k83Var.j && k83Var.g) {
                    k83Var.m = k83Var.c;
                    k83Var.j = false;
                } else {
                    if (k83Var.h || k83Var.g) {
                        if (z4 && k83Var.i) {
                            j = j4;
                            long j5 = k83Var.b;
                            i = i31;
                            int i32 = i30 + ((int) (j3 - j5));
                            long j6 = k83Var.l;
                            if (j6 != C.TIME_UNSET) {
                                k83Var.a.a(j6, k83Var.m ? 1 : 0, (int) (j5 - k83Var.k), i32, null);
                            }
                        } else {
                            j = j4;
                            i = i31;
                        }
                        k83Var.k = k83Var.b;
                        k83Var.l = k83Var.e;
                        k83Var.m = k83Var.c;
                        k83Var.i = true;
                    }
                    if (!this.e) {
                        this.g.a(i);
                        this.h.a(i);
                        this.i.a(i);
                        md4Var = this.g;
                        if (md4Var.c) {
                            md4Var2 = this.h;
                            if (md4Var2.c) {
                                md4Var3 = this.i;
                                if (md4Var3.c) {
                                    k06 k06Var = this.c;
                                    String str = this.b;
                                    int i33 = md4Var.e;
                                    byte[] bArr2 = new byte[md4Var2.e + i33 + md4Var3.e];
                                    System.arraycopy(md4Var.d, 0, bArr2, 0, i33);
                                    System.arraycopy(md4Var2.d, 0, bArr2, md4Var.e, md4Var2.e);
                                    System.arraycopy(md4Var3.d, 0, bArr2, md4Var.e + md4Var2.e, md4Var3.e);
                                    ps4Var = new ps4(md4Var2.d, 0, md4Var2.e);
                                    ps4Var.d(44);
                                    iB = ps4Var.b(3);
                                    ps4Var.f();
                                    int iB5 = ps4Var.b(2);
                                    boolean zC2 = ps4Var.c();
                                    int iB6 = ps4Var.b(5);
                                    i3 = 0;
                                    for (i2 = 0; i2 < 32; i2++) {
                                        if (ps4Var.c()) {
                                            i3 |= 1 << i2;
                                        }
                                    }
                                    iArr = new int[6];
                                    for (i4 = 0; i4 < 6; i4++) {
                                        iArr[i4] = ps4Var.b(8);
                                    }
                                    int iB7 = ps4Var.b(8);
                                    i5 = 0;
                                    for (i6 = 0; i6 < iB; i6++) {
                                        if (ps4Var.c()) {
                                            i5 += 89;
                                        }
                                        if (ps4Var.c()) {
                                            i5 += 8;
                                        }
                                    }
                                    ps4Var.d(i5);
                                    if (iB > 0) {
                                        ps4Var.d((8 - iB) * 2);
                                    }
                                    ps4Var.d();
                                    iD = ps4Var.d();
                                    if (iD == 3) {
                                        ps4Var.f();
                                    }
                                    iD2 = ps4Var.d();
                                    iD3 = ps4Var.d();
                                    if (ps4Var.c()) {
                                        int iD8 = ps4Var.d();
                                        int iD9 = ps4Var.d();
                                        int iD10 = ps4Var.d();
                                        int iD11 = ps4Var.d();
                                        if (iD != 1 || iD == 2) {
                                            i21 = 2;
                                        } else {
                                            i21 = 1;
                                        }
                                        if (iD == 1) {
                                            i22 = 2;
                                        } else {
                                            i22 = 1;
                                        }
                                        iD2 -= (iD8 + iD9) * i21;
                                        iD3 -= (iD10 + iD11) * i22;
                                    }
                                    ps4Var.d();
                                    ps4Var.d();
                                    iD4 = ps4Var.d();
                                    if (ps4Var.c()) {
                                        i7 = 0;
                                    } else {
                                        i7 = iB;
                                    }
                                    while (i7 <= iB) {
                                        ps4Var.d();
                                        ps4Var.d();
                                        ps4Var.d();
                                        i7++;
                                    }
                                    ps4Var.d();
                                    ps4Var.d();
                                    ps4Var.d();
                                    ps4Var.d();
                                    ps4Var.d();
                                    ps4Var.d();
                                    i8 = 4;
                                    if (ps4Var.c() && ps4Var.c()) {
                                        i17 = 0;
                                        while (i17 < i8) {
                                            int i34 = i8;
                                            i18 = 0;
                                            while (i18 < 6) {
                                                if (ps4Var.c()) {
                                                    iMin = Math.min(64, 1 << ((i17 << 1) + 4));
                                                    if (i17 > 1) {
                                                        ps4Var.e();
                                                    }
                                                    for (i19 = 0; i19 < iMin; i19++) {
                                                        ps4Var.e();
                                                    }
                                                } else {
                                                    ps4Var.d();
                                                }
                                                if (i17 == 3) {
                                                    i20 = 3;
                                                } else {
                                                    i20 = 1;
                                                }
                                                i18 += i20;
                                                iD4 = iD4;
                                            }
                                            i17++;
                                            i8 = i34;
                                            iD4 = iD4;
                                        }
                                    }
                                    i9 = iD4;
                                    i10 = i8;
                                    ps4Var.d(2);
                                    if (ps4Var.c()) {
                                        ps4Var.d(8);
                                        ps4Var.d();
                                        ps4Var.d();
                                        ps4Var.f();
                                    }
                                    i11 = 0;
                                    zC = false;
                                    i12 = 0;
                                    for (iD5 = ps4Var.d(); i11 < iD5; iD5 = iD5) {
                                        if (i11 != 0) {
                                            zC = ps4Var.c();
                                        }
                                        if (zC) {
                                            ps4Var.f();
                                            ps4Var.d();
                                            for (i16 = 0; i16 <= i12; i16++) {
                                                if (ps4Var.c()) {
                                                    ps4Var.f();
                                                }
                                            }
                                        } else {
                                            iD6 = ps4Var.d();
                                            iD7 = ps4Var.d();
                                            int i35 = iD6 + iD7;
                                            for (i14 = 0; i14 < iD6; i14++) {
                                                ps4Var.d();
                                                ps4Var.f();
                                            }
                                            for (i15 = 0; i15 < iD7; i15++) {
                                                ps4Var.d();
                                                ps4Var.f();
                                            }
                                            i12 = i35;
                                        }
                                        i11++;
                                    }
                                    if (ps4Var.c()) {
                                        for (i13 = 0; i13 < ps4Var.d(); i13++) {
                                            ps4Var.d(i9 + 5);
                                        }
                                    }
                                    ps4Var.d(2);
                                    f = 1.0f;
                                    if (ps4Var.c()) {
                                        if (ps4Var.c()) {
                                            iB2 = ps4Var.b(8);
                                            if (iB2 == 255) {
                                                iB3 = ps4Var.b(16);
                                                iB4 = ps4Var.b(16);
                                                if (iB3 != 0 && iB4 != 0) {
                                                    f = iB3 / iB4;
                                                }
                                            } else {
                                                fArr = qd4.b;
                                                if (iB2 < 17) {
                                                    f = fArr[iB2];
                                                } else {
                                                    qt3.a(iB2, "Unexpected aspect_ratio_idc value: ", "H265Reader");
                                                }
                                            }
                                        }
                                        if (ps4Var.c()) {
                                            ps4Var.f();
                                        }
                                        if (ps4Var.c()) {
                                            ps4Var.d(i10);
                                            if (ps4Var.c()) {
                                                ps4Var.d(24);
                                            }
                                        }
                                        if (ps4Var.c()) {
                                            ps4Var.d();
                                            ps4Var.d();
                                        }
                                        ps4Var.f();
                                        if (ps4Var.c()) {
                                            iD3 *= 2;
                                        }
                                    }
                                    String strA = g20.a(iB5, zC2, iB6, i3, iArr, iB7);
                                    uz2 uz2Var = new uz2();
                                    uz2Var.a = str;
                                    uz2Var.k = MimeTypes.VIDEO_H265;
                                    uz2Var.h = strA;
                                    uz2Var.p = iD2;
                                    uz2Var.q = iD3;
                                    uz2Var.t = f;
                                    uz2Var.m = Collections.singletonList(bArr2);
                                    k06Var.a(new vz2(uz2Var));
                                    this.e = true;
                                }
                            }
                        }
                    }
                    if (this.j.a(i)) {
                        md4 md4Var4 = this.j;
                        int iA2 = qd4.a(md4Var4.d, md4Var4.e);
                        os4 os4Var2 = this.n;
                        os4Var2.a = this.j.d;
                        os4Var2.c = iA2;
                        os4Var2.b = 0;
                        os4Var2.e(5);
                        j2 = j;
                        ry.a(j2, this.n, this.a.b);
                    } else {
                        j2 = j;
                    }
                    if (this.k.a(i)) {
                        md4 md4Var5 = this.k;
                        int iA3 = qd4.a(md4Var5.d, md4Var5.e);
                        os4 os4Var3 = this.n;
                        os4Var3.a = this.k.d;
                        os4Var3.c = iA3;
                        z = false;
                        os4Var3.b = 0;
                        os4Var3.e(5);
                        ry.a(j2, this.n, this.a.b);
                    } else {
                        z = false;
                    }
                    long j7 = this.m;
                    k83 k83Var2 = this.d;
                    boolean z5 = this.e;
                    k83Var2.g = z;
                    k83Var2.h = z;
                    k83Var2.e = j7;
                    k83Var2.d = z ? 1 : 0;
                    k83Var2.b = j3;
                    if (i28 >= 32 || i28 == 40) {
                        z2 = true;
                    } else {
                        if (k83Var2.i && !k83Var2.j) {
                            if (z5) {
                                long j8 = k83Var2.l;
                                if (j8 != C.TIME_UNSET) {
                                    k83Var2.a.a(j8, k83Var2.m ? 1 : 0, (int) (j3 - k83Var2.k), i30, null);
                                }
                            }
                            k83Var2.i = z;
                        }
                        if ((32 > i28 || i28 > 35) && i28 != 39) {
                            z2 = true;
                        } else {
                            z2 = true;
                            k83Var2.h = !k83Var2.j;
                            k83Var2.j = true;
                        }
                    }
                    if (i28 >= 16 || i28 > 21) {
                        z3 = z ? 1 : 0;
                    } else {
                        z3 = z2;
                    }
                    k83Var2.c = z3;
                    if (z3 || i28 <= 9) {
                        z = z2;
                    }
                    k83Var2.f = z;
                    if (!this.e) {
                        this.g.b(i28);
                        this.h.b(i28);
                        this.i.b(i28);
                    }
                    this.j.b(i28);
                    this.k.b(i28);
                    bArr = bArr;
                    i25 = i27;
                    i24 = i24;
                }
                i24 = i24;
                j = j4;
                i = i31;
                if (!this.e) {
                    this.g.a(i);
                    this.h.a(i);
                    this.i.a(i);
                    md4Var = this.g;
                    if (md4Var.c) {
                        md4Var2 = this.h;
                        if (md4Var2.c) {
                            md4Var3 = this.i;
                            if (md4Var3.c) {
                                k06 k06Var2 = this.c;
                                String str2 = this.b;
                                int i36 = md4Var.e;
                                byte[] bArr3 = new byte[md4Var2.e + i36 + md4Var3.e];
                                System.arraycopy(md4Var.d, 0, bArr3, 0, i36);
                                System.arraycopy(md4Var2.d, 0, bArr3, md4Var.e, md4Var2.e);
                                System.arraycopy(md4Var3.d, 0, bArr3, md4Var.e + md4Var2.e, md4Var3.e);
                                ps4Var = new ps4(md4Var2.d, 0, md4Var2.e);
                                ps4Var.d(44);
                                iB = ps4Var.b(3);
                                ps4Var.f();
                                int iB8 = ps4Var.b(2);
                                boolean zC3 = ps4Var.c();
                                int iB9 = ps4Var.b(5);
                                i3 = 0;
                                while (i2 < 32) {
                                    if (ps4Var.c()) {
                                        i3 |= 1 << i2;
                                    }
                                }
                                iArr = new int[6];
                                while (i4 < 6) {
                                    iArr[i4] = ps4Var.b(8);
                                }
                                int iB10 = ps4Var.b(8);
                                i5 = 0;
                                while (i6 < iB) {
                                    if (ps4Var.c()) {
                                        i5 += 89;
                                    }
                                    if (ps4Var.c()) {
                                        i5 += 8;
                                    }
                                }
                                ps4Var.d(i5);
                                if (iB > 0) {
                                    ps4Var.d((8 - iB) * 2);
                                }
                                ps4Var.d();
                                iD = ps4Var.d();
                                if (iD == 3) {
                                    ps4Var.f();
                                }
                                iD2 = ps4Var.d();
                                iD3 = ps4Var.d();
                                if (ps4Var.c()) {
                                    int iD12 = ps4Var.d();
                                    int iD13 = ps4Var.d();
                                    int iD14 = ps4Var.d();
                                    int iD15 = ps4Var.d();
                                    if (iD != 1) {
                                        i21 = 2;
                                    } else {
                                        i21 = 2;
                                    }
                                    if (iD == 1) {
                                        i22 = 2;
                                    } else {
                                        i22 = 1;
                                    }
                                    iD2 -= (iD12 + iD13) * i21;
                                    iD3 -= (iD14 + iD15) * i22;
                                }
                                ps4Var.d();
                                ps4Var.d();
                                iD4 = ps4Var.d();
                                if (ps4Var.c()) {
                                    i7 = 0;
                                } else {
                                    i7 = iB;
                                }
                                while (i7 <= iB) {
                                    ps4Var.d();
                                    ps4Var.d();
                                    ps4Var.d();
                                    i7++;
                                }
                                ps4Var.d();
                                ps4Var.d();
                                ps4Var.d();
                                ps4Var.d();
                                ps4Var.d();
                                ps4Var.d();
                                i8 = 4;
                                if (ps4Var.c()) {
                                    i17 = 0;
                                    while (i17 < i8) {
                                        int i37 = i8;
                                        i18 = 0;
                                        while (i18 < 6) {
                                            if (ps4Var.c()) {
                                                ps4Var.d();
                                            } else {
                                                iMin = Math.min(64, 1 << ((i17 << 1) + 4));
                                                if (i17 > 1) {
                                                    ps4Var.e();
                                                }
                                                while (i19 < iMin) {
                                                    ps4Var.e();
                                                }
                                            }
                                            if (i17 == 3) {
                                                i20 = 3;
                                            } else {
                                                i20 = 1;
                                            }
                                            i18 += i20;
                                            iD4 = iD4;
                                        }
                                        i17++;
                                        i8 = i37;
                                        iD4 = iD4;
                                    }
                                }
                                i9 = iD4;
                                i10 = i8;
                                ps4Var.d(2);
                                if (ps4Var.c()) {
                                    ps4Var.d(8);
                                    ps4Var.d();
                                    ps4Var.d();
                                    ps4Var.f();
                                }
                                i11 = 0;
                                zC = false;
                                i12 = 0;
                                while (i11 < iD5) {
                                    if (i11 != 0) {
                                        zC = ps4Var.c();
                                    }
                                    if (zC) {
                                        ps4Var.f();
                                        ps4Var.d();
                                        while (i16 <= i12) {
                                            if (ps4Var.c()) {
                                                ps4Var.f();
                                            }
                                        }
                                    } else {
                                        iD6 = ps4Var.d();
                                        iD7 = ps4Var.d();
                                        int i38 = iD6 + iD7;
                                        while (i14 < iD6) {
                                            ps4Var.d();
                                            ps4Var.f();
                                        }
                                        while (i15 < iD7) {
                                            ps4Var.d();
                                            ps4Var.f();
                                        }
                                        i12 = i38;
                                    }
                                    i11++;
                                }
                                if (ps4Var.c()) {
                                    while (i13 < ps4Var.d()) {
                                        ps4Var.d(i9 + 5);
                                    }
                                }
                                ps4Var.d(2);
                                f = 1.0f;
                                if (ps4Var.c()) {
                                    if (ps4Var.c()) {
                                        iB2 = ps4Var.b(8);
                                        if (iB2 == 255) {
                                            iB3 = ps4Var.b(16);
                                            iB4 = ps4Var.b(16);
                                            if (iB3 != 0) {
                                                f = iB3 / iB4;
                                            }
                                        } else {
                                            fArr = qd4.b;
                                            if (iB2 < 17) {
                                                f = fArr[iB2];
                                            } else {
                                                qt3.a(iB2, "Unexpected aspect_ratio_idc value: ", "H265Reader");
                                            }
                                        }
                                    }
                                    if (ps4Var.c()) {
                                        ps4Var.f();
                                    }
                                    if (ps4Var.c()) {
                                        ps4Var.d(i10);
                                        if (ps4Var.c()) {
                                            ps4Var.d(24);
                                        }
                                    }
                                    if (ps4Var.c()) {
                                        ps4Var.d();
                                        ps4Var.d();
                                    }
                                    ps4Var.f();
                                    if (ps4Var.c()) {
                                        iD3 *= 2;
                                    }
                                }
                                String strA2 = g20.a(iB8, zC3, iB9, i3, iArr, iB10);
                                uz2 uz2Var2 = new uz2();
                                uz2Var2.a = str2;
                                uz2Var2.k = MimeTypes.VIDEO_H265;
                                uz2Var2.h = strA2;
                                uz2Var2.p = iD2;
                                uz2Var2.q = iD3;
                                uz2Var2.t = f;
                                uz2Var2.m = Collections.singletonList(bArr3);
                                k06Var2.a(new vz2(uz2Var2));
                                this.e = true;
                            }
                        }
                    }
                }
                if (this.j.a(i)) {
                    md4 md4Var6 = this.j;
                    int iA4 = qd4.a(md4Var6.d, md4Var6.e);
                    os4 os4Var4 = this.n;
                    os4Var4.a = this.j.d;
                    os4Var4.c = iA4;
                    os4Var4.b = 0;
                    os4Var4.e(5);
                    j2 = j;
                    ry.a(j2, this.n, this.a.b);
                } else {
                    j2 = j;
                }
                if (this.k.a(i)) {
                    md4 md4Var7 = this.k;
                    int iA5 = qd4.a(md4Var7.d, md4Var7.e);
                    os4 os4Var5 = this.n;
                    os4Var5.a = this.k.d;
                    os4Var5.c = iA5;
                    z = false;
                    os4Var5.b = 0;
                    os4Var5.e(5);
                    ry.a(j2, this.n, this.a.b);
                } else {
                    z = false;
                }
                long j9 = this.m;
                k83 k83Var3 = this.d;
                boolean z6 = this.e;
                k83Var3.g = z;
                k83Var3.h = z;
                k83Var3.e = j9;
                k83Var3.d = z ? 1 : 0;
                k83Var3.b = j3;
                if (i28 >= 32) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (i28 >= 16) {
                    z3 = z ? 1 : 0;
                } else {
                    z3 = z ? 1 : 0;
                }
                k83Var3.c = z3;
                if (z3) {
                    z = z2;
                } else {
                    z = z2;
                }
                k83Var3.f = z;
                if (!this.e) {
                    this.g.b(i28);
                    this.h.b(i28);
                    this.i.b(i28);
                }
                this.j.b(i28);
                this.k.b(i28);
                bArr = bArr;
                i25 = i27;
                i24 = i24;
            }
        }
    }

    @Override // yads.zm2
    public final void b() {
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        t26Var.a();
        t26Var.b();
        this.b = t26Var.e;
        t26Var.b();
        k06 k06VarA = zs2Var.a(t26Var.d, 2);
        this.c = k06VarA;
        this.d = new k83(k06VarA);
        this.a.a(zs2Var, t26Var);
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
    }

    public final void a(byte[] bArr, int i, int i2) {
        k83 k83Var = this.d;
        if (k83Var.f) {
            int i3 = k83Var.d;
            int i4 = (i + 2) - i3;
            if (i4 < i2) {
                k83Var.g = (bArr[i4] & 128) != 0;
                k83Var.f = false;
            } else {
                k83Var.d = (i2 - i) + i3;
            }
        }
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // yads.zm2
    public final void a() {
        this.l = 0L;
        this.m = C.TIME_UNSET;
        qd4.a(this.f);
        md4 md4Var = this.g;
        md4Var.b = false;
        md4Var.c = false;
        md4 md4Var2 = this.h;
        md4Var2.b = false;
        md4Var2.c = false;
        md4 md4Var3 = this.i;
        md4Var3.b = false;
        md4Var3.c = false;
        md4 md4Var4 = this.j;
        md4Var4.b = false;
        md4Var4.c = false;
        md4 md4Var5 = this.k;
        md4Var5.b = false;
        md4Var5.c = false;
        k83 k83Var = this.d;
        if (k83Var != null) {
            k83Var.f = false;
            k83Var.g = false;
            k83Var.h = false;
            k83Var.i = false;
            k83Var.j = false;
        }
    }
}
