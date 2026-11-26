package yads;

import android.util.Pair;
import android.util.SparseArray;
import androidx.collection.SieveCacheKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.ts.PsExtractor;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class f03 implements ws2 {
    public static final byte[] G = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final vz2 H;
    public int A;
    public boolean B;
    public zs2 C;
    public k06[] D;
    public k06[] E;
    public boolean F;
    public final int a;
    public final List b;
    public final SparseArray c;
    public final os4 d;
    public final os4 e;
    public final os4 f;
    public final byte[] g;
    public final os4 h;
    public final gp2 i;
    public final os4 j;
    public final ArrayDeque k;
    public final ArrayDeque l;
    public final k06 m;
    public int n;
    public int o;
    public long p;
    public int q;
    public os4 r;
    public long s;
    public int t;
    public long u;
    public long v;
    public long w;
    public e03 x;
    public int y;
    public int z;

    static {
        uz2 uz2Var = new uz2();
        uz2Var.k = MimeTypes.APPLICATION_EMSG;
        H = new vz2(uz2Var);
    }

    public f03(int i, List list, k06 k06Var) {
        this.a = i;
        this.b = Collections.unmodifiableList(list);
        this.m = k06Var;
        this.i = new gp2();
        this.j = new os4(16);
        this.d = new os4(qd4.a);
        this.e = new os4(5);
        this.f = new os4();
        byte[] bArr = new byte[16];
        this.g = bArr;
        this.h = new os4(bArr);
        this.k = new ArrayDeque();
        this.l = new ArrayDeque();
        this.c = new SparseArray();
        this.v = C.TIME_UNSET;
        this.u = C.TIME_UNSET;
        this.w = C.TIME_UNSET;
        this.C = zs2.a;
        this.D = new k06[0];
        this.E = new k06[0];
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0227  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v13, types: [yads.wk0] */
    /* JADX WARN: Type inference failed for: r14v14, types: [yads.os4] */
    /* JADX WARN: Type inference failed for: r14v18, types: [yads.os4] */
    /* JADX WARN: Type inference failed for: r14v8, types: [yads.wk0] */
    /* JADX WARN: Type inference failed for: r26v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r6v21, types: [yads.k06] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v10, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v43 */
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
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        ?? r9;
        String strH;
        String strH2;
        long jA;
        long jL;
        long j;
        long j2;
        long jO;
        long jO2;
        e03 e03Var;
        char c;
        int i;
        int i2;
        int i3;
        int iA;
        boolean z;
        boolean z2;
        int i4;
        int i5;
        int iA2;
        int i6;
        loop0: while (true) {
            while (true) {
                int i7 = this.n;
                char c2 = 2;
                int i8 = 1;
                r9 = 0;
                if (i7 == 0) {
                    if (this.q == 0) {
                        if (!((wk0) xs2Var).a(this.j.a, 0, 8, true)) {
                            return -1;
                        }
                        this.q = 8;
                        this.j.e(0);
                        this.p = this.j.l();
                        this.o = this.j.a();
                    }
                    long j3 = this.p;
                    if (j3 == 1) {
                        ((wk0) xs2Var).a(this.j.a, 8, 8, false);
                        this.q += 8;
                        this.p = this.j.o();
                    } else if (j3 == 0) {
                        wk0 wk0Var = (wk0) xs2Var;
                        long j4 = wk0Var.c;
                        if (j4 == -1 && !this.k.isEmpty()) {
                            j4 = ((jl) this.k.peek()).b;
                        }
                        if (j4 != -1) {
                            this.p = (j4 - wk0Var.d) + ((long) this.q);
                        }
                    }
                    long j5 = this.p;
                    long j6 = this.q;
                    if (j5 < j6) {
                        throw xs4.a("Atom size less than header length (unsupported).");
                    }
                    wk0 wk0Var2 = (wk0) xs2Var;
                    long j7 = wk0Var2.d - j6;
                    int i9 = this.o;
                    if ((i9 == 1836019558 || i9 == 1835295092) && !this.F) {
                        this.C.a(new rh5(this.v, j7));
                        this.F = true;
                    }
                    if (this.o == 1836019558) {
                        int size = this.c.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            e06 e06Var = ((e03) this.c.valueAt(i10)).b;
                            e06Var.getClass();
                            e06Var.c = j7;
                            e06Var.b = j7;
                        }
                    }
                    int i11 = this.o;
                    if (i11 == 1835295092) {
                        this.x = null;
                        this.s = j7 + this.p;
                        this.n = 2;
                        break;
                    }
                    if (i11 == 1836019574 || i11 == 1953653099 || i11 == 1835297121 || i11 == 1835626086 || i11 == 1937007212 || i11 == 1836019558 || i11 == 1953653094 || i11 == 1836475768 || i11 == 1701082227) {
                        long j8 = (wk0Var2.d + this.p) - 8;
                        this.k.push(new jl(i11, j8));
                        if (this.p != this.q) {
                            this.n = 0;
                            this.q = 0;
                            break;
                        }
                        a(j8);
                        break;
                    }
                    if (i11 != 1751411826 && i11 != 1835296868 && i11 != 1836476516 && i11 != 1936286840 && i11 != 1937011556 && i11 != 1937011827 && i11 != 1668576371 && i11 != 1937011555 && i11 != 1937011578 && i11 != 1937013298 && i11 != 1937007471 && i11 != 1668232756 && i11 != 1937011571 && i11 != 1952867444 && i11 != 1952868452 && i11 != 1953196132 && i11 != 1953654136 && i11 != 1953658222 && i11 != 1886614376 && i11 != 1935763834 && i11 != 1935763823 && i11 != 1936027235 && i11 != 1970628964 && i11 != 1935828848 && i11 != 1936158820 && i11 != 1701606260 && i11 != 1835362404 && i11 != 1701671783) {
                        if (this.p > SieveCacheKt.NodeLinkMask) {
                            throw xs4.a("Skipping atom with length > 2147483647 (unsupported).");
                        }
                        this.r = null;
                        this.n = 1;
                        break;
                    }
                    if (this.q != 8) {
                        throw xs4.a("Leaf atom defines extended atom size (unsupported).");
                    }
                    long j9 = this.p;
                    if (j9 > SieveCacheKt.NodeLinkMask) {
                        throw xs4.a("Leaf atom with length > 2147483647 (unsupported).");
                    }
                    os4 os4Var = new os4((int) j9);
                    System.arraycopy(this.j.a, 0, os4Var.a, 0, 8);
                    this.r = os4Var;
                    this.n = 1;
                    break;
                }
                if (i7 == 1) {
                    int i12 = ((int) this.p) - this.q;
                    os4 os4Var2 = this.r;
                    if (os4Var2 != null) {
                        wk0 wk0Var3 = (wk0) xs2Var;
                        wk0Var3.a(os4Var2.a, 8, i12, false);
                        int i13 = this.o;
                        kl klVar = new kl(i13, os4Var2);
                        long j10 = wk0Var3.d;
                        if (!this.k.isEmpty()) {
                            ((jl) this.k.peek()).c.add(klVar);
                        } else if (i13 == 1936286840) {
                            os4Var2.e(8);
                            int iA3 = (os4Var2.a() >> 24) & 255;
                            os4Var2.e(os4Var2.b + 4);
                            long jL2 = os4Var2.l();
                            if (iA3 == 0) {
                                jO = os4Var2.l();
                                jO2 = os4Var2.l();
                            } else {
                                jO = os4Var2.o();
                                jO2 = os4Var2.o();
                            }
                            long j11 = jO2 + j10;
                            long j12 = jO;
                            long j13 = j11;
                            long jA2 = u56.a(j12, 1000000L, jL2);
                            os4Var2.e(os4Var2.b + 2);
                            int iP = os4Var2.p();
                            int[] iArr = new int[iP];
                            long[] jArr = new long[iP];
                            long[] jArr2 = new long[iP];
                            long j14 = jA2;
                            long[] jArr3 = new long[iP];
                            int i14 = 0;
                            while (i14 < iP) {
                                int iA4 = os4Var2.a();
                                if ((iA4 & Integer.MIN_VALUE) != 0) {
                                    defpackage.e2.h("Unhandled indirect reference", null);
                                    return 0;
                                }
                                long jL3 = os4Var2.l();
                                iArr[i14] = iA4 & Integer.MAX_VALUE;
                                jArr3[i14] = j13;
                                jArr2[i14] = j14;
                                j12 += jL3;
                                int i15 = i14;
                                long[] jArr4 = jArr;
                                long jA3 = u56.a(j12, 1000000L, jL2);
                                jArr4[i15] = jA3 - jArr2[i15];
                                os4Var2.e(os4Var2.b + 4);
                                i14 = i15 + 1;
                                j14 = jA3;
                                jArr = jArr4;
                                j13 += (long) iArr[i15];
                                iP = iP;
                                jArr3 = jArr3;
                            }
                            Pair pairCreate = Pair.create(Long.valueOf(jA2), new gz(iArr, jArr3, jArr, jArr2));
                            this.w = ((Long) pairCreate.first).longValue();
                            this.C.a((sh5) pairCreate.second);
                            this.F = true;
                        } else if (i13 == 1701671783 && this.D.length != 0) {
                            os4Var2.e(8);
                            int iA5 = (os4Var2.a() >> 24) & 255;
                            if (iA5 == 0) {
                                strH = os4Var2.h();
                                strH.getClass();
                                strH2 = os4Var2.h();
                                strH2.getClass();
                                long jL4 = os4Var2.l();
                                jA = u56.a(os4Var2.l(), 1000000L, jL4);
                                long j15 = this.w;
                                long j16 = j15 != C.TIME_UNSET ? j15 + jA : -9223372036854775807L;
                                long jA4 = u56.a(os4Var2.l(), 1000L, jL4);
                                jL = os4Var2.l();
                                j = jA4;
                                j2 = j16;
                            } else if (iA5 != 1) {
                                qt3.a(iA5, "Skipping unsupported emsg version: ", "FragmentedMp4Extractor");
                            } else {
                                long jL5 = os4Var2.l();
                                long jA5 = u56.a(os4Var2.o(), 1000000L, jL5);
                                long jA6 = u56.a(os4Var2.l(), 1000L, jL5);
                                jL = os4Var2.l();
                                strH = os4Var2.h();
                                strH.getClass();
                                strH2 = os4Var2.h();
                                strH2.getClass();
                                jA = -9223372036854775807L;
                                j = jA6;
                                j2 = jA5;
                            }
                            String str = strH;
                            String str2 = strH2;
                            long j17 = jL;
                            int i16 = os4Var2.c - os4Var2.b;
                            byte[] bArr = new byte[i16];
                            os4Var2.a(bArr, 0, i16);
                            os4 os4Var3 = new os4(this.i.a(new ep2(str, str2, j, j17, bArr)));
                            int i17 = os4Var3.c - os4Var3.b;
                            for (k06 k06Var : this.D) {
                                os4Var3.e(0);
                                k06Var.a(i17, os4Var3);
                            }
                            ArrayDeque arrayDeque = this.l;
                            if (j2 == C.TIME_UNSET) {
                                arrayDeque.addLast(new d03(jA, true, i17));
                                this.t += i17;
                            } else if (arrayDeque.isEmpty()) {
                                for (k06 k06Var2 : this.D) {
                                    k06Var2.a(j2, 1, i17, 0, null);
                                }
                            } else {
                                this.l.addLast(new d03(j2, false, i17));
                                this.t += i17;
                            }
                        }
                    } else {
                        ((wk0) xs2Var).a(i12);
                    }
                    a(((wk0) xs2Var).d);
                    break;
                }
                long j18 = Long.MAX_VALUE;
                if (i7 != 2) {
                    e03Var = this.x;
                    if (e03Var != null) {
                        c = 2;
                        i = 1;
                        i2 = 8;
                        break loop0;
                    }
                    SparseArray sparseArray = this.c;
                    int size2 = sparseArray.size();
                    long j19 = Long.MAX_VALUE;
                    e03 e03Var2 = null;
                    int i18 = 0;
                    while (i18 < size2) {
                        char c3 = c2;
                        e03 e03Var3 = (e03) sparseArray.valueAt(i18);
                        boolean z3 = e03Var3.l;
                        if (z3) {
                            i6 = i8;
                        } else {
                            i6 = i8;
                            if (e03Var3.f != e03Var3.d.b) {
                            }
                            i18++;
                            c2 = c3;
                            i8 = i6;
                        }
                        if (!z3 || e03Var3.h != e03Var3.b.d) {
                            long j20 = !z3 ? e03Var3.d.c[e03Var3.f] : e03Var3.b.f[e03Var3.h];
                            if (j20 < j19) {
                                e03Var2 = e03Var3;
                                j19 = j20;
                            }
                        }
                        i18++;
                        c2 = c3;
                        i8 = i6;
                    }
                    c = c2;
                    i = i8;
                    i2 = 8;
                    if (e03Var2 != null) {
                        wk0 wk0Var4 = (wk0) xs2Var;
                        int i19 = (int) ((!e03Var2.l ? e03Var2.d.c[e03Var2.f] : e03Var2.b.f[e03Var2.h]) - wk0Var4.d);
                        if (i19 < 0) {
                            sv3.d("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                            i19 = 0;
                        }
                        wk0Var4.a(i19);
                        this.x = e03Var2;
                        e03Var = e03Var2;
                        break loop0;
                    }
                    wk0 wk0Var5 = (wk0) xs2Var;
                    int i20 = (int) (this.s - wk0Var5.d);
                    if (i20 < 0) {
                        defpackage.e2.h("Offset to end of mdat was negative.", null);
                        return 0;
                    }
                    wk0Var5.a(i20);
                    this.n = 0;
                    this.q = 0;
                } else {
                    int size3 = this.c.size();
                    e03 e03Var4 = null;
                    for (int i21 = 0; i21 < size3; i21++) {
                        e06 e06Var2 = ((e03) this.c.valueAt(i21)).b;
                        if (e06Var2.o) {
                            long j21 = e06Var2.c;
                            if (j21 < j18) {
                                e03Var4 = (e03) this.c.valueAt(i21);
                                j18 = j21;
                            }
                        }
                    }
                    if (e03Var4 == null) {
                        this.n = 3;
                    } else {
                        wk0 wk0Var6 = (wk0) xs2Var;
                        int i22 = (int) (j18 - wk0Var6.d);
                        if (i22 < 0) {
                            defpackage.e2.h("Offset to encryption data was negative.", null);
                            return 0;
                        }
                        wk0Var6.a(i22);
                        e06 e06Var3 = e03Var4.b;
                        os4 os4Var4 = e06Var3.n;
                        wk0Var6.a(os4Var4.a, 0, os4Var4.c, false);
                        e06Var3.n.e(0);
                        e06Var3.o = false;
                    }
                }
            }
        }
        char c4 = 6;
        if (this.n == 3) {
            if (e03Var.l) {
                int[] iArr2 = e03Var.b.h;
                i4 = e03Var.f;
                i5 = iArr2[i4];
            } else {
                int[] iArr3 = e03Var.d.d;
                i4 = e03Var.f;
                i5 = iArr3[i4];
            }
            this.y = i5;
            if (i4 < e03Var.i) {
                ((wk0) xs2Var).a(i5);
                d06 d06VarA = e03Var.a();
                if (d06VarA != null) {
                    os4 os4Var5 = e03Var.b.n;
                    int i23 = d06VarA.d;
                    if (i23 != 0) {
                        os4Var5.e(os4Var5.b + i23);
                    }
                    e06 e06Var4 = e03Var.b;
                    int i24 = e03Var.f;
                    if (e06Var4.k && e06Var4.l[i24]) {
                        os4Var5.e(os4Var5.b + (os4Var5.p() * 6));
                    }
                }
                e03Var.f++;
                if (e03Var.l) {
                    int i25 = e03Var.g + 1;
                    e03Var.g = i25;
                    int[] iArr4 = e03Var.b.g;
                    int i26 = e03Var.h;
                    if (i25 == iArr4[i26]) {
                        e03Var.h = i26 + 1;
                        e03Var.g = 0;
                        this.x = null;
                    }
                } else {
                    this.x = null;
                }
                this.n = 3;
                return 0;
            }
            if (e03Var.d.a.g == i) {
                this.y = i5 - 8;
                ((wk0) xs2Var).a(i2);
            }
            boolean zEquals = MimeTypes.AUDIO_AC4.equals(e03Var.d.a.f.m);
            int i27 = this.y;
            if (zEquals) {
                this.z = e03Var.a(i27, 7);
                j0.a(this.y, this.h);
                e03Var.a.a(7, this.h);
                iA2 = this.z + 7;
                this.z = iA2;
            } else {
                iA2 = e03Var.a(i27, 0);
                this.z = iA2;
            }
            this.y += iA2;
            this.n = 4;
            this.A = 0;
        }
        l06 l06Var = e03Var.d;
        c06 c06Var = l06Var.a;
        ?? r6 = e03Var.a;
        long j22 = e03Var.l ? e03Var.b.i[e03Var.f] : l06Var.f[e03Var.f];
        int i28 = c06Var.j;
        if (i28 == 0) {
            while (true) {
                int i29 = this.z;
                int i30 = this.y;
                if (i29 >= i30) {
                    break;
                }
                this.z += r6.a(xs2Var, i30 - i29, false);
            }
        } else {
            byte[] bArr2 = this.e.a;
            bArr2[0] = 0;
            bArr2[1] = 0;
            bArr2[c] = 0;
            int i31 = i28 + 1;
            int i32 = 4 - i28;
            while (this.z < this.y) {
                int i33 = this.A;
                if (i33 == 0) {
                    ((wk0) xs2Var).a(bArr2, i32, i31, r9);
                    this.e.e(r9);
                    int iA6 = this.e.a();
                    if (iA6 < 1) {
                        ?? r26 = r9;
                        defpackage.e2.h("Invalid NAL length", null);
                        return r26 == true ? 1 : 0;
                    }
                    this.A = iA6 - 1;
                    this.d.e(r9);
                    ?? r27 = r9;
                    r6.a(4, this.d);
                    r6.a(1, this.e);
                    if (this.E.length > 0) {
                        String str3 = c06Var.f.m;
                        byte b = bArr2[4];
                        if (("video/avc".equals(str3) && (b & 31) == c4) || (MimeTypes.VIDEO_H265.equals(str3) && ((b & 126) >> 1) == 39)) {
                            z2 = true;
                        } else {
                            z2 = r27 == true ? 1 : 0;
                        }
                    } else {
                        z2 = r27 == true ? 1 : 0;
                    }
                    this.B = z2;
                    this.z += 5;
                    this.y += i32;
                    z = r27 == true ? 1 : 0;
                } else {
                    ?? r28 = r9;
                    if (this.B) {
                        this.f.c(i33);
                        ((wk0) xs2Var).a(this.f.a, r28 == true ? 1 : 0, this.A, r28);
                        r6.a(this.A, this.f);
                        iA = this.A;
                        os4 os4Var6 = this.f;
                        int iA7 = qd4.a(os4Var6.a, os4Var6.c);
                        this.f.e(MimeTypes.VIDEO_H265.equals(c06Var.f.m) ? 1 : 0);
                        this.f.d(iA7);
                        ry.a(j22, this.f, this.E);
                    } else {
                        iA = r6.a(xs2Var, i33, r28);
                    }
                    this.z += iA;
                    this.A -= iA;
                    c4 = 6;
                    z = false;
                }
                r9 = z;
            }
        }
        int i34 = e03Var.l ? e03Var.b.j[e03Var.f] ? 1 : 0 : e03Var.d.g[e03Var.f];
        if (e03Var.a() != null) {
            i34 |= 1073741824;
        }
        int i35 = i34;
        d06 d06VarA2 = e03Var.a();
        long j23 = j22;
        r6.a(j23, i35, this.y, 0, d06VarA2 != null ? d06VarA2.c : null);
        while (!this.l.isEmpty()) {
            d03 d03Var = (d03) this.l.removeFirst();
            this.t -= d03Var.c;
            long j24 = d03Var.a;
            if (d03Var.b) {
                j24 += j23;
            }
            long j25 = j24;
            for (k06 k06Var3 : this.D) {
                k06Var3.a(j25, 1, d03Var.c, this.t, null);
            }
        }
        e03Var.f++;
        if (e03Var.l) {
            int i36 = e03Var.g + 1;
            e03Var.g = i36;
            int[] iArr5 = e03Var.b.g;
            int i37 = e03Var.h;
            if (i36 == iArr5[i37]) {
                e03Var.h = i37 + 1;
                i3 = 0;
                e03Var.g = 0;
            } else {
                i3 = 0;
            }
            this.n = 3;
            return i3;
        }
        i3 = 0;
        this.x = null;
        this.n = 3;
        return i3;
    }

    @Override // yads.ws2
    public final void release() {
    }

    public f03() {
        this(0, Collections.EMPTY_LIST, null);
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        return fo5.a(xs2Var, true, false);
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        int i;
        this.C = zs2Var;
        int i2 = 0;
        this.n = 0;
        this.q = 0;
        k06[] k06VarArr = new k06[2];
        this.D = k06VarArr;
        k06 k06Var = this.m;
        if (k06Var != null) {
            k06VarArr[0] = k06Var;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.a & 4) != 0) {
            k06VarArr[i] = zs2Var.a(100, 5);
            i3 = TypedValues.TYPE_TARGET;
            i++;
        }
        k06[] k06VarArr2 = (k06[]) u56.a(i, this.D);
        this.D = k06VarArr2;
        for (k06 k06Var2 : k06VarArr2) {
            k06Var2.a(H);
        }
        this.E = new k06[this.b.size()];
        while (i2 < this.E.length) {
            k06 k06VarA = this.C.a(i3, 3);
            k06VarA.a((vz2) this.b.get(i2));
            this.E[i2] = k06VarA;
            i2++;
            i3++;
        }
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            ((e03) this.c.valueAt(i)).b();
        }
        this.l.clear();
        this.t = 0;
        this.u = j2;
        this.k.clear();
        this.n = 0;
        this.q = 0;
    }

    public final c06 a(c06 c06Var) {
        return c06Var;
    }

    /* JADX WARN: Code duplicated, block: B:172:0x0373  */
    public final void a(long j) throws xs4 {
        int i;
        int i2;
        int i3;
        int iA;
        int iA2;
        int iA3;
        int iA4;
        int i4;
        int i5;
        int i6;
        boolean z;
        int iA5;
        while (!this.k.isEmpty() && ((jl) this.k.peek()).b == j) {
            jl jlVar = (jl) this.k.pop();
            int i7 = jlVar.a;
            if (i7 == 1836019574) {
                a(jlVar);
            } else if (i7 == 1836019558) {
                SparseArray sparseArray = this.c;
                int i8 = this.a;
                byte[] bArr = this.g;
                int size = jlVar.d.size();
                int i9 = 0;
                while (i9 < size) {
                    jl jlVar2 = (jl) jlVar.d.get(i9);
                    if (jlVar2.a == 1953653094) {
                        kl klVarC = jlVar2.c(Mp4Box.TYPE_tfhd);
                        klVarC.getClass();
                        os4 os4Var = klVarC.b;
                        os4Var.e(8);
                        int iA6 = os4Var.a();
                        e03 e03Var = (e03) sparseArray.get(os4Var.a());
                        if (e03Var == null) {
                            e03Var = null;
                        } else {
                            if ((iA6 & 1) != 0) {
                                long jO = os4Var.o();
                                e06 e06Var = e03Var.b;
                                e06Var.b = jO;
                                e06Var.c = jO;
                            }
                            cm0 cm0Var = e03Var.e;
                            if ((iA6 & 2) != 0) {
                                iA = os4Var.a() - 1;
                            } else {
                                iA = cm0Var.a;
                            }
                            if ((iA6 & 8) != 0) {
                                iA2 = os4Var.a();
                            } else {
                                iA2 = cm0Var.b;
                            }
                            if ((iA6 & 16) != 0) {
                                iA3 = os4Var.a();
                            } else {
                                iA3 = cm0Var.c;
                            }
                            if ((iA6 & 32) != 0) {
                                iA4 = os4Var.a();
                            } else {
                                iA4 = cm0Var.d;
                            }
                            e03Var.b.a = new cm0(iA, iA2, iA3, iA4);
                        }
                        if (e03Var != null) {
                            e06 e06Var2 = e03Var.b;
                            long j2 = e06Var2.p;
                            boolean z2 = e06Var2.q;
                            e03Var.b();
                            e03Var.l = true;
                            kl klVarC2 = jlVar2.c(Mp4Box.TYPE_tfdt);
                            if (klVarC2 != null && (i8 & 2) == 0) {
                                os4 os4Var2 = klVarC2.b;
                                os4Var2.e(8);
                                e06Var2.p = ((os4Var2.a() >> 24) & 255) == 1 ? os4Var2.o() : os4Var2.l();
                                e06Var2.q = true;
                            } else {
                                e06Var2.p = j2;
                                e06Var2.q = z2;
                            }
                            ArrayList arrayList = jlVar2.c;
                            int size2 = arrayList.size();
                            int i10 = 0;
                            int i11 = 0;
                            int i12 = 0;
                            while (true) {
                                i4 = Mp4Box.TYPE_trun;
                                if (i12 >= size2) {
                                    break;
                                }
                                kl klVar = (kl) arrayList.get(i12);
                                int i13 = i8;
                                if (klVar.a == 1953658222) {
                                    os4 os4Var3 = klVar.b;
                                    os4Var3.e(12);
                                    int iN = os4Var3.n();
                                    if (iN > 0) {
                                        i10 += iN;
                                        i11++;
                                    }
                                }
                                i12++;
                                i8 = i13;
                            }
                            i3 = i8;
                            e03Var.h = 0;
                            e03Var.g = 0;
                            e03Var.f = 0;
                            e06 e06Var3 = e03Var.b;
                            e06Var3.d = i11;
                            e06Var3.e = i10;
                            if (e06Var3.g.length < i11) {
                                e06Var3.f = new long[i11];
                                e06Var3.g = new int[i11];
                            }
                            if (e06Var3.h.length < i10) {
                                int i14 = (i10 * GapComposerKt.nodeKey) / 100;
                                e06Var3.h = new int[i14];
                                e06Var3.i = new long[i14];
                                e06Var3.j = new boolean[i14];
                                e06Var3.l = new boolean[i14];
                            }
                            int i15 = 0;
                            int i16 = 0;
                            int i17 = 0;
                            while (true) {
                                long j3 = 0;
                                if (i15 < size2) {
                                    kl klVar2 = (kl) arrayList.get(i15);
                                    if (klVar2.a == i4) {
                                        int i18 = i16 + 1;
                                        os4 os4Var4 = klVar2.b;
                                        os4Var4.e(8);
                                        int iA7 = os4Var4.a();
                                        c06 c06Var = e03Var.d.a;
                                        e06 e06Var4 = e03Var.b;
                                        cm0 cm0Var2 = e06Var4.a;
                                        int i19 = u56.a;
                                        e06Var4.g[i16] = os4Var4.n();
                                        long[] jArr = e06Var4.f;
                                        int i20 = i16;
                                        long j4 = e06Var4.b;
                                        jArr[i20] = j4;
                                        if ((iA7 & 1) != 0) {
                                            jArr[i20] = j4 + ((long) os4Var4.a());
                                        }
                                        boolean z3 = (iA7 & 4) != 0;
                                        int iA8 = cm0Var2.d;
                                        if (z3) {
                                            iA8 = os4Var4.a();
                                        }
                                        boolean z4 = (iA7 & 256) != 0;
                                        boolean z5 = z3;
                                        boolean z6 = (iA7 & 512) != 0;
                                        boolean z7 = (iA7 & 1024) != 0;
                                        boolean z8 = (iA7 & 2048) != 0;
                                        long[] jArr2 = c06Var.h;
                                        boolean z9 = z7;
                                        if (jArr2 != null && jArr2.length == 1 && jArr2[0] == 0) {
                                            j3 = c06Var.i[0];
                                        }
                                        int[] iArr = e06Var4.h;
                                        long[] jArr3 = e06Var4.i;
                                        boolean[] zArr = e06Var4.j;
                                        boolean z10 = c06Var.b == 2 && (i3 & 1) != 0;
                                        int i21 = e06Var4.g[i20] + i17;
                                        boolean z11 = z10;
                                        long j5 = c06Var.c;
                                        long j6 = e06Var4.p;
                                        while (i17 < i21) {
                                            int iA9 = z4 ? os4Var4.a() : cm0Var2.b;
                                            int i22 = iA8;
                                            if (iA9 >= 0) {
                                                int iA10 = z6 ? os4Var4.a() : cm0Var2.c;
                                                if (iA10 >= 0) {
                                                    if (z9) {
                                                        iA5 = os4Var4.a();
                                                    } else {
                                                        iA5 = (i17 == 0 && z5) ? i22 : cm0Var2.d;
                                                    }
                                                    int i23 = i18;
                                                    os4 os4Var5 = os4Var4;
                                                    long jA = u56.a((((long) (z8 ? os4Var4.a() : 0)) + j6) - j3, 1000000L, j5);
                                                    jArr3[i17] = jA;
                                                    if (!e06Var4.q) {
                                                        jArr3[i17] = jA + e03Var.d.h;
                                                    }
                                                    iArr[i17] = iA10;
                                                    zArr[i17] = ((iA5 >> 16) & 1) == 0 && (!z11 || i17 == 0);
                                                    j6 += (long) iA9;
                                                    i17++;
                                                    i21 = i21;
                                                    iA8 = i22;
                                                    z4 = z4;
                                                    cm0Var2 = cm0Var2;
                                                    i18 = i23;
                                                    os4Var4 = os4Var5;
                                                } else {
                                                    defpackage.e2.h(vx4.a(iA10, "Unexpected negative value: "), null);
                                                    return;
                                                }
                                            } else {
                                                defpackage.e2.h(vx4.a(iA9, "Unexpected negative value: "), null);
                                                return;
                                            }
                                        }
                                        e06Var4.p = j6;
                                        i17 = i21;
                                        i16 = i18;
                                    }
                                    i15++;
                                    size = size;
                                    i9 = i9;
                                    arrayList = arrayList;
                                    size2 = size2;
                                    i4 = Mp4Box.TYPE_trun;
                                } else {
                                    i2 = size;
                                    i = i9;
                                    c06 c06Var2 = e03Var.d.a;
                                    cm0 cm0Var3 = e06Var2.a;
                                    cm0Var3.getClass();
                                    d06 d06Var = c06Var2.k[cm0Var3.a];
                                    kl klVarC3 = jlVar2.c(Mp4Box.TYPE_saiz);
                                    if (klVarC3 != null) {
                                        d06Var.getClass();
                                        os4 os4Var6 = klVarC3.b;
                                        int i24 = d06Var.d;
                                        os4Var6.e(8);
                                        if ((os4Var6.a() & 1) == 1) {
                                            os4Var6.e(os4Var6.b + 8);
                                        }
                                        int iK = os4Var6.k();
                                        int iN2 = os4Var6.n();
                                        if (iN2 <= e06Var2.e) {
                                            if (iK == 0) {
                                                boolean[] zArr2 = e06Var2.l;
                                                i6 = 0;
                                                for (int i25 = 0; i25 < iN2; i25++) {
                                                    int iK2 = os4Var6.k();
                                                    i6 += iK2;
                                                    zArr2[i25] = iK2 > i24;
                                                }
                                                z = false;
                                            } else {
                                                boolean z12 = iK > i24;
                                                i6 = iK * iN2;
                                                z = false;
                                                Arrays.fill(e06Var2.l, 0, iN2, z12);
                                            }
                                            Arrays.fill(e06Var2.l, iN2, e06Var2.e, z);
                                            if (i6 > 0) {
                                                e06Var2.n.c(i6);
                                                i5 = 1;
                                                e06Var2.k = true;
                                                e06Var2.o = true;
                                            } else {
                                                i5 = 1;
                                            }
                                        } else {
                                            StringBuilder sbC = defpackage.n7.c(iN2, "Saiz sample count ", " is greater than fragment sample count");
                                            sbC.append(e06Var2.e);
                                            throw new xs4(sbC.toString(), null, true, 1);
                                        }
                                    } else {
                                        i5 = 1;
                                    }
                                    kl klVarC4 = jlVar2.c(Mp4Box.TYPE_saio);
                                    if (klVarC4 != null) {
                                        os4 os4Var7 = klVarC4.b;
                                        os4Var7.e(8);
                                        int iA11 = os4Var7.a();
                                        if ((iA11 & 1) == i5) {
                                            os4Var7.e(os4Var7.b + 8);
                                        }
                                        int iN3 = os4Var7.n();
                                        if (iN3 != i5) {
                                            defpackage.e2.h(vx4.a(iN3, "Unexpected saio entry count: "), null);
                                            return;
                                        }
                                        e06Var2.c += ((iA11 >> 24) & 255) == 0 ? os4Var7.l() : os4Var7.o();
                                    }
                                    byte[] bArr2 = null;
                                    kl klVarC5 = jlVar2.c(Mp4Box.TYPE_senc);
                                    if (klVarC5 != null) {
                                        a(klVarC5.b, 0, e06Var2);
                                    }
                                    String str = d06Var != null ? d06Var.b : null;
                                    os4 os4Var8 = null;
                                    os4 os4Var9 = null;
                                    for (int i26 = 0; i26 < jlVar2.c.size(); i26++) {
                                        kl klVar3 = (kl) jlVar2.c.get(i26);
                                        os4 os4Var10 = klVar3.b;
                                        int i27 = klVar3.a;
                                        if (i27 == 1935828848) {
                                            os4Var10.e(12);
                                            if (os4Var10.a() == 1936025959) {
                                                os4Var8 = os4Var10;
                                            }
                                        } else if (i27 == 1936158820) {
                                            os4Var10.e(12);
                                            if (os4Var10.a() == 1936025959) {
                                                os4Var9 = os4Var10;
                                            }
                                        }
                                    }
                                    if (os4Var8 != null && os4Var9 != null) {
                                        os4Var8.e(8);
                                        int iA12 = (os4Var8.a() >> 24) & 255;
                                        os4Var8.e(os4Var8.b + 4);
                                        if (iA12 == 1) {
                                            os4Var8.e(os4Var8.b + 4);
                                        }
                                        if (os4Var8.a() == 1) {
                                            os4Var9.e(8);
                                            int iA13 = (os4Var9.a() >> 24) & 255;
                                            os4Var9.e(os4Var9.b + 4);
                                            if (iA13 == 1) {
                                                if (os4Var9.l() == 0) {
                                                    throw xs4.a("Variable length description in sgpd found (unsupported)");
                                                }
                                            } else if (iA13 >= 2) {
                                                os4Var9.e(os4Var9.b + 4);
                                            }
                                            if (os4Var9.l() == 1) {
                                                os4Var9.e(os4Var9.b + 1);
                                                int iK3 = os4Var9.k();
                                                int i28 = (iK3 & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                                                int i29 = iK3 & 15;
                                                boolean z13 = os4Var9.k() == 1;
                                                if (z13) {
                                                    int iK4 = os4Var9.k();
                                                    byte[] bArr3 = new byte[16];
                                                    os4Var9.a(bArr3, 0, 16);
                                                    if (iK4 == 0) {
                                                        int iK5 = os4Var9.k();
                                                        bArr2 = new byte[iK5];
                                                        os4Var9.a(bArr2, 0, iK5);
                                                    }
                                                    e06Var2.k = true;
                                                    e06Var2.m = new d06(z13, str, iK4, bArr3, i28, i29, bArr2);
                                                }
                                            } else {
                                                throw xs4.a("Entry count in sgpd != 1 (unsupported).");
                                            }
                                        } else {
                                            throw xs4.a("Entry count in sbgp != 1 (unsupported).");
                                        }
                                    }
                                    int size3 = jlVar2.c.size();
                                    for (int i30 = 0; i30 < size3; i30++) {
                                        kl klVar4 = (kl) jlVar2.c.get(i30);
                                        if (klVar4.a == 1970628964) {
                                            os4 os4Var11 = klVar4.b;
                                            os4Var11.e(8);
                                            os4Var11.a(bArr, 0, 16);
                                            if (Arrays.equals(bArr, G)) {
                                                a(os4Var11, 16, e06Var2);
                                            }
                                        }
                                    }
                                    break;
                                }
                            }
                        }
                        i9 = i + 1;
                        sparseArray = sparseArray;
                        i8 = i3;
                        size = i2;
                    } else {
                        sparseArray = sparseArray;
                    }
                    i3 = i8;
                    i2 = size;
                    i = i9;
                    i9 = i + 1;
                    sparseArray = sparseArray;
                    i8 = i3;
                    size = i2;
                }
                ql2 ql2VarA = a(jlVar.c);
                if (ql2VarA != null) {
                    int size4 = this.c.size();
                    for (int i31 = 0; i31 < size4; i31++) {
                        e03 e03Var2 = (e03) this.c.valueAt(i31);
                        c06 c06Var3 = e03Var2.d.a;
                        cm0 cm0Var4 = e03Var2.b.a;
                        int i32 = u56.a;
                        d06 d06Var2 = c06Var3.k[cm0Var4.a];
                        String str2 = d06Var2 != null ? d06Var2.b : null;
                        ql2 ql2Var = u56.a(ql2VarA.d, str2) ? ql2VarA : new ql2(str2, false, ql2VarA.b);
                        vz2 vz2Var = e03Var2.d.a.f;
                        vz2Var.getClass();
                        uz2 uz2Var = new uz2(vz2Var);
                        uz2Var.n = ql2Var;
                        e03Var2.a.a(new vz2(uz2Var));
                    }
                }
                if (this.u != C.TIME_UNSET) {
                    int size5 = this.c.size();
                    for (int i33 = 0; i33 < size5; i33++) {
                        e03 e03Var3 = (e03) this.c.valueAt(i33);
                        long j7 = this.u;
                        int i34 = e03Var3.f;
                        while (true) {
                            e06 e06Var5 = e03Var3.b;
                            if (i34 >= e06Var5.e || e06Var5.i[i34] >= j7) {
                                break;
                            }
                            if (e06Var5.j[i34]) {
                                e03Var3.i = i34;
                            }
                            i34++;
                        }
                    }
                    this.u = C.TIME_UNSET;
                }
            } else if (!this.k.isEmpty()) {
                ((jl) this.k.peek()).d.add(jlVar);
            }
        }
        this.n = 0;
        this.q = 0;
    }

    public final void a(jl jlVar) {
        cm0 cm0Var;
        cm0 cm0Var2;
        ql2 ql2VarA = a(jlVar.c);
        jl jlVarB = jlVar.b(Mp4Box.TYPE_mvex);
        jlVarB.getClass();
        SparseArray sparseArray = new SparseArray();
        int size = jlVarB.c.size();
        long jL = -9223372036854775807L;
        for (int i = 0; i < size; i++) {
            kl klVar = (kl) jlVarB.c.get(i);
            int i2 = klVar.a;
            if (i2 == 1953654136) {
                os4 os4Var = klVar.b;
                os4Var.e(12);
                Pair pairCreate = Pair.create(Integer.valueOf(os4Var.a()), new cm0(os4Var.a() - 1, os4Var.a(), os4Var.a(), os4Var.a()));
                sparseArray.put(((Integer) pairCreate.first).intValue(), (cm0) pairCreate.second);
            } else if (i2 == 1835362404) {
                os4 os4Var2 = klVar.b;
                os4Var2.e(8);
                jL = ((os4Var2.a() >> 24) & 255) == 0 ? os4Var2.l() : os4Var2.o();
            }
        }
        ArrayList arrayListA = sl.a(jlVar, new f23(), jL, ql2VarA, (this.a & 16) != 0, false, new defpackage.ml0(this, 7));
        int size2 = arrayListA.size();
        if (this.c.size() == 0) {
            for (int i3 = 0; i3 < size2; i3++) {
                l06 l06Var = (l06) arrayListA.get(i3);
                c06 c06Var = l06Var.a;
                k06 k06VarA = this.C.a(i3, c06Var.b);
                int i4 = c06Var.a;
                if (sparseArray.size() == 1) {
                    cm0Var2 = (cm0) sparseArray.valueAt(0);
                } else {
                    cm0Var2 = (cm0) sparseArray.get(i4);
                    cm0Var2.getClass();
                }
                this.c.put(c06Var.a, new e03(k06VarA, l06Var, cm0Var2));
                this.v = Math.max(this.v, c06Var.e);
            }
            this.C.a();
            return;
        }
        if (this.c.size() != size2) {
            defpackage.ud.g();
            return;
        }
        for (int i5 = 0; i5 < size2; i5++) {
            l06 l06Var2 = (l06) arrayListA.get(i5);
            c06 c06Var2 = l06Var2.a;
            e03 e03Var = (e03) this.c.get(c06Var2.a);
            int i6 = c06Var2.a;
            if (sparseArray.size() == 1) {
                cm0Var = (cm0) sparseArray.valueAt(0);
            } else {
                cm0Var = (cm0) sparseArray.get(i6);
                cm0Var.getClass();
            }
            e03Var.d = l06Var2;
            e03Var.e = cm0Var;
            e03Var.a.a(l06Var2.a.f);
            e03Var.b();
        }
    }

    public static void a(os4 os4Var, int i, e06 e06Var) throws xs4 {
        os4Var.e(i + 8);
        int iA = os4Var.a();
        if ((iA & 1) == 0) {
            boolean z = (iA & 2) != 0;
            int iN = os4Var.n();
            if (iN == 0) {
                Arrays.fill(e06Var.l, 0, e06Var.e, false);
                return;
            }
            if (iN == e06Var.e) {
                Arrays.fill(e06Var.l, 0, iN, z);
                e06Var.n.c(os4Var.c - os4Var.b);
                e06Var.k = true;
                e06Var.o = true;
                os4 os4Var2 = e06Var.n;
                os4Var.a(os4Var2.a, 0, os4Var2.c);
                e06Var.n.e(0);
                e06Var.o = false;
                return;
            }
            StringBuilder sbC = defpackage.n7.c(iN, "Senc sample count ", " is different from fragment sample count");
            sbC.append(e06Var.e);
            throw new xs4(sbC.toString(), null, true, 1);
        }
        throw xs4.a("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    public static ql2 a(ArrayList arrayList) {
        int size = arrayList.size();
        ArrayList arrayList2 = null;
        for (int i = 0; i < size; i++) {
            kl klVar = (kl) arrayList.get(i);
            if (klVar.a == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] bArr = klVar.b.a;
                b35 b35VarA = c35.a(bArr);
                UUID uuid = b35VarA == null ? null : b35VarA.a;
                if (uuid == null) {
                    sv3.d("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList2.add(new pl2(uuid, null, MimeTypes.VIDEO_MP4, bArr));
                }
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        return new ql2(null, false, (pl2[]) arrayList2.toArray(new pl2[0]));
    }
}
