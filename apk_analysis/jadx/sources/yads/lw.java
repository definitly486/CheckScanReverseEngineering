package yads;

import android.net.Uri;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class lw {
    public final cw a;
    public final yv b;
    public final bd0 c;
    public final String d;
    public final byte[] e;
    public final kw f;
    public long g;
    public long h;
    public long i;
    public volatile boolean j;

    public lw(cw cwVar, bd0 bd0Var, byte[] bArr, kw kwVar) {
        this.a = cwVar;
        this.b = cwVar.a;
        this.c = bd0Var;
        this.e = bArr == null ? new byte[131072] : bArr;
        this.f = kwVar;
        ((defpackage.xp) cwVar.e).getClass();
        this.d = iw.b(bd0Var);
        this.g = bd0Var.f;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01aa A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:104:0x01b4 A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:108:0x01be  */
    /* JADX WARN: Code duplicated, block: B:109:0x01c1 A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0136 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x01a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x019f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x017c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:56:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:70:0x014a  */
    /* JADX WARN: Code duplicated, block: B:71:0x014b A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0151  */
    /* JADX WARN: Code duplicated, block: B:75:0x0155  */
    /* JADX WARN: Code duplicated, block: B:76:0x0157 A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x016d A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0171 A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x0187 A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x018d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0190 A[Catch: IOException -> 0x0165, TryCatch #1 {IOException -> 0x0165, blocks: (B:68:0x0144, B:71:0x014b, B:77:0x015d, B:76:0x0157, B:83:0x016d, B:85:0x0171, B:87:0x017c, B:89:0x0187, B:93:0x0196, B:95:0x019b, B:92:0x0190, B:97:0x01a1, B:98:0x01a6, B:101:0x01aa, B:104:0x01b4, B:110:0x01c8, B:109:0x01c1), top: B:121:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x019a  */
    public final void a() throws IOException {
        long j;
        String str;
        long j2;
        boolean z;
        long jA;
        int iC;
        int i;
        long j3;
        long j4;
        kw kwVar;
        long j5;
        long j6;
        long j7;
        kw kwVar2;
        long j8;
        long j9;
        long j10;
        long j11;
        kw kwVar3;
        long j12;
        if (this.j) {
            throw new InterruptedIOException();
        }
        yv yvVar = this.b;
        String str2 = this.d;
        bd0 bd0Var = this.c;
        this.i = ((ok5) yvVar).a(str2, bd0Var.f, bd0Var.g);
        bd0 bd0Var2 = this.c;
        long j13 = bd0Var2.g;
        long j14 = -1;
        if (j13 != -1) {
            j = bd0Var2.f + j13;
            this.h = j;
        } else {
            long jA2 = i60.a(((ok5) this.b).b(this.d));
            j = jA2 == -1 ? -1L : jA2;
            this.h = j;
        }
        kw kwVar4 = this.f;
        if (kwVar4 != null) {
            kwVar4.a(j == -1 ? -1L : j - this.c.f, this.i, 0L);
        }
        while (true) {
            long j15 = this.h;
            if (j15 != j14 && this.g >= j15) {
                return;
            }
            if (this.j) {
                throw new InterruptedIOException();
            }
            long j16 = this.h;
            long jB = ((ok5) this.b).b(this.d, this.g, j16 == j14 ? Long.MAX_VALUE : j16 - this.g);
            if (jB > 0) {
                this.g += jB;
            } else {
                long j17 = -jB;
                long j18 = j17 == Long.MAX_VALUE ? j14 : j17;
                long j19 = this.g;
                int i2 = 0;
                boolean z2 = j19 + j18 == this.h || j18 == j14;
                if (j18 != j14) {
                    bd0 bd0Var3 = this.c;
                    Uri uri = bd0Var3.a;
                    long j20 = bd0Var3.b;
                    int i3 = bd0Var3.c;
                    byte[] bArr = bd0Var3.d;
                    Map map = bd0Var3.e;
                    String str3 = bd0Var3.h;
                    int i4 = bd0Var3.i;
                    Object obj = bd0Var3.j;
                    zj.a(uri, "The uri must be set.");
                    str = "The uri must be set.";
                    j2 = j19;
                    try {
                        jA = this.a.a(new bd0(uri, j20, i3, bArr, map, j19, j18, str3, i4, obj));
                        z = true;
                    } catch (IOException unused) {
                        zc0.a(this.a);
                        z = false;
                        jA = j14;
                    }
                    if (!z) {
                        if (!this.j) {
                            throw new InterruptedIOException();
                        }
                        bd0 bd0Var4 = this.c;
                        Uri uri2 = bd0Var4.a;
                        long j21 = bd0Var4.b;
                        int i5 = bd0Var4.c;
                        byte[] bArr2 = bd0Var4.d;
                        Map map2 = bd0Var4.e;
                        String str4 = bd0Var4.h;
                        int i6 = bd0Var4.i;
                        Object obj2 = bd0Var4.j;
                        zj.a(uri2, str);
                        try {
                            jA = this.a.a(new bd0(uri2, j21, i5, bArr2, map2, j2, -1L, str4, i6, obj2));
                        } catch (IOException e) {
                            zc0.a(this.a);
                            throw e;
                        }
                    }
                    if (z2 && jA != j14) {
                        j11 = j2 + jA;
                        try {
                            if (this.h == j11) {
                                this.h = j11;
                                kwVar3 = this.f;
                                if (kwVar3 != null) {
                                    if (j11 == j14) {
                                        j12 = j14;
                                    } else {
                                        j12 = j11 - this.c.f;
                                    }
                                    kwVar3.a(j12, this.i, 0L);
                                }
                            }
                        } catch (IOException e2) {
                            zc0.a(this.a);
                            throw e2;
                        }
                    }
                    iC = 0;
                    i = 0;
                    while (iC != -1) {
                        if (!this.j) {
                            throw new InterruptedIOException();
                        }
                        cw cwVar = this.a;
                        byte[] bArr3 = this.e;
                        iC = cwVar.c(bArr3, i2, bArr3.length);
                        if (iC != -1) {
                            j6 = iC;
                            j7 = this.i + j6;
                            this.i = j7;
                            kwVar2 = this.f;
                            if (kwVar2 != null) {
                                j9 = this.h;
                                if (j9 == j14) {
                                    j10 = j14;
                                    j8 = j10;
                                } else {
                                    j8 = j14;
                                    j10 = j9 - this.c.f;
                                }
                                kwVar2.a(j10, j7, j6);
                            } else {
                                j8 = j14;
                            }
                            i += iC;
                            j14 = j8;
                            i2 = 0;
                        }
                    }
                    j3 = j14;
                    if (z2) {
                        j4 = j2 + ((long) i);
                        if (this.h == j4) {
                            this.h = j4;
                            kwVar = this.f;
                            if (kwVar != null) {
                                if (j4 == j3) {
                                    j5 = j3;
                                } else {
                                    j5 = j4 - this.c.f;
                                }
                                kwVar.a(j5, this.i, 0L);
                            }
                        }
                    }
                    this.a.close();
                    this.g = j2 + ((long) i);
                    j14 = j3;
                } else {
                    str = "The uri must be set.";
                    j2 = j19;
                }
                z = false;
                jA = j14;
                if (!z) {
                    if (!this.j) {
                        throw new InterruptedIOException();
                    }
                    bd0 bd0Var5 = this.c;
                    Uri uri3 = bd0Var5.a;
                    long j22 = bd0Var5.b;
                    int i7 = bd0Var5.c;
                    byte[] bArr4 = bd0Var5.d;
                    Map map3 = bd0Var5.e;
                    String str5 = bd0Var5.h;
                    int i8 = bd0Var5.i;
                    Object obj3 = bd0Var5.j;
                    zj.a(uri3, str);
                    jA = this.a.a(new bd0(uri3, j22, i7, bArr4, map3, j2, -1L, str5, i8, obj3));
                }
                if (z2) {
                    j11 = j2 + jA;
                    if (this.h == j11) {
                        this.h = j11;
                        kwVar3 = this.f;
                        if (kwVar3 != null) {
                            if (j11 == j14) {
                                j12 = j14;
                            } else {
                                j12 = j11 - this.c.f;
                            }
                            kwVar3.a(j12, this.i, 0L);
                        }
                    }
                }
                iC = 0;
                i = 0;
                while (iC != -1) {
                    if (!this.j) {
                        throw new InterruptedIOException();
                    }
                    cw cwVar2 = this.a;
                    byte[] bArr5 = this.e;
                    iC = cwVar2.c(bArr5, i2, bArr5.length);
                    if (iC != -1) {
                        j6 = iC;
                        j7 = this.i + j6;
                        this.i = j7;
                        kwVar2 = this.f;
                        if (kwVar2 != null) {
                            j9 = this.h;
                            if (j9 == j14) {
                                j10 = j14;
                                j8 = j10;
                            } else {
                                j8 = j14;
                                j10 = j9 - this.c.f;
                            }
                            kwVar2.a(j10, j7, j6);
                        } else {
                            j8 = j14;
                        }
                        i += iC;
                        j14 = j8;
                        i2 = 0;
                    }
                }
                j3 = j14;
                if (z2) {
                    j4 = j2 + ((long) i);
                    if (this.h == j4) {
                        this.h = j4;
                        kwVar = this.f;
                        if (kwVar != null) {
                            if (j4 == j3) {
                                j5 = j3;
                            } else {
                                j5 = j4 - this.c.f;
                            }
                            kwVar.a(j5, this.i, 0L);
                        }
                    }
                }
                this.a.close();
                this.g = j2 + ((long) i);
                j14 = j3;
            }
        }
    }
}
