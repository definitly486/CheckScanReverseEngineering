package yads;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class j83 implements zm2 {
    public final ki5 a;
    public final boolean b;
    public final boolean c;
    public long g;
    public String i;
    public k06 j;
    public i83 k;
    public boolean l;
    public boolean n;
    public final boolean[] h = new boolean[3];
    public final md4 d = new md4(7);
    public final md4 e = new md4(8);
    public final md4 f = new md4(6);
    public long m = C.TIME_UNSET;
    public final os4 o = new os4();

    public j83(ki5 ki5Var, boolean z, boolean z2) {
        this.a = ki5Var;
        this.b = z;
        this.c = z2;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x026d  */
    /* JADX WARN: Code duplicated, block: B:105:0x026f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0286  */
    /* JADX WARN: Code duplicated, block: B:31:0x0083  */
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
        int i;
        int i2;
        int i3;
        long j;
        int i4;
        long j2;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        k06 k06Var = this.j;
        if (k06Var == null) {
            defpackage.ud.g();
            return;
        }
        int i9 = u56.a;
        int i10 = os4Var.b;
        int i11 = os4Var.c;
        byte[] bArr = os4Var.a;
        int i12 = i11 - i10;
        this.g += (long) i12;
        k06Var.a(i12, os4Var);
        while (true) {
            int iA = qd4.a(bArr, i10, i11, this.h);
            if (iA == i11) {
                if (!this.l || this.k.c) {
                    this.d.a(bArr, i10, i11);
                    this.e.a(bArr, i10, i11);
                }
                this.f.a(bArr, i10, i11);
                this.k.a(bArr, i10, i11);
                return;
            }
            int i13 = iA + 3;
            int i14 = bArr[i13] & 31;
            int i15 = iA - i10;
            if (i15 > 0) {
                if (!this.l || this.k.c) {
                    this.d.a(bArr, i10, iA);
                    this.e.a(bArr, i10, iA);
                }
                this.f.a(bArr, i10, iA);
                this.k.a(bArr, i10, iA);
            }
            int i16 = i11 - iA;
            long j3 = this.g - ((long) i16);
            int i17 = i15 < 0 ? -i15 : 0;
            long j4 = this.m;
            if (!this.l || this.k.c) {
                this.d.a(i17);
                this.e.a(i17);
                boolean z2 = this.l;
                md4 md4Var = this.d;
                if (z2) {
                    i = i16;
                    i2 = i13;
                    i3 = i11;
                    if (md4Var.c) {
                        pd4 pd4VarB = qd4.b(md4Var.d, 3, md4Var.e);
                        this.k.d.append(pd4VarB.d, pd4VarB);
                        md4 md4Var2 = this.d;
                        md4Var2.b = false;
                        md4Var2.c = false;
                    } else {
                        md4 md4Var3 = this.e;
                        if (md4Var3.c) {
                            ps4 ps4Var = new ps4(md4Var3.d, 4, md4Var3.e);
                            int iD = ps4Var.d();
                            int iD2 = ps4Var.d();
                            ps4Var.f();
                            this.k.e.append(iD, new od4(iD, iD2, ps4Var.c()));
                            md4 md4Var4 = this.e;
                            md4Var4.b = false;
                            md4Var4.c = false;
                        }
                    }
                } else if (md4Var.c && this.e.c) {
                    ArrayList arrayList = new ArrayList();
                    md4 md4Var5 = this.d;
                    arrayList.add(Arrays.copyOf(md4Var5.d, md4Var5.e));
                    md4 md4Var6 = this.e;
                    arrayList.add(Arrays.copyOf(md4Var6.d, md4Var6.e));
                    md4 md4Var7 = this.d;
                    pd4 pd4VarB2 = qd4.b(md4Var7.d, 3, md4Var7.e);
                    md4 md4Var8 = this.e;
                    i = i16;
                    ps4 ps4Var2 = new ps4(md4Var8.d, 4, md4Var8.e);
                    int iD3 = ps4Var2.d();
                    int iD4 = ps4Var2.d();
                    ps4Var2.f();
                    od4 od4Var = new od4(iD3, iD4, ps4Var2.c());
                    i2 = i13;
                    String str = String.format("avc1.%02X%02X%02X", Integer.valueOf(pd4VarB2.a), Integer.valueOf(pd4VarB2.b), Integer.valueOf(pd4VarB2.c));
                    k06 k06Var2 = this.j;
                    uz2 uz2Var = new uz2();
                    i3 = i11;
                    uz2Var.a = this.i;
                    uz2Var.k = "video/avc";
                    uz2Var.h = str;
                    uz2Var.p = pd4VarB2.e;
                    uz2Var.q = pd4VarB2.f;
                    uz2Var.t = pd4VarB2.g;
                    uz2Var.m = arrayList;
                    k06Var2.a(new vz2(uz2Var));
                    this.l = true;
                    this.k.d.append(pd4VarB2.d, pd4VarB2);
                    this.k.e.append(iD3, od4Var);
                    md4 md4Var9 = this.d;
                    md4Var9.b = false;
                    md4Var9.c = false;
                    md4 md4Var10 = this.e;
                    md4Var10.b = false;
                    md4Var10.c = false;
                } else {
                    i = i16;
                    i2 = i13;
                    i3 = i11;
                }
            } else {
                i = i16;
                i2 = i13;
                i3 = i11;
            }
            if (this.f.a(i17)) {
                md4 md4Var11 = this.f;
                int iA2 = qd4.a(md4Var11.d, md4Var11.e);
                os4 os4Var2 = this.o;
                os4Var2.a = this.f.d;
                os4Var2.c = iA2;
                os4Var2.b = 0;
                os4Var2.e(4);
                ry.a(j4, this.o, this.a.b);
            }
            i83 i83Var = this.k;
            boolean z3 = this.l;
            boolean z4 = this.n;
            if (i83Var.i == 9) {
                if (z3 && i83Var.o) {
                    j = i83Var.j;
                    i4 = i + ((int) (j3 - j));
                    j2 = i83Var.q;
                    if (j2 != C.TIME_UNSET) {
                        i83Var.a.a(j2, i83Var.r ? 1 : 0, (int) (j - i83Var.p), i4, null);
                    }
                }
                i83Var.p = i83Var.j;
                i83Var.q = i83Var.l;
                i83Var.r = false;
                i83Var.o = true;
            } else if (i83Var.c) {
                h83 h83Var = i83Var.n;
                h83 h83Var2 = i83Var.m;
                if (h83Var.a) {
                    if (h83Var2.a) {
                        pd4 pd4Var = h83Var.c;
                        if (pd4Var == null) {
                            defpackage.ud.g();
                            return;
                        }
                        pd4 pd4Var2 = h83Var2.c;
                        if (pd4Var2 == null) {
                            defpackage.ud.g();
                            return;
                        }
                        if (h83Var.f != h83Var2.f || h83Var.g != h83Var2.g || h83Var.h != h83Var2.h || ((h83Var.i && h83Var2.i && h83Var.j != h83Var2.j) || (((i6 = h83Var.d) != (i7 = h83Var2.d) && (i6 == 0 || i7 == 0)) || (((i8 = pd4Var.k) == 0 && pd4Var2.k == 0 && (h83Var.m != h83Var2.m || h83Var.n != h83Var2.n)) || ((i8 == 1 && pd4Var2.k == 1 && (h83Var.o != h83Var2.o || h83Var.p != h83Var2.p)) || (z = h83Var.k) != h83Var2.k || (z && h83Var.l != h83Var2.l)))))) {
                            if (z3) {
                                j = i83Var.j;
                                i4 = i + ((int) (j3 - j));
                                j2 = i83Var.q;
                                if (j2 != C.TIME_UNSET) {
                                    i83Var.a.a(j2, i83Var.r ? 1 : 0, (int) (j - i83Var.p), i4, null);
                                }
                            }
                            i83Var.p = i83Var.j;
                            i83Var.q = i83Var.l;
                            i83Var.r = false;
                            i83Var.o = true;
                        }
                    } else {
                        if (z3) {
                            j = i83Var.j;
                            i4 = i + ((int) (j3 - j));
                            j2 = i83Var.q;
                            if (j2 != C.TIME_UNSET) {
                                i83Var.a.a(j2, i83Var.r ? 1 : 0, (int) (j - i83Var.p), i4, null);
                            }
                        }
                        i83Var.p = i83Var.j;
                        i83Var.q = i83Var.l;
                        i83Var.r = false;
                        i83Var.o = true;
                    }
                }
            }
            if (i83Var.b) {
                h83 h83Var3 = i83Var.n;
                z4 = h83Var3.b && ((i5 = h83Var3.e) == 7 || i5 == 2);
            }
            boolean z5 = i83Var.r;
            int i18 = i83Var.i;
            boolean z6 = z5 | (i18 == 5 || (z4 && i18 == 1));
            i83Var.r = z6;
            if (z6) {
                this.n = false;
            }
            long j5 = this.m;
            if (!this.l || this.k.c) {
                this.d.b(i14);
                this.e.b(i14);
            }
            this.f.b(i14);
            i83 i83Var2 = this.k;
            i83Var2.i = i14;
            i83Var2.l = j5;
            i83Var2.j = j3;
            if ((i83Var2.b && i14 == 1) || (i83Var2.c && (i14 == 5 || i14 == 1 || i14 == 2))) {
                h83 h83Var4 = i83Var2.m;
                i83Var2.m = i83Var2.n;
                i83Var2.n = h83Var4;
                h83Var4.b = false;
                h83Var4.a = false;
                i83Var2.h = 0;
                i83Var2.k = true;
            }
            i10 = i2;
            i11 = i3;
        }
    }

    @Override // yads.zm2
    public final void b() {
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        t26Var.a();
        t26Var.b();
        this.i = t26Var.e;
        t26Var.b();
        k06 k06VarA = zs2Var.a(t26Var.d, 2);
        this.j = k06VarA;
        this.k = new i83(k06VarA, this.b, this.c);
        this.a.a(zs2Var, t26Var);
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
        this.n = ((i & 2) != 0) | this.n;
    }

    @Override // yads.zm2
    public final void a() {
        this.g = 0L;
        this.n = false;
        this.m = C.TIME_UNSET;
        qd4.a(this.h);
        md4 md4Var = this.d;
        md4Var.b = false;
        md4Var.c = false;
        md4 md4Var2 = this.e;
        md4Var2.b = false;
        md4Var2.c = false;
        md4 md4Var3 = this.f;
        md4Var3.b = false;
        md4Var3.c = false;
        i83 i83Var = this.k;
        if (i83Var != null) {
            i83Var.k = false;
            i83Var.o = false;
            h83 h83Var = i83Var.n;
            h83Var.b = false;
            h83Var.a = false;
        }
    }
}
