package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public final class g83 implements zm2 {
    public static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    public final s56 a;
    public f83 f;
    public long g;
    public String h;
    public k06 i;
    public boolean j;
    public final boolean[] c = new boolean[4];
    public final e83 d = new e83();
    public long k = C.TIME_UNSET;
    public final md4 e = new md4(178);
    public final os4 b = new os4();

    public g83(s56 s56Var) {
        this.a = s56Var;
    }

    /* JADX WARN: Code duplicated, block: B:129:0x028d  */
    /* JADX WARN: Multi-variable type inference failed */
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
        boolean z;
        int i3;
        int i4;
        float f;
        if (this.f == null) {
            defpackage.ud.g();
            return;
        }
        k06 k06Var = this.i;
        if (k06Var == null) {
            defpackage.ud.g();
            return;
        }
        int i5 = os4Var.b;
        int i6 = os4Var.c;
        byte[] bArr = os4Var.a;
        int i7 = i6 - i5;
        this.g += (long) i7;
        k06Var.a(i7, os4Var);
        while (true) {
            int iA = qd4.a(bArr, i5, i6, this.c);
            if (iA == i6) {
                if (!this.j) {
                    this.d.a(bArr, i5, i6);
                }
                f83 f83Var = this.f;
                if (f83Var.c) {
                    int i8 = f83Var.f;
                    int i9 = (i5 + 1) - i8;
                    if (i9 < i6) {
                        f83Var.d = ((bArr[i9] & 192) >> 6) == 0;
                        f83Var.c = false;
                    } else {
                        f83Var.f = (i6 - i5) + i8;
                    }
                }
                md4 md4Var = this.e;
                if (md4Var != null) {
                    md4Var.a(bArr, i5, i6);
                    return;
                }
                return;
            }
            int i10 = iA + 3;
            byte b = os4Var.a[i10];
            int i11 = b & 255;
            int i12 = iA - i5;
            if (this.j) {
                i = i6;
                i2 = i10;
            } else {
                if (i12 > 0) {
                    this.d.a(bArr, i5, iA);
                }
                int i13 = i12 < 0 ? -i12 : 0;
                e83 e83Var = this.d;
                int i14 = e83Var.b;
                if (i14 != 0) {
                    i = i6;
                    if (i14 == 1) {
                        i2 = i10;
                        i4 = 0;
                        if (i11 != 181) {
                            sv3.d("H263Reader", "Unexpected start code value");
                            e83Var.a = false;
                            e83Var.c = 0;
                            e83Var.b = 0;
                        } else {
                            e83Var.b = 2;
                        }
                    } else if (i14 == 2) {
                        i2 = i10;
                        i4 = 0;
                        if (i11 > 31) {
                            sv3.d("H263Reader", "Unexpected start code value");
                            e83Var.a = false;
                            e83Var.c = 0;
                            e83Var.b = 0;
                        } else {
                            e83Var.b = 3;
                        }
                    } else if (i14 == 3) {
                        i2 = i10;
                        if ((b & 240) != 32) {
                            sv3.d("H263Reader", "Unexpected start code value");
                            i4 = 0;
                            e83Var.a = false;
                            e83Var.c = 0;
                            e83Var.b = 0;
                        } else {
                            i4 = 0;
                            e83Var.d = e83Var.c;
                            e83Var.b = 4;
                        }
                    } else {
                        if (i14 != 4) {
                            defpackage.ud.g();
                            return;
                        }
                        if (i11 == 179 || i11 == 181) {
                            e83Var.c -= i13;
                            e83Var.a = false;
                            k06 k06Var2 = this.i;
                            int i15 = e83Var.d;
                            String str = this.h;
                            str.getClass();
                            byte[] bArrCopyOf = Arrays.copyOf(e83Var.e, e83Var.c);
                            ns4 ns4Var = new ns4(bArrCopyOf);
                            ns4Var.d(i15);
                            ns4Var.d(4);
                            ns4Var.f();
                            ns4Var.c(8);
                            if (ns4Var.e()) {
                                ns4Var.c(4);
                                ns4Var.c(3);
                            }
                            int iA2 = ns4Var.a(4);
                            i2 = i10;
                            if (iA2 == 15) {
                                int iA3 = ns4Var.a(8);
                                int iA4 = ns4Var.a(8);
                                if (iA4 == 0) {
                                    sv3.d("H263Reader", "Invalid aspect ratio");
                                    f = 1.0f;
                                } else {
                                    f = iA3 / iA4;
                                }
                            } else {
                                float[] fArr = l;
                                if (iA2 < 7) {
                                    f = fArr[iA2];
                                } else {
                                    sv3.d("H263Reader", "Invalid aspect ratio");
                                    f = 1.0f;
                                }
                            }
                            if (ns4Var.e()) {
                                ns4Var.c(2);
                                ns4Var.c(1);
                                if (ns4Var.e()) {
                                    ns4Var.c(15);
                                    ns4Var.f();
                                    ns4Var.c(15);
                                    ns4Var.f();
                                    ns4Var.c(15);
                                    ns4Var.f();
                                    ns4Var.c(3);
                                    ns4Var.c(11);
                                    ns4Var.f();
                                    ns4Var.c(15);
                                    ns4Var.f();
                                }
                            }
                            if (ns4Var.a(2) != 0) {
                                sv3.d("H263Reader", "Unhandled video object layer shape");
                            }
                            ns4Var.f();
                            int iA5 = ns4Var.a(16);
                            ns4Var.f();
                            if (ns4Var.e()) {
                                if (iA5 == 0) {
                                    sv3.d("H263Reader", "Invalid vop_increment_time_resolution");
                                } else {
                                    int i16 = 0;
                                    for (int i17 = iA5 - 1; i17 > 0; i17 >>= 1) {
                                        i16++;
                                    }
                                    ns4Var.c(i16);
                                }
                            }
                            ns4Var.f();
                            int iA6 = ns4Var.a(13);
                            ns4Var.f();
                            int iA7 = ns4Var.a(13);
                            ns4Var.f();
                            ns4Var.f();
                            uz2 uz2Var = new uz2();
                            uz2Var.a = str;
                            uz2Var.k = MimeTypes.VIDEO_MP4V;
                            uz2Var.p = iA6;
                            uz2Var.q = iA7;
                            uz2Var.t = f;
                            uz2Var.m = Collections.singletonList(bArrCopyOf);
                            k06Var2.a(new vz2(uz2Var));
                            this.j = true;
                        } else {
                            i2 = i10;
                            i4 = 0;
                        }
                    }
                } else {
                    i = i6;
                    i2 = i10;
                    i4 = 0;
                    if (i11 == 176) {
                        e83Var.b = 1;
                        e83Var.a = true;
                    }
                }
                e83Var.a(e83.f, i4, 3);
            }
            f83 f83Var2 = this.f;
            if (f83Var2.c) {
                int i18 = f83Var2.f;
                int i19 = (i5 + 1) - i18;
                if (i19 < iA) {
                    f83Var2.d = ((bArr[i19] & 192) >> 6) == 0;
                    f83Var2.c = false;
                } else {
                    f83Var2.f = i18 + i12;
                }
            }
            md4 md4Var2 = this.e;
            if (md4Var2 == null) {
                z = true;
            } else {
                if (i12 > 0) {
                    md4Var2.a(bArr, i5, iA);
                    i3 = 0;
                } else {
                    i3 = -i12;
                }
                if (this.e.a(i3)) {
                    md4 md4Var3 = this.e;
                    int iA8 = qd4.a(md4Var3.d, md4Var3.e);
                    os4 os4Var2 = this.b;
                    int i20 = u56.a;
                    os4Var2.a = this.e.d;
                    os4Var2.c = iA8;
                    os4Var2.b = 0;
                    s56 s56Var = this.a;
                    long j = this.k;
                    if (iA8 >= 9) {
                        int iA9 = os4Var2.a();
                        int iA10 = os4Var2.a();
                        int iK = os4Var2.k();
                        if (iA9 == 434 && iA10 == 1195456820 && iK == 3) {
                            ry.b(j, os4Var2, s56Var.b);
                        }
                    }
                }
                if (i11 == 178) {
                    z = true;
                    if (os4Var.a[iA + 2] == 1) {
                        this.e.b(i11);
                    }
                } else {
                    z = true;
                }
            }
            int i21 = i - iA;
            long j2 = this.g - ((long) i21);
            f83 f83Var3 = this.f;
            boolean z2 = this.j;
            if (f83Var3.e == 182 && z2 && f83Var3.b) {
                long j3 = f83Var3.h;
                if (j3 != C.TIME_UNSET) {
                    f83Var3.a.a(j3, f83Var3.d ? 1 : 0, (int) (j2 - f83Var3.g), i21, null);
                }
            }
            if (f83Var3.e != 179) {
                f83Var3.g = j2;
            }
            f83 f83Var4 = this.f;
            long j4 = this.k;
            f83Var4.e = i11;
            f83Var4.d = false;
            f83Var4.b = (i11 == 182 || i11 == 179) ? z : false;
            if (i11 != 182) {
                z = false;
            }
            f83Var4.c = z;
            f83Var4.f = 0;
            f83Var4.h = j4;
            i6 = i;
            i5 = i2;
        }
    }

    @Override // yads.zm2
    public final void b() {
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        t26Var.a();
        t26Var.b();
        this.h = t26Var.e;
        t26Var.b();
        k06 k06VarA = zs2Var.a(t26Var.d, 2);
        this.i = k06VarA;
        this.f = new f83(k06VarA);
        this.a.a(zs2Var, t26Var);
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override // yads.zm2
    public final void a() {
        qd4.a(this.c);
        e83 e83Var = this.d;
        e83Var.a = false;
        e83Var.c = 0;
        e83Var.b = 0;
        f83 f83Var = this.f;
        if (f83Var != null) {
            f83Var.b = false;
            f83Var.c = false;
            f83Var.d = false;
            f83Var.e = -1;
        }
        md4 md4Var = this.e;
        if (md4Var != null) {
            md4Var.b = false;
            md4Var.c = false;
        }
        this.g = 0L;
        this.k = C.TIME_UNSET;
    }
}
