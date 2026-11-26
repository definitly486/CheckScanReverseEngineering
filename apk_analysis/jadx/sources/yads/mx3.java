package yads;

import android.util.Pair;
import android.util.SparseArray;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import defpackage.kv2;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class mx3 implements ws2 {
    public static final byte[] c0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] d0 = u56.c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    public static final byte[] e0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    public static final byte[] f0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
    public static final UUID g0 = new UUID(72057594037932032L, -9223371306706625679L);
    public static final Map h0;
    public long A;
    public long B;
    public vv3 C;
    public vv3 D;
    public boolean E;
    public boolean F;
    public int G;
    public long H;
    public long I;
    public int J;
    public int K;
    public int[] L;
    public int M;
    public int N;
    public int O;
    public int P;
    public boolean Q;
    public long R;
    public int S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public boolean X;
    public int Y;
    public byte Z;
    public final uk0 a;
    public boolean a0;
    public final o76 b;
    public zs2 b0;
    public final SparseArray c;
    public final boolean d;
    public final os4 e;
    public final os4 f;
    public final os4 g;
    public final os4 h;
    public final os4 i;
    public final os4 j;
    public final os4 k;
    public final os4 l;
    public final os4 m;
    public final os4 n;
    public ByteBuffer o;
    public long p;
    public long q;
    public long r;
    public long s;
    public long t;
    public lx3 u;
    public boolean v;
    public int w;
    public long x;
    public boolean y;
    public long z;

    static {
        HashMap map = new HashMap();
        jx3.a(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        jx3.a(180, map, "htc_video_rotA-180", 270, "htc_video_rotA-270");
        h0 = Collections.unmodifiableMap(map);
    }

    public mx3(int i) {
        uk0 uk0Var = new uk0();
        this.q = -1L;
        this.r = C.TIME_UNSET;
        this.s = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        this.z = -1L;
        this.A = -1L;
        this.B = C.TIME_UNSET;
        this.a = uk0Var;
        uk0Var.d = new kx3(this);
        this.d = (i & 1) == 0;
        this.b = new o76();
        this.c = new SparseArray();
        this.g = new os4(4);
        this.h = new os4(ByteBuffer.allocate(4).putInt(-1).array());
        this.i = new os4(4);
        this.e = new os4(qd4.a);
        this.f = new os4(4);
        this.j = new os4();
        this.k = new os4();
        this.l = new os4(8);
        this.m = new os4();
        this.n = new os4();
        this.L = new int[1];
    }

    public final int a(wk0 wk0Var, lx3 lx3Var, int i, boolean z) throws xs4 {
        int iA;
        int iA2;
        int i2;
        if ("S_TEXT/UTF8".equals(lx3Var.b)) {
            a(wk0Var, c0, i);
            int i3 = this.T;
            b();
            return i3;
        }
        if ("S_TEXT/ASS".equals(lx3Var.b)) {
            a(wk0Var, e0, i);
            int i4 = this.T;
            b();
            return i4;
        }
        if ("S_TEXT/WEBVTT".equals(lx3Var.b)) {
            a(wk0Var, f0, i);
            int i5 = this.T;
            b();
            return i5;
        }
        k06 k06Var = lx3Var.X;
        if (!this.V) {
            if (lx3Var.h) {
                this.O &= -1073741825;
                if (!this.W) {
                    wk0Var.a(this.g.a, 0, 1, false);
                    this.S++;
                    byte b = this.g.a[0];
                    if ((b & 128) == 128) {
                        defpackage.e2.h("Extension bit is set in signal byte", null);
                        return 0;
                    }
                    this.Z = b;
                    this.W = true;
                }
                byte b2 = this.Z;
                if ((b2 & 1) == 1) {
                    boolean z2 = (b2 & 2) == 2;
                    this.O |= 1073741824;
                    if (!this.a0) {
                        wk0Var.a(this.l.a, 0, 8, false);
                        this.S += 8;
                        this.a0 = true;
                        os4 os4Var = this.g;
                        os4Var.a[0] = (byte) ((z2 ? 128 : 0) | 8);
                        os4Var.e(0);
                        k06Var.a(1, this.g);
                        this.T++;
                        this.l.e(0);
                        k06Var.a(8, this.l);
                        this.T += 8;
                    }
                    if (z2) {
                        if (!this.X) {
                            wk0Var.a(this.g.a, 0, 1, false);
                            this.S++;
                            this.g.e(0);
                            this.Y = this.g.k();
                            this.X = true;
                        }
                        int i6 = this.Y * 4;
                        this.g.c(i6);
                        wk0Var.a(this.g.a, 0, i6, false);
                        this.S += i6;
                        short s = (short) ((this.Y / 2) + 1);
                        int i7 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.o;
                        if (byteBuffer == null || byteBuffer.capacity() < i7) {
                            this.o = ByteBuffer.allocate(i7);
                        }
                        this.o.position(0);
                        this.o.putShort(s);
                        int i8 = 0;
                        int i9 = 0;
                        while (true) {
                            i2 = this.Y;
                            if (i8 >= i2) {
                                break;
                            }
                            int iN = this.g.n();
                            int i10 = i8 % 2;
                            ByteBuffer byteBuffer2 = this.o;
                            if (i10 == 0) {
                                byteBuffer2.putShort((short) (iN - i9));
                            } else {
                                byteBuffer2.putInt(iN - i9);
                            }
                            i8++;
                            i9 = iN;
                        }
                        int i11 = (i - this.S) - i9;
                        int i12 = i2 % 2;
                        ByteBuffer byteBuffer3 = this.o;
                        if (i12 == 1) {
                            byteBuffer3.putInt(i11);
                        } else {
                            byteBuffer3.putShort((short) i11);
                            this.o.putInt(0);
                        }
                        os4 os4Var2 = this.m;
                        os4Var2.a = this.o.array();
                        os4Var2.c = i7;
                        os4Var2.b = 0;
                        k06Var.a(i7, this.m);
                        this.T += i7;
                    }
                }
            } else {
                byte[] bArr = lx3Var.i;
                if (bArr != null) {
                    os4 os4Var3 = this.j;
                    int length = bArr.length;
                    os4Var3.a = bArr;
                    os4Var3.c = length;
                    os4Var3.b = 0;
                }
            }
            if (!"A_OPUS".equals(lx3Var.b)) {
                z = lx3Var.f > 0;
            }
            if (z) {
                this.O |= 268435456;
                this.n.c(0);
                int i13 = (this.j.c + i) - this.S;
                this.g.c(4);
                os4 os4Var4 = this.g;
                byte[] bArr2 = os4Var4.a;
                bArr2[0] = (byte) ((i13 >> 24) & 255);
                bArr2[1] = (byte) ((i13 >> 16) & 255);
                bArr2[2] = (byte) ((i13 >> 8) & 255);
                bArr2[3] = (byte) (i13 & 255);
                k06Var.a(4, os4Var4);
                this.T += 4;
            }
            this.V = true;
        }
        int i14 = i + this.j.c;
        if (!"V_MPEG4/ISO/AVC".equals(lx3Var.b) && !"V_MPEGH/ISO/HEVC".equals(lx3Var.b)) {
            j26 j26Var = lx3Var.T;
            if (j26Var != null) {
                if (this.j.c != 0) {
                    defpackage.ud.g();
                    return 0;
                }
                j26Var.a(wk0Var);
            }
            while (true) {
                int i15 = this.S;
                if (i15 >= i14) {
                    break;
                }
                int i16 = i14 - i15;
                os4 os4Var5 = this.j;
                int i17 = os4Var5.c - os4Var5.b;
                if (i17 > 0) {
                    iA2 = Math.min(i16, i17);
                    k06Var.a(iA2, this.j);
                } else {
                    iA2 = k06Var.a(wk0Var, i16, false);
                }
                this.S += iA2;
                this.T += iA2;
            }
        } else {
            byte[] bArr3 = this.f.a;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i18 = lx3Var.Y;
            int i19 = 4 - i18;
            while (this.S < i14) {
                int i20 = this.U;
                os4 os4Var6 = this.j;
                if (i20 == 0) {
                    int iMin = Math.min(i18, os4Var6.c - os4Var6.b);
                    wk0Var.a(bArr3, i19 + iMin, i18 - iMin, false);
                    if (iMin > 0) {
                        this.j.a(bArr3, i19, iMin);
                    }
                    this.S += i18;
                    this.f.e(0);
                    this.U = this.f.n();
                    this.e.e(0);
                    k06Var.a(4, this.e);
                    this.T += 4;
                } else {
                    int i21 = os4Var6.c - os4Var6.b;
                    if (i21 > 0) {
                        iA = Math.min(i20, i21);
                        k06Var.a(iA, this.j);
                    } else {
                        iA = k06Var.a(wk0Var, i20, false);
                    }
                    this.S += iA;
                    this.T += iA;
                    this.U -= iA;
                }
            }
        }
        if ("A_VORBIS".equals(lx3Var.b)) {
            this.h.e(0);
            k06Var.a(4, this.h);
            this.T += 4;
        }
        int i22 = this.T;
        b();
        return i22;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:228:0x0353  */
    /* JADX WARN: Code duplicated, block: B:503:0x0847  */
    /* JADX WARN: Code duplicated, block: B:508:0x085c  */
    /* JADX WARN: Code duplicated, block: B:509:0x085e  */
    /* JADX WARN: Code duplicated, block: B:512:0x0871  */
    /* JADX WARN: Code duplicated, block: B:513:0x087d  */
    /* JADX WARN: Code duplicated, block: B:515:0x0889  */
    /* JADX WARN: Code duplicated, block: B:517:0x088d  */
    /* JADX WARN: Code duplicated, block: B:519:0x0892  */
    /* JADX WARN: Code duplicated, block: B:522:0x089a  */
    /* JADX WARN: Code duplicated, block: B:524:0x089f  */
    /* JADX WARN: Code duplicated, block: B:527:0x08a6  */
    /* JADX WARN: Code duplicated, block: B:530:0x08b4  */
    /* JADX WARN: Code duplicated, block: B:533:0x08b9  */
    /* JADX WARN: Code duplicated, block: B:535:0x08bf  */
    /* JADX WARN: Code duplicated, block: B:555:0x0984  */
    /* JADX WARN: Code duplicated, block: B:557:0x0991  */
    /* JADX WARN: Code duplicated, block: B:560:0x0996  */
    /* JADX WARN: Code duplicated, block: B:562:0x099e  */
    /* JADX WARN: Code duplicated, block: B:563:0x09ab  */
    /* JADX WARN: Code duplicated, block: B:566:0x09b0  */
    /* JADX WARN: Code duplicated, block: B:585:0x09fd  */
    /* JADX WARN: Code duplicated, block: B:587:0x0a16  */
    /* JADX WARN: Code duplicated, block: B:589:0x0a1e  */
    /* JADX WARN: Code duplicated, block: B:605:0x0a53  */
    /* JADX WARN: Code duplicated, block: B:91:0x019a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, yads.lx3] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Exception] */
    public final void b(int i) throws xs4 {
        byte b;
        int i2;
        int i3;
        int i4;
        List list;
        List list2;
        Pair pair;
        String str;
        String str2;
        int iB;
        List list3;
        List list4;
        List list5;
        List list6;
        byte[] bArr;
        int i5;
        uz2 uz2Var;
        int i6;
        int i7;
        float f;
        x20 x20Var;
        String str3;
        int iIntValue;
        int i8;
        Map map;
        byte[] bArr2;
        int i9;
        int i10;
        int i11;
        String str4;
        rj2 rj2VarA;
        List list7;
        boolean z;
        sh5 rh5Var;
        int i12;
        int i13;
        zs2 zs2Var = this.b0;
        if (zs2Var == null) {
            defpackage.ud.g();
            return;
        }
        int i14 = 0;
        if (i == 160) {
            if (this.G != 2) {
                return;
            }
            lx3 lx3Var = (lx3) this.c.get(this.M);
            lx3Var.X.getClass();
            if (this.R > 0 && "A_OPUS".equals(lx3Var.b)) {
                this.n.a(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i15 = 0;
            for (int i16 = 0; i16 < this.K; i16++) {
                i15 += this.L[i16];
            }
            int i17 = 0;
            while (i17 < this.K) {
                long j = this.H + ((long) ((lx3Var.e * i17) / 1000));
                int i18 = this.O;
                if (i17 == 0 && !this.Q) {
                    i18 |= 1;
                }
                int i19 = this.L[i17];
                int i20 = i15 - i19;
                a(lx3Var, j, i18, i19, i20);
                i17++;
                i15 = i20;
            }
            this.G = 0;
            return;
        }
        if (i != 174) {
            if (i == 19899) {
                int i21 = this.w;
                if (i21 != -1) {
                    long j2 = this.x;
                    if (j2 != -1) {
                        if (i21 == 475249515) {
                            this.z = j2;
                            return;
                        }
                        return;
                    }
                }
                defpackage.e2.h("Mandatory element SeekID or SeekPosition not found", null);
                return;
            }
            if (i == 25152) {
                a(i);
                lx3 lx3Var2 = this.u;
                if (lx3Var2.h) {
                    j06 j06Var = lx3Var2.j;
                    if (j06Var != null) {
                        lx3Var2.l = new ql2(null, true, new pl2(uv.a, null, MimeTypes.VIDEO_WEBM, j06Var.b));
                        return;
                    } else {
                        defpackage.e2.h("Encrypted Track found but ContentEncKeyID was not found", null);
                        return;
                    }
                }
                return;
            }
            if (i == 28032) {
                a(i);
                lx3 lx3Var3 = this.u;
                if (!lx3Var3.h || lx3Var3.i == null) {
                    return;
                }
                defpackage.e2.h("Combining encryption and compression is not supported", null);
                return;
            }
            if (i == 357149030) {
                if (this.r == C.TIME_UNSET) {
                    this.r = 1000000L;
                }
                long j3 = this.s;
                if (j3 != C.TIME_UNSET) {
                    this.t = a(j3);
                    return;
                }
                return;
            }
            if (i == 374648427) {
                if (this.c.size() != 0) {
                    this.b0.a();
                    return;
                } else {
                    defpackage.e2.h("No valid tracks were found", null);
                    return;
                }
            }
            if (i != 475249515) {
                return;
            }
            if (!this.v) {
                vv3 vv3Var = this.C;
                vv3 vv3Var2 = this.D;
                if (this.q == -1 || this.t == C.TIME_UNSET || vv3Var == null || (i12 = vv3Var.a) == 0 || vv3Var2 == null || vv3Var2.a != i12) {
                    z = true;
                    rh5Var = new rh5(this.t, 0L);
                } else {
                    int[] iArrCopyOf = new int[i12];
                    long[] jArrCopyOf = new long[i12];
                    long[] jArrCopyOf2 = new long[i12];
                    long[] jArrCopyOf3 = new long[i12];
                    for (int i22 = 0; i22 < i12; i22++) {
                        jArrCopyOf3[i22] = vv3Var.a(i22);
                        jArrCopyOf[i22] = vv3Var2.a(i22) + this.q;
                    }
                    z = true;
                    while (true) {
                        i13 = i12 - 1;
                        if (i14 >= i13) {
                            break;
                        }
                        int i23 = i14 + 1;
                        iArrCopyOf[i14] = (int) (jArrCopyOf[i23] - jArrCopyOf[i14]);
                        jArrCopyOf2[i14] = jArrCopyOf3[i23] - jArrCopyOf3[i14];
                        i14 = i23;
                    }
                    iArrCopyOf[i13] = (int) ((this.q + this.p) - jArrCopyOf[i13]);
                    long j4 = this.t - jArrCopyOf3[i13];
                    jArrCopyOf2[i13] = j4;
                    if (j4 <= 0) {
                        sv3.d("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j4);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i13);
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i13);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i13);
                        jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i13);
                    }
                    rh5Var = new gz(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
                }
                zs2Var.a(rh5Var);
                this.v = z;
            }
            this.C = null;
            this.D = null;
            return;
        }
        ?? r1 = this.u;
        if (r1 == 0) {
            defpackage.ud.g();
            return;
        }
        String str5 = r1.b;
        if (str5 == null) {
            defpackage.e2.h("CodecId is missing in TrackEntry element", null);
            return;
        }
        switch (str5) {
            case "V_MPEG4/ISO/AP":
            case "V_MPEG4/ISO/SP":
            case "A_MS/ACM":
            case "A_TRUEHD":
            case "A_VORBIS":
            case "A_MPEG/L2":
            case "A_MPEG/L3":
            case "V_MS/VFW/FOURCC":
            case "S_DVBSUB":
            case "V_MPEG4/ISO/ASP":
            case "V_MPEG4/ISO/AVC":
            case "S_VOBSUB":
            case "A_DTS/LOSSLESS":
            case "A_AAC":
            case "A_AC3":
            case "A_DTS":
            case "V_AV1":
            case "V_VP8":
            case "V_VP9":
            case "S_HDMV/PGS":
            case "V_THEORA":
            case "A_DTS/EXPRESS":
            case "A_PCM/FLOAT/IEEE":
            case "A_PCM/INT/BIG":
            case "A_PCM/INT/LIT":
            case "S_TEXT/ASS":
            case "V_MPEGH/ISO/HEVC":
            case "S_TEXT/WEBVTT":
            case "S_TEXT/UTF8":
            case "V_MPEG2":
            case "A_EAC3":
            case "A_FLAC":
            case "A_OPUS":
                int i24 = r1.c;
                switch (str5) {
                    case "V_MPEG4/ISO/AP":
                        b = 0;
                        break;
                    case "V_MPEG4/ISO/SP":
                        b = 1;
                        break;
                    case "A_MS/ACM":
                        b = 2;
                        break;
                    case "A_TRUEHD":
                        b = 3;
                        break;
                    case "A_VORBIS":
                        b = 4;
                        break;
                    case "A_MPEG/L2":
                        b = 5;
                        break;
                    case "A_MPEG/L3":
                        b = 6;
                        break;
                    case "V_MS/VFW/FOURCC":
                        b = 7;
                        break;
                    case "S_DVBSUB":
                        b = 8;
                        break;
                    case "V_MPEG4/ISO/ASP":
                        b = 9;
                        break;
                    case "V_MPEG4/ISO/AVC":
                        b = 10;
                        break;
                    case "S_VOBSUB":
                        b = 11;
                        break;
                    case "A_DTS/LOSSLESS":
                        b = 12;
                        break;
                    case "A_AAC":
                        b = 13;
                        break;
                    case "A_AC3":
                        b = 14;
                        break;
                    case "A_DTS":
                        b = 15;
                        break;
                    case "V_AV1":
                        b = 16;
                        break;
                    case "V_VP8":
                        b = 17;
                        break;
                    case "V_VP9":
                        b = 18;
                        break;
                    case "S_HDMV/PGS":
                        b = 19;
                        break;
                    case "V_THEORA":
                        b = 20;
                        break;
                    case "A_DTS/EXPRESS":
                        b = 21;
                        break;
                    case "A_PCM/FLOAT/IEEE":
                        b = 22;
                        break;
                    case "A_PCM/INT/BIG":
                        b = 23;
                        break;
                    case "A_PCM/INT/LIT":
                        b = 24;
                        break;
                    case "S_TEXT/ASS":
                        b = 25;
                        break;
                    case "V_MPEGH/ISO/HEVC":
                        b = 26;
                        break;
                    case "S_TEXT/WEBVTT":
                        b = 27;
                        break;
                    case "S_TEXT/UTF8":
                        b = 28;
                        break;
                    case "V_MPEG2":
                        b = 29;
                        break;
                    case "A_EAC3":
                        b = 30;
                        break;
                    case "A_FLAC":
                        b = 31;
                        break;
                    case "A_OPUS":
                        b = 32;
                        break;
                    default:
                        b = -1;
                        break;
                }
                String str6 = MimeTypes.AUDIO_RAW;
                switch (b) {
                    case 0:
                    case 1:
                    case 9:
                        i2 = 1;
                        byte[] bArr3 = r1.k;
                        str6 = MimeTypes.VIDEO_MP4V;
                        List listSingletonList = bArr3 == null ? null : Collections.singletonList(bArr3);
                        i3 = -1;
                        list7 = listSingletonList;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null && (rj2VarA = rj2.a(new os4(bArr))) != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z2 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i25 = (z2 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6 || (i9 = r1.p) == i6) {
                                f = -1.0f;
                            } else {
                                f = (r1.n * i7) / (r1.m * i9);
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f || r1.E == -1.0f || r1.F == -1.0f || r1.G == -1.0f || r1.H == -1.0f || r1.I == -1.0f || r1.J == -1.0f || r1.K == -1.0f || r1.L == -1.0f || r1.M == -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = new byte[25];
                                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
                                    byteBufferOrder.put((byte) 0);
                                    byteBufferOrder.putShort((short) ((r1.D * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.E * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.F * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.G * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.H * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.I * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.J * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) ((r1.K * 50000.0f) + 0.5f));
                                    byteBufferOrder.putShort((short) (r1.L + 0.5f));
                                    byteBufferOrder.putShort((short) (r1.M + 0.5f));
                                    byteBufferOrder.putShort((short) r1.B);
                                    byteBufferOrder.putShort((short) r1.C);
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0 || Float.compare(r1.s, 0.0f) != 0 || Float.compare(r1.t, 0.0f) != 0) {
                                i8 = iIntValue;
                            } else if (Float.compare(r1.u, 0.0f) == 0) {
                                i8 = 0;
                            } else if (Float.compare(r1.t, 90.0f) == 0) {
                                i8 = 90;
                            } else if (Float.compare(r1.t, -180.0f) == 0 || Float.compare(r1.t, 180.0f) == 0) {
                                i8 = 180;
                            } else if (Float.compare(r1.t, -90.0f) == 0) {
                                i8 = 270;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6) && !MimeTypes.TEXT_SSA.equals(str6) && !MimeTypes.TEXT_VTT.equals(str6) && !MimeTypes.APPLICATION_VOBSUB.equals(str6) && !MimeTypes.APPLICATION_PGS.equals(str6) && !MimeTypes.APPLICATION_DVBSUBS.equals(str6)) {
                                defpackage.e2.h("Unexpected MIME type.", null);
                                return;
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null && !h0.containsKey(str4)) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i25;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var = new vz2(uz2Var);
                        k06 k06VarA = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA;
                        k06VarA.a(vz2Var);
                        this.c.put(r1.c, r1);
                        break;
                    case 2:
                        os4 os4Var = new os4(r1.a(str5));
                        try {
                            int iF = os4Var.f();
                            i2 = 1;
                            if (iF != 1) {
                                if (iF == 65534) {
                                    os4Var.e(24);
                                    long jG = os4Var.g();
                                    UUID uuid = g0;
                                    if (jG != uuid.getMostSignificantBits() || os4Var.g() != uuid.getLeastSignificantBits()) {
                                    }
                                    str6 = MimeTypes.AUDIO_UNKNOWN;
                                    i3 = -1;
                                    list7 = listSingletonList;
                                    i4 = -1;
                                    list = list7;
                                    str2 = null;
                                    list6 = list;
                                    bArr = r1.N;
                                    if (bArr != null) {
                                        str2 = rj2VarA.a;
                                        str6 = MimeTypes.VIDEO_DOLBY_VISION;
                                    }
                                    boolean z3 = r1.V;
                                    if (r1.U) {
                                        i5 = 2;
                                    } else {
                                        i5 = 0;
                                    }
                                    int i26 = (z3 ? 1 : 0) | i5;
                                    uz2Var = new uz2();
                                    if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                        uz2Var.x = r1.O;
                                        uz2Var.y = r1.Q;
                                        uz2Var.z = i4;
                                    } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                        if (r1.q == 0) {
                                            i10 = r1.o;
                                            i6 = -1;
                                            if (i10 == -1) {
                                                i10 = r1.m;
                                            }
                                            r1.o = i10;
                                            i11 = r1.p;
                                            if (i11 == -1) {
                                                i11 = r1.n;
                                            }
                                            r1.p = i11;
                                        } else {
                                            i6 = -1;
                                        }
                                        i7 = r1.o;
                                        if (i7 != i6) {
                                            f = -1.0f;
                                        } else {
                                            f = -1.0f;
                                        }
                                        if (r1.x) {
                                            if (r1.D != -1.0f) {
                                                bArr2 = null;
                                            } else {
                                                bArr2 = null;
                                            }
                                            x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                        } else {
                                            x20Var = null;
                                        }
                                        str3 = r1.a;
                                        if (str3 != null) {
                                            map = h0;
                                            if (map.containsKey(str3)) {
                                                iIntValue = ((Integer) map.get(r1.a)).intValue();
                                            } else {
                                                iIntValue = -1;
                                            }
                                        } else {
                                            iIntValue = -1;
                                        }
                                        if (r1.r == 0) {
                                            i8 = iIntValue;
                                        } else {
                                            i8 = iIntValue;
                                        }
                                        uz2Var.p = r1.m;
                                        uz2Var.q = r1.n;
                                        uz2Var.t = f;
                                        uz2Var.s = i8;
                                        uz2Var.u = r1.v;
                                        uz2Var.v = r1.w;
                                        uz2Var.w = x20Var;
                                        i2 = 2;
                                    } else {
                                        if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                        }
                                        i2 = 3;
                                    }
                                    str4 = r1.a;
                                    if (str4 != null) {
                                        uz2Var.b = r1.a;
                                    }
                                    uz2Var.a = Integer.toString(i24);
                                    uz2Var.k = str6;
                                    uz2Var.l = i3;
                                    uz2Var.c = r1.W;
                                    uz2Var.d = i26;
                                    uz2Var.m = list6;
                                    uz2Var.h = str2;
                                    uz2Var.n = r1.l;
                                    vz2 vz2Var2 = new vz2(uz2Var);
                                    k06 k06VarA2 = zs2Var.a(r1.c, i2);
                                    r1.X = k06VarA2;
                                    k06VarA2.a(vz2Var2);
                                    this.c.put(r1.c, r1);
                                }
                                sv3.d("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                str6 = MimeTypes.AUDIO_UNKNOWN;
                                i3 = -1;
                                list7 = listSingletonList;
                                i4 = -1;
                                list = list7;
                                str2 = null;
                                list6 = list;
                                bArr = r1.N;
                                if (bArr != null) {
                                    str2 = rj2VarA.a;
                                    str6 = MimeTypes.VIDEO_DOLBY_VISION;
                                }
                                boolean z4 = r1.V;
                                if (r1.U) {
                                    i5 = 2;
                                } else {
                                    i5 = 0;
                                }
                                int i27 = (z4 ? 1 : 0) | i5;
                                uz2Var = new uz2();
                                if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                    uz2Var.x = r1.O;
                                    uz2Var.y = r1.Q;
                                    uz2Var.z = i4;
                                } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                    if (r1.q == 0) {
                                        i10 = r1.o;
                                        i6 = -1;
                                        if (i10 == -1) {
                                            i10 = r1.m;
                                        }
                                        r1.o = i10;
                                        i11 = r1.p;
                                        if (i11 == -1) {
                                            i11 = r1.n;
                                        }
                                        r1.p = i11;
                                    } else {
                                        i6 = -1;
                                    }
                                    i7 = r1.o;
                                    if (i7 != i6) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (r1.x) {
                                        if (r1.D != -1.0f) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = null;
                                        }
                                        x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                    } else {
                                        x20Var = null;
                                    }
                                    str3 = r1.a;
                                    if (str3 != null) {
                                        map = h0;
                                        if (map.containsKey(str3)) {
                                            iIntValue = ((Integer) map.get(r1.a)).intValue();
                                        } else {
                                            iIntValue = -1;
                                        }
                                    } else {
                                        iIntValue = -1;
                                    }
                                    if (r1.r == 0) {
                                        i8 = iIntValue;
                                    } else {
                                        i8 = iIntValue;
                                    }
                                    uz2Var.p = r1.m;
                                    uz2Var.q = r1.n;
                                    uz2Var.t = f;
                                    uz2Var.s = i8;
                                    uz2Var.u = r1.v;
                                    uz2Var.v = r1.w;
                                    uz2Var.w = x20Var;
                                    i2 = 2;
                                } else {
                                    if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                    }
                                    i2 = 3;
                                }
                                str4 = r1.a;
                                if (str4 != null) {
                                    uz2Var.b = r1.a;
                                }
                                uz2Var.a = Integer.toString(i24);
                                uz2Var.k = str6;
                                uz2Var.l = i3;
                                uz2Var.c = r1.W;
                                uz2Var.d = i27;
                                uz2Var.m = list6;
                                uz2Var.h = str2;
                                uz2Var.n = r1.l;
                                vz2 vz2Var3 = new vz2(uz2Var);
                                k06 k06VarA3 = zs2Var.a(r1.c, i2);
                                r1.X = k06VarA3;
                                k06VarA3.a(vz2Var3);
                                this.c.put(r1.c, r1);
                                break;
                            }
                            int iB2 = u56.b(r1.P);
                            if (iB2 == 0) {
                                sv3.d("MatroskaExtractor", "Unsupported PCM bit depth: " + r1.P + ". Setting mimeType to audio/x-unknown");
                                str6 = MimeTypes.AUDIO_UNKNOWN;
                                i3 = -1;
                                list7 = listSingletonList;
                                i4 = -1;
                                list = list7;
                            } else {
                                i4 = iB2;
                                list = null;
                                i3 = -1;
                            }
                            str2 = null;
                            list6 = list;
                            bArr = r1.N;
                            if (bArr != null) {
                                str2 = rj2VarA.a;
                                str6 = MimeTypes.VIDEO_DOLBY_VISION;
                            }
                            boolean z5 = r1.V;
                            if (r1.U) {
                                i5 = 2;
                            } else {
                                i5 = 0;
                            }
                            int i28 = (z5 ? 1 : 0) | i5;
                            uz2Var = new uz2();
                            if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                uz2Var.x = r1.O;
                                uz2Var.y = r1.Q;
                                uz2Var.z = i4;
                            } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                if (r1.q == 0) {
                                    i10 = r1.o;
                                    i6 = -1;
                                    if (i10 == -1) {
                                        i10 = r1.m;
                                    }
                                    r1.o = i10;
                                    i11 = r1.p;
                                    if (i11 == -1) {
                                        i11 = r1.n;
                                    }
                                    r1.p = i11;
                                } else {
                                    i6 = -1;
                                }
                                i7 = r1.o;
                                if (i7 != i6) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (r1.x) {
                                    if (r1.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                } else {
                                    x20Var = null;
                                }
                                str3 = r1.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = ((Integer) map.get(r1.a)).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (r1.r == 0) {
                                    i8 = iIntValue;
                                } else {
                                    i8 = iIntValue;
                                }
                                uz2Var.p = r1.m;
                                uz2Var.q = r1.n;
                                uz2Var.t = f;
                                uz2Var.s = i8;
                                uz2Var.u = r1.v;
                                uz2Var.v = r1.w;
                                uz2Var.w = x20Var;
                                i2 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                }
                                i2 = 3;
                            }
                            str4 = r1.a;
                            if (str4 != null) {
                                uz2Var.b = r1.a;
                            }
                            uz2Var.a = Integer.toString(i24);
                            uz2Var.k = str6;
                            uz2Var.l = i3;
                            uz2Var.c = r1.W;
                            uz2Var.d = i28;
                            uz2Var.m = list6;
                            uz2Var.h = str2;
                            uz2Var.n = r1.l;
                            vz2 vz2Var4 = new vz2(uz2Var);
                            k06 k06VarA4 = zs2Var.a(r1.c, i2);
                            r1.X = k06VarA4;
                            k06VarA4.a(vz2Var4);
                            this.c.put(r1.c, r1);
                        } catch (ArrayIndexOutOfBoundsException unused) {
                            defpackage.e2.h("Error parsing MS/ACM codec private", null);
                            return;
                        }
                        break;
                    case 3:
                        r1.T = new j26();
                        str6 = MimeTypes.AUDIO_TRUEHD;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z6 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i29 = (z6 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i29;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var5 = new vz2(uz2Var);
                        k06 k06VarA5 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA5;
                        k06VarA5.a(vz2Var5);
                        this.c.put(r1.c, r1);
                        break;
                    case 4:
                        byte[] bArrA = r1.a(str5);
                        try {
                            try {
                                if (bArrA[0] != 2) {
                                    throw new xs4("Error parsing vorbis codec private", null, true, 1);
                                }
                                int i30 = 0;
                                int i31 = 1;
                                while (true) {
                                    int i32 = bArrA[i31] & 255;
                                    if (i32 != 255) {
                                        int i33 = i31 + 1;
                                        int i34 = i30 + i32;
                                        int i35 = 0;
                                        while (true) {
                                            int i36 = bArrA[i33] & 255;
                                            if (i36 != 255) {
                                                int i37 = i33 + 1;
                                                int i38 = i35 + i36;
                                                if (bArrA[i37] != 1) {
                                                    throw new xs4("Error parsing vorbis codec private", null, true, 1);
                                                }
                                                byte[] bArr4 = new byte[i34];
                                                System.arraycopy(bArrA, i37, bArr4, 0, i34);
                                                int i39 = i37 + i34;
                                                if (bArrA[i39] != 3) {
                                                    throw new xs4("Error parsing vorbis codec private", null, true, 1);
                                                }
                                                int i40 = i39 + i38;
                                                if (bArrA[i40] != 5) {
                                                    throw new xs4("Error parsing vorbis codec private", null, true, 1);
                                                }
                                                byte[] bArr5 = new byte[bArrA.length - i40];
                                                System.arraycopy(bArrA, i40, bArr5, 0, bArrA.length - i40);
                                                ArrayList arrayList = new ArrayList(2);
                                                arrayList.add(bArr4);
                                                arrayList.add(bArr5);
                                                str6 = MimeTypes.AUDIO_VORBIS;
                                                i3 = 8192;
                                                list2 = arrayList;
                                                i2 = 1;
                                                list7 = list2;
                                                i4 = -1;
                                                list = list7;
                                                str2 = null;
                                                list6 = list;
                                                bArr = r1.N;
                                                if (bArr != null) {
                                                    str2 = rj2VarA.a;
                                                    str6 = MimeTypes.VIDEO_DOLBY_VISION;
                                                }
                                                boolean z7 = r1.V;
                                                if (r1.U) {
                                                    i5 = 2;
                                                } else {
                                                    i5 = 0;
                                                }
                                                int i210 = (z7 ? 1 : 0) | i5;
                                                uz2Var = new uz2();
                                                if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                                    uz2Var.x = r1.O;
                                                    uz2Var.y = r1.Q;
                                                    uz2Var.z = i4;
                                                } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                                    if (r1.q == 0) {
                                                        i10 = r1.o;
                                                        i6 = -1;
                                                        if (i10 == -1) {
                                                            i10 = r1.m;
                                                        }
                                                        r1.o = i10;
                                                        i11 = r1.p;
                                                        if (i11 == -1) {
                                                            i11 = r1.n;
                                                        }
                                                        r1.p = i11;
                                                    } else {
                                                        i6 = -1;
                                                    }
                                                    i7 = r1.o;
                                                    if (i7 != i6) {
                                                        f = -1.0f;
                                                    } else {
                                                        f = -1.0f;
                                                    }
                                                    if (r1.x) {
                                                        if (r1.D != -1.0f) {
                                                            bArr2 = null;
                                                        } else {
                                                            bArr2 = null;
                                                        }
                                                        x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                                    } else {
                                                        x20Var = null;
                                                    }
                                                    str3 = r1.a;
                                                    if (str3 != null) {
                                                        map = h0;
                                                        if (map.containsKey(str3)) {
                                                            iIntValue = ((Integer) map.get(r1.a)).intValue();
                                                        } else {
                                                            iIntValue = -1;
                                                        }
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                    if (r1.r == 0) {
                                                        i8 = iIntValue;
                                                    } else {
                                                        i8 = iIntValue;
                                                    }
                                                    uz2Var.p = r1.m;
                                                    uz2Var.q = r1.n;
                                                    uz2Var.t = f;
                                                    uz2Var.s = i8;
                                                    uz2Var.u = r1.v;
                                                    uz2Var.v = r1.w;
                                                    uz2Var.w = x20Var;
                                                    i2 = 2;
                                                } else {
                                                    if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                                    }
                                                    i2 = 3;
                                                }
                                                str4 = r1.a;
                                                if (str4 != null) {
                                                    uz2Var.b = r1.a;
                                                }
                                                uz2Var.a = Integer.toString(i24);
                                                uz2Var.k = str6;
                                                uz2Var.l = i3;
                                                uz2Var.c = r1.W;
                                                uz2Var.d = i210;
                                                uz2Var.m = list6;
                                                uz2Var.h = str2;
                                                uz2Var.n = r1.l;
                                                vz2 vz2Var6 = new vz2(uz2Var);
                                                k06 k06VarA6 = zs2Var.a(r1.c, i2);
                                                r1.X = k06VarA6;
                                                k06VarA6.a(vz2Var6);
                                                this.c.put(r1.c, r1);
                                            } else {
                                                i35 += 255;
                                                i33++;
                                            }
                                        }
                                    } else {
                                        i30 += 255;
                                        i31++;
                                    }
                                }
                            } catch (ArrayIndexOutOfBoundsException unused2) {
                                defpackage.e2.h("Error parsing vorbis codec private", r1);
                                return;
                            }
                        } catch (ArrayIndexOutOfBoundsException unused3) {
                            r1 = 0;
                        }
                        break;
                    case 5:
                        str6 = MimeTypes.AUDIO_MPEG_L2;
                        i3 = 4096;
                        list2 = null;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z8 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i211 = (z8 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i211;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var7 = new vz2(uz2Var);
                        k06 k06VarA7 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA7;
                        k06VarA7.a(vz2Var7);
                        this.c.put(r1.c, r1);
                        break;
                    case 6:
                        str6 = MimeTypes.AUDIO_MPEG;
                        i3 = 4096;
                        list2 = null;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z9 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i212 = (z9 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i212;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var8 = new vz2(uz2Var);
                        k06 k06VarA8 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA8;
                        k06VarA8.a(vz2Var8);
                        this.c.put(r1.c, r1);
                        break;
                    case 7:
                        byte[] bArrA2 = r1.a(str5);
                        try {
                            if (16 > bArrA2.length) {
                                throw new IllegalArgumentException();
                            }
                            long j5 = (((long) bArrA2[16]) & 255) | ((((long) bArrA2[17]) & 255) << 8) | ((((long) bArrA2[18]) & 255) << 16) | ((((long) bArrA2[19]) & 255) << 24);
                            if (j5 == 1482049860) {
                                pair = new Pair(MimeTypes.VIDEO_DIVX, null);
                            } else if (j5 == 859189832) {
                                pair = new Pair(MimeTypes.VIDEO_H263, null);
                            } else if (j5 == 826496599) {
                                int i41 = 40;
                                while (true) {
                                    if (i41 >= bArrA2.length - 4) {
                                        throw new xs4("Failed to find FourCC VC1 initialization data", null, true, 1);
                                    }
                                    if (bArrA2[i41] == 0 && bArrA2[i41 + 1] == 0 && bArrA2[i41 + 2] == 1) {
                                        if (bArrA2[i41 + 3] == 15) {
                                            pair = new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrA2, i41, bArrA2.length)));
                                        }
                                    }
                                    i41++;
                                }
                            } else {
                                sv3.d("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                                pair = new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                            }
                            str6 = (String) pair.first;
                            list5 = (List) pair.second;
                            i3 = -1;
                            list2 = list5;
                            i2 = 1;
                            list7 = list2;
                            i4 = -1;
                            list = list7;
                            str2 = null;
                            list6 = list;
                            bArr = r1.N;
                            if (bArr != null) {
                                str2 = rj2VarA.a;
                                str6 = MimeTypes.VIDEO_DOLBY_VISION;
                            }
                            boolean z10 = r1.V;
                            if (r1.U) {
                                i5 = 2;
                            } else {
                                i5 = 0;
                            }
                            int i213 = (z10 ? 1 : 0) | i5;
                            uz2Var = new uz2();
                            if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                uz2Var.x = r1.O;
                                uz2Var.y = r1.Q;
                                uz2Var.z = i4;
                            } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                if (r1.q == 0) {
                                    i10 = r1.o;
                                    i6 = -1;
                                    if (i10 == -1) {
                                        i10 = r1.m;
                                    }
                                    r1.o = i10;
                                    i11 = r1.p;
                                    if (i11 == -1) {
                                        i11 = r1.n;
                                    }
                                    r1.p = i11;
                                } else {
                                    i6 = -1;
                                }
                                i7 = r1.o;
                                if (i7 != i6) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (r1.x) {
                                    if (r1.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                } else {
                                    x20Var = null;
                                }
                                str3 = r1.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = ((Integer) map.get(r1.a)).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (r1.r == 0) {
                                    i8 = iIntValue;
                                } else {
                                    i8 = iIntValue;
                                }
                                uz2Var.p = r1.m;
                                uz2Var.q = r1.n;
                                uz2Var.t = f;
                                uz2Var.s = i8;
                                uz2Var.u = r1.v;
                                uz2Var.v = r1.w;
                                uz2Var.w = x20Var;
                                i2 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                }
                                i2 = 3;
                            }
                            str4 = r1.a;
                            if (str4 != null) {
                                uz2Var.b = r1.a;
                            }
                            uz2Var.a = Integer.toString(i24);
                            uz2Var.k = str6;
                            uz2Var.l = i3;
                            uz2Var.c = r1.W;
                            uz2Var.d = i213;
                            uz2Var.m = list6;
                            uz2Var.h = str2;
                            uz2Var.n = r1.l;
                            vz2 vz2Var9 = new vz2(uz2Var);
                            k06 k06VarA9 = zs2Var.a(r1.c, i2);
                            r1.X = k06VarA9;
                            k06VarA9.a(vz2Var9);
                            this.c.put(r1.c, r1);
                        } catch (ArrayIndexOutOfBoundsException unused4) {
                            defpackage.e2.h("Error parsing FourCC private data", null);
                            return;
                        }
                        break;
                    case 8:
                        byte[] bArr6 = new byte[4];
                        System.arraycopy(r1.a(str5), 0, bArr6, 0, 4);
                        k55 k55VarA = oe3.a(bArr6);
                        str6 = MimeTypes.APPLICATION_DVBSUBS;
                        list5 = k55VarA;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z11 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i214 = (z11 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i214;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var10 = new vz2(uz2Var);
                        k06 k06VarA10 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA10;
                        k06VarA10.a(vz2Var10);
                        this.c.put(r1.c, r1);
                        break;
                    case 10:
                        dn dnVarA = dn.a(new os4(r1.a(str5)));
                        ArrayList arrayList2 = dnVarA.a;
                        r1.Y = dnVarA.b;
                        str = dnVarA.f;
                        str6 = "video/avc";
                        list4 = arrayList2;
                        str2 = str;
                        list3 = list4;
                        i3 = -1;
                        i2 = 1;
                        i4 = -1;
                        list6 = list3;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z12 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i215 = (z12 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i215;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var11 = new vz2(uz2Var);
                        k06 k06VarA11 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA11;
                        k06VarA11.a(vz2Var11);
                        this.c.put(r1.c, r1);
                        break;
                    case 11:
                        k55 k55VarA2 = oe3.a(r1.a(str5));
                        str6 = MimeTypes.APPLICATION_VOBSUB;
                        list5 = k55VarA2;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z13 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i216 = (z13 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i216;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var12 = new vz2(uz2Var);
                        k06 k06VarA12 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA12;
                        k06VarA12.a(vz2Var12);
                        this.c.put(r1.c, r1);
                        break;
                    case 12:
                        str6 = MimeTypes.AUDIO_DTS_HD;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z14 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i217 = (z14 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i217;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var13 = new vz2(uz2Var);
                        k06 k06VarA13 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA13;
                        k06VarA13.a(vz2Var13);
                        this.c.put(r1.c, r1);
                        break;
                    case 13:
                        List listSingletonList2 = Collections.singletonList(r1.a(str5));
                        a aVarA = b.a(new ns4(r1.k), false);
                        r1.Q = aVarA.a;
                        r1.O = aVarA.b;
                        str6 = "audio/mp4a-latm";
                        str2 = aVarA.c;
                        list3 = listSingletonList2;
                        i3 = -1;
                        i2 = 1;
                        i4 = -1;
                        list6 = list3;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z15 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i218 = (z15 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i218;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var14 = new vz2(uz2Var);
                        k06 k06VarA14 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA14;
                        k06VarA14.a(vz2Var14);
                        this.c.put(r1.c, r1);
                        break;
                    case 14:
                        str6 = MimeTypes.AUDIO_AC3;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z16 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i219 = (z16 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i219;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var15 = new vz2(uz2Var);
                        k06 k06VarA15 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA15;
                        k06VarA15.a(vz2Var15);
                        this.c.put(r1.c, r1);
                        break;
                    case 15:
                    case 21:
                        str6 = MimeTypes.AUDIO_DTS;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z17 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2110 = (z17 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2110;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var16 = new vz2(uz2Var);
                        k06 k06VarA16 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA16;
                        k06VarA16.a(vz2Var16);
                        this.c.put(r1.c, r1);
                        break;
                    case 16:
                        str6 = MimeTypes.VIDEO_AV1;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z18 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2111 = (z18 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2111;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var17 = new vz2(uz2Var);
                        k06 k06VarA17 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA17;
                        k06VarA17.a(vz2Var17);
                        this.c.put(r1.c, r1);
                        break;
                    case 17:
                        str6 = MimeTypes.VIDEO_VP8;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z19 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2112 = (z19 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2112;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var18 = new vz2(uz2Var);
                        k06 k06VarA18 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA18;
                        k06VarA18.a(vz2Var18);
                        this.c.put(r1.c, r1);
                        break;
                    case 18:
                        str6 = MimeTypes.VIDEO_VP9;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z110 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2113 = (z110 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2113;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var19 = new vz2(uz2Var);
                        k06 k06VarA19 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA19;
                        k06VarA19.a(vz2Var19);
                        this.c.put(r1.c, r1);
                        break;
                    case 19:
                        str6 = MimeTypes.APPLICATION_PGS;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z111 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2114 = (z111 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2114;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var110 = new vz2(uz2Var);
                        k06 k06VarA110 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA110;
                        k06VarA110.a(vz2Var110);
                        this.c.put(r1.c, r1);
                        break;
                    case 20:
                        str6 = MimeTypes.VIDEO_UNKNOWN;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z112 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2115 = (z112 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2115;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var111 = new vz2(uz2Var);
                        k06 k06VarA111 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA111;
                        k06VarA111.a(vz2Var111);
                        this.c.put(r1.c, r1);
                        break;
                    case 22:
                        if (r1.P == 32) {
                            list = null;
                            i3 = -1;
                            i2 = 1;
                            i4 = 4;
                        } else {
                            sv3.d("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + r1.P + ". Setting mimeType to audio/x-unknown");
                            str6 = MimeTypes.AUDIO_UNKNOWN;
                            list5 = null;
                            i3 = -1;
                            list2 = list5;
                            i2 = 1;
                            list7 = list2;
                            i4 = -1;
                            list = list7;
                        }
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z113 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2116 = (z113 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2116;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var112 = new vz2(uz2Var);
                        k06 k06VarA112 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA112;
                        k06VarA112.a(vz2Var112);
                        this.c.put(r1.c, r1);
                        break;
                    case 23:
                        int i42 = r1.P;
                        if (i42 == 8) {
                            i4 = 3;
                        } else if (i42 != 16) {
                            sv3.d("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + r1.P + ". Setting mimeType to audio/x-unknown");
                            str6 = MimeTypes.AUDIO_UNKNOWN;
                            list5 = null;
                            i3 = -1;
                            list2 = list5;
                            i2 = 1;
                            list7 = list2;
                            i4 = -1;
                            list = list7;
                            str2 = null;
                            list6 = list;
                            bArr = r1.N;
                            if (bArr != null) {
                                str2 = rj2VarA.a;
                                str6 = MimeTypes.VIDEO_DOLBY_VISION;
                            }
                            boolean z114 = r1.V;
                            if (r1.U) {
                                i5 = 2;
                            } else {
                                i5 = 0;
                            }
                            int i2117 = (z114 ? 1 : 0) | i5;
                            uz2Var = new uz2();
                            if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                uz2Var.x = r1.O;
                                uz2Var.y = r1.Q;
                                uz2Var.z = i4;
                            } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                if (r1.q == 0) {
                                    i10 = r1.o;
                                    i6 = -1;
                                    if (i10 == -1) {
                                        i10 = r1.m;
                                    }
                                    r1.o = i10;
                                    i11 = r1.p;
                                    if (i11 == -1) {
                                        i11 = r1.n;
                                    }
                                    r1.p = i11;
                                } else {
                                    i6 = -1;
                                }
                                i7 = r1.o;
                                if (i7 != i6) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (r1.x) {
                                    if (r1.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                } else {
                                    x20Var = null;
                                }
                                str3 = r1.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = ((Integer) map.get(r1.a)).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (r1.r == 0) {
                                    i8 = iIntValue;
                                } else {
                                    i8 = iIntValue;
                                }
                                uz2Var.p = r1.m;
                                uz2Var.q = r1.n;
                                uz2Var.t = f;
                                uz2Var.s = i8;
                                uz2Var.u = r1.v;
                                uz2Var.v = r1.w;
                                uz2Var.w = x20Var;
                                i2 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                }
                                i2 = 3;
                            }
                            str4 = r1.a;
                            if (str4 != null) {
                                uz2Var.b = r1.a;
                            }
                            uz2Var.a = Integer.toString(i24);
                            uz2Var.k = str6;
                            uz2Var.l = i3;
                            uz2Var.c = r1.W;
                            uz2Var.d = i2117;
                            uz2Var.m = list6;
                            uz2Var.h = str2;
                            uz2Var.n = r1.l;
                            vz2 vz2Var113 = new vz2(uz2Var);
                            k06 k06VarA113 = zs2Var.a(r1.c, i2);
                            r1.X = k06VarA113;
                            k06VarA113.a(vz2Var113);
                            this.c.put(r1.c, r1);
                        } else {
                            iB = 268435456;
                            i4 = iB;
                        }
                        list = null;
                        i3 = -1;
                        i2 = 1;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z115 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i2118 = (z115 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i2118;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var114 = new vz2(uz2Var);
                        k06 k06VarA114 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA114;
                        k06VarA114.a(vz2Var114);
                        this.c.put(r1.c, r1);
                        break;
                    case 24:
                        iB = u56.b(r1.P);
                        if (iB == 0) {
                            sv3.d("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + r1.P + ". Setting mimeType to audio/x-unknown");
                            str6 = MimeTypes.AUDIO_UNKNOWN;
                            list5 = null;
                            i3 = -1;
                            list2 = list5;
                            i2 = 1;
                            list7 = list2;
                            i4 = -1;
                            list = list7;
                            str2 = null;
                            list6 = list;
                            bArr = r1.N;
                            if (bArr != null) {
                                str2 = rj2VarA.a;
                                str6 = MimeTypes.VIDEO_DOLBY_VISION;
                            }
                            boolean z116 = r1.V;
                            if (r1.U) {
                                i5 = 2;
                            } else {
                                i5 = 0;
                            }
                            int i2119 = (z116 ? 1 : 0) | i5;
                            uz2Var = new uz2();
                            if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                                uz2Var.x = r1.O;
                                uz2Var.y = r1.Q;
                                uz2Var.z = i4;
                            } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                                if (r1.q == 0) {
                                    i10 = r1.o;
                                    i6 = -1;
                                    if (i10 == -1) {
                                        i10 = r1.m;
                                    }
                                    r1.o = i10;
                                    i11 = r1.p;
                                    if (i11 == -1) {
                                        i11 = r1.n;
                                    }
                                    r1.p = i11;
                                } else {
                                    i6 = -1;
                                }
                                i7 = r1.o;
                                if (i7 != i6) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (r1.x) {
                                    if (r1.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                                } else {
                                    x20Var = null;
                                }
                                str3 = r1.a;
                                if (str3 != null) {
                                    map = h0;
                                    if (map.containsKey(str3)) {
                                        iIntValue = ((Integer) map.get(r1.a)).intValue();
                                    } else {
                                        iIntValue = -1;
                                    }
                                } else {
                                    iIntValue = -1;
                                }
                                if (r1.r == 0) {
                                    i8 = iIntValue;
                                } else {
                                    i8 = iIntValue;
                                }
                                uz2Var.p = r1.m;
                                uz2Var.q = r1.n;
                                uz2Var.t = f;
                                uz2Var.s = i8;
                                uz2Var.u = r1.v;
                                uz2Var.v = r1.w;
                                uz2Var.w = x20Var;
                                i2 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                                }
                                i2 = 3;
                            }
                            str4 = r1.a;
                            if (str4 != null) {
                                uz2Var.b = r1.a;
                            }
                            uz2Var.a = Integer.toString(i24);
                            uz2Var.k = str6;
                            uz2Var.l = i3;
                            uz2Var.c = r1.W;
                            uz2Var.d = i2119;
                            uz2Var.m = list6;
                            uz2Var.h = str2;
                            uz2Var.n = r1.l;
                            vz2 vz2Var115 = new vz2(uz2Var);
                            k06 k06VarA115 = zs2Var.a(r1.c, i2);
                            r1.X = k06VarA115;
                            k06VarA115.a(vz2Var115);
                            this.c.put(r1.c, r1);
                        }
                        i4 = iB;
                        list = null;
                        i3 = -1;
                        i2 = 1;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z117 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21110 = (z117 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21110;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var116 = new vz2(uz2Var);
                        k06 k06VarA116 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA116;
                        k06VarA116.a(vz2Var116);
                        this.c.put(r1.c, r1);
                        break;
                    case 25:
                        k55 k55VarA3 = oe3.a(d0, r1.a(str5));
                        str6 = MimeTypes.TEXT_SSA;
                        list5 = k55VarA3;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z118 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21111 = (z118 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21111;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var117 = new vz2(uz2Var);
                        k06 k06VarA117 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA117;
                        k06VarA117.a(vz2Var117);
                        this.c.put(r1.c, r1);
                        break;
                    case 26:
                        b93 b93VarA = b93.a(new os4(r1.a(str5)));
                        List list8 = b93VarA.a;
                        r1.Y = b93VarA.b;
                        str = b93VarA.d;
                        str6 = MimeTypes.VIDEO_H265;
                        list4 = list8;
                        str2 = str;
                        list3 = list4;
                        i3 = -1;
                        i2 = 1;
                        i4 = -1;
                        list6 = list3;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z119 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21112 = (z119 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21112;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var118 = new vz2(uz2Var);
                        k06 k06VarA118 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA118;
                        k06VarA118.a(vz2Var118);
                        this.c.put(r1.c, r1);
                        break;
                    case 27:
                        str6 = MimeTypes.TEXT_VTT;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z1110 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21113 = (z1110 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21113;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var119 = new vz2(uz2Var);
                        k06 k06VarA119 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA119;
                        k06VarA119.a(vz2Var119);
                        this.c.put(r1.c, r1);
                        break;
                    case 28:
                        str6 = MimeTypes.APPLICATION_SUBRIP;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z1111 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21114 = (z1111 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21114;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var1110 = new vz2(uz2Var);
                        k06 k06VarA1110 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA1110;
                        k06VarA1110.a(vz2Var1110);
                        this.c.put(r1.c, r1);
                        break;
                    case 29:
                        str6 = MimeTypes.VIDEO_MPEG2;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z1112 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21115 = (z1112 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21115;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var1111 = new vz2(uz2Var);
                        k06 k06VarA1111 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA1111;
                        k06VarA1111.a(vz2Var1111);
                        this.c.put(r1.c, r1);
                        break;
                    case 30:
                        str6 = MimeTypes.AUDIO_E_AC3;
                        list5 = null;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z1113 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21116 = (z1113 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21116;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var1112 = new vz2(uz2Var);
                        k06 k06VarA1112 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA1112;
                        k06VarA1112.a(vz2Var1112);
                        this.c.put(r1.c, r1);
                        break;
                    case 31:
                        List listSingletonList3 = Collections.singletonList(r1.a(str5));
                        str6 = MimeTypes.AUDIO_FLAC;
                        list5 = listSingletonList3;
                        i3 = -1;
                        list2 = list5;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z1114 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21117 = (z1114 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21117;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var1113 = new vz2(uz2Var);
                        k06 k06VarA1113 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA1113;
                        k06VarA1113.a(vz2Var1113);
                        this.c.put(r1.c, r1);
                        break;
                    case 32:
                        ArrayList arrayList3 = new ArrayList(3);
                        arrayList3.add(r1.a(r1.b));
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                        arrayList3.add(byteBufferAllocate.order(byteOrder).putLong(r1.R).array());
                        arrayList3.add(ByteBuffer.allocate(8).order(byteOrder).putLong(r1.S).array());
                        str6 = MimeTypes.AUDIO_OPUS;
                        i3 = 5760;
                        list2 = arrayList3;
                        i2 = 1;
                        list7 = list2;
                        i4 = -1;
                        list = list7;
                        str2 = null;
                        list6 = list;
                        bArr = r1.N;
                        if (bArr != null) {
                            str2 = rj2VarA.a;
                            str6 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                        boolean z1115 = r1.V;
                        if (r1.U) {
                            i5 = 2;
                        } else {
                            i5 = 0;
                        }
                        int i21118 = (z1115 ? 1 : 0) | i5;
                        uz2Var = new uz2();
                        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str6))) {
                            uz2Var.x = r1.O;
                            uz2Var.y = r1.Q;
                            uz2Var.z = i4;
                        } else if (MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str6))) {
                            if (r1.q == 0) {
                                i10 = r1.o;
                                i6 = -1;
                                if (i10 == -1) {
                                    i10 = r1.m;
                                }
                                r1.o = i10;
                                i11 = r1.p;
                                if (i11 == -1) {
                                    i11 = r1.n;
                                }
                                r1.p = i11;
                            } else {
                                i6 = -1;
                            }
                            i7 = r1.o;
                            if (i7 != i6) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (r1.x) {
                                if (r1.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                x20Var = new x20(r1.y, r1.A, r1.z, bArr2);
                            } else {
                                x20Var = null;
                            }
                            str3 = r1.a;
                            if (str3 != null) {
                                map = h0;
                                if (map.containsKey(str3)) {
                                    iIntValue = ((Integer) map.get(r1.a)).intValue();
                                } else {
                                    iIntValue = -1;
                                }
                            } else {
                                iIntValue = -1;
                            }
                            if (r1.r == 0) {
                                i8 = iIntValue;
                            } else {
                                i8 = iIntValue;
                            }
                            uz2Var.p = r1.m;
                            uz2Var.q = r1.n;
                            uz2Var.t = f;
                            uz2Var.s = i8;
                            uz2Var.u = r1.v;
                            uz2Var.v = r1.w;
                            uz2Var.w = x20Var;
                            i2 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str6)) {
                            }
                            i2 = 3;
                        }
                        str4 = r1.a;
                        if (str4 != null) {
                            uz2Var.b = r1.a;
                        }
                        uz2Var.a = Integer.toString(i24);
                        uz2Var.k = str6;
                        uz2Var.l = i3;
                        uz2Var.c = r1.W;
                        uz2Var.d = i21118;
                        uz2Var.m = list6;
                        uz2Var.h = str2;
                        uz2Var.n = r1.l;
                        vz2 vz2Var1114 = new vz2(uz2Var);
                        k06 k06VarA1114 = zs2Var.a(r1.c, i2);
                        r1.X = k06VarA1114;
                        k06VarA1114.a(vz2Var1114);
                        this.c.put(r1.c, r1);
                        break;
                    default:
                        defpackage.e2.h("Unrecognized codec identifier.", null);
                        return;
                }
                break;
        }
        this.u = null;
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.b0 = zs2Var;
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.B = C.TIME_UNSET;
        this.G = 0;
        this.a.a();
        o76 o76Var = this.b;
        o76Var.b = 0;
        o76Var.c = 0;
        b();
        for (int i = 0; i < this.c.size(); i++) {
            j26 j26Var = ((lx3) this.c.valueAt(i)).T;
            if (j26Var != null) {
                j26Var.b = false;
                j26Var.c = 0;
            }
        }
    }

    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) {
        this.F = false;
        boolean zA = true;
        while (zA && !this.F) {
            wk0 wk0Var = (wk0) xs2Var;
            zA = this.a.a(wk0Var);
            if (zA) {
                long j = wk0Var.d;
                if (this.y) {
                    this.A = j;
                    qx4Var.a = this.z;
                    this.y = false;
                } else if (this.v) {
                    long j2 = this.A;
                    if (j2 != -1) {
                        qx4Var.a = j2;
                        this.A = -1L;
                    }
                } else {
                    continue;
                }
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i = 0; i < this.c.size(); i++) {
            lx3 lx3Var = (lx3) this.c.valueAt(i);
            lx3Var.X.getClass();
            j26 j26Var = lx3Var.T;
            if (j26Var != null) {
                k06 k06Var = lx3Var.X;
                j06 j06Var = lx3Var.j;
                if (j26Var.c > 0) {
                    k06Var.a(j26Var.d, j26Var.e, j26Var.f, j26Var.g, j06Var);
                    j26Var.c = 0;
                }
            }
        }
        return -1;
    }

    public final void a(int i) throws xs4 {
        if (this.u != null) {
            return;
        }
        defpackage.e2.h(kv2.b(i, "Element ", " must be in a TrackEntry"), null);
    }

    public final void a(lx3 lx3Var, long j, int i, int i2, int i3) {
        byte[] bArrA;
        int i4;
        int i5;
        j26 j26Var = lx3Var.T;
        if (j26Var != null) {
            j26Var.a(lx3Var.X, j, i, i2, i3, lx3Var.j);
        } else {
            if ("S_TEXT/UTF8".equals(lx3Var.b) || "S_TEXT/ASS".equals(lx3Var.b) || "S_TEXT/WEBVTT".equals(lx3Var.b)) {
                if (this.K > 1) {
                    sv3.d("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.I;
                    if (j2 == C.TIME_UNSET) {
                        sv3.d("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = lx3Var.b;
                        byte[] bArr = this.k.a;
                        str.getClass();
                        switch (str) {
                            case "S_TEXT/ASS":
                                bArrA = a("%01d:%02d:%02d:%02d", j2, 10000L);
                                i4 = 21;
                                break;
                            case "S_TEXT/WEBVTT":
                                bArrA = a("%02d:%02d:%02d.%03d", j2, 1000L);
                                i4 = 25;
                                break;
                            case "S_TEXT/UTF8":
                                bArrA = a("%02d:%02d:%02d,%03d", j2, 1000L);
                                i4 = 19;
                                break;
                            default:
                                defpackage.mi2.b();
                                return;
                        }
                        System.arraycopy(bArrA, 0, bArr, i4, bArrA.length);
                        int i6 = this.k.b;
                        while (true) {
                            os4 os4Var = this.k;
                            if (i6 < os4Var.c) {
                                if (os4Var.a[i6] == 0) {
                                    os4Var.d(i6);
                                } else {
                                    i6++;
                                }
                            }
                        }
                        k06 k06Var = lx3Var.X;
                        os4 os4Var2 = this.k;
                        k06Var.a(os4Var2.c, os4Var2);
                        i5 = i2 + this.k.c;
                    }
                }
                i5 = i2;
            } else {
                i5 = i2;
            }
            if ((i & 268435456) != 0) {
                int i7 = this.K;
                os4 os4Var3 = this.n;
                if (i7 > 1) {
                    os4Var3.c(0);
                } else {
                    int i8 = os4Var3.c;
                    lx3Var.X.a(i8, os4Var3);
                    i5 += i8;
                }
            }
            lx3Var.X.a(j, i, i5, i3, lx3Var.j);
        }
        this.F = true;
    }

    public final void a(wk0 wk0Var, int i) {
        os4 os4Var = this.g;
        if (os4Var.c >= i) {
            return;
        }
        byte[] bArr = os4Var.a;
        if (bArr.length < i) {
            os4Var.a(Math.max(bArr.length * 2, i));
        }
        os4 os4Var2 = this.g;
        byte[] bArr2 = os4Var2.a;
        int i2 = os4Var2.c;
        wk0Var.a(bArr2, i2, i - i2, false);
        this.g.d(i);
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        go5 go5Var = new go5();
        wk0 wk0Var = (wk0) xs2Var;
        long j = wk0Var.c;
        long j2 = 1024;
        if (j != -1 && j <= 1024) {
            j2 = j;
        }
        int i = (int) j2;
        wk0Var.b(go5Var.a.a, 0, 4, false);
        go5Var.b = 4;
        for (long jL = go5Var.a.l(); jL != 440786851; jL = ((jL << 8) & (-256)) | ((long) (go5Var.a.a[0] & 255))) {
            int i2 = go5Var.b + 1;
            go5Var.b = i2;
            if (i2 == i) {
                return false;
            }
            wk0Var.b(go5Var.a.a, 0, 1, false);
        }
        long jA = go5Var.a(wk0Var);
        long j3 = go5Var.b;
        if (jA != Long.MIN_VALUE && (j == -1 || j3 + jA < j)) {
            while (true) {
                long j4 = go5Var.b;
                long j5 = j3 + jA;
                if (j4 < j5) {
                    if (go5Var.a(wk0Var) == Long.MIN_VALUE) {
                        break;
                    }
                    long jA2 = go5Var.a(wk0Var);
                    if (jA2 < 0 || jA2 > SieveCacheKt.NodeLinkMask) {
                        break;
                    }
                    if (jA2 != 0) {
                        int i3 = (int) jA2;
                        wk0Var.a(i3, false);
                        go5Var.b += i3;
                    }
                } else if (j4 == j5) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void a(wk0 wk0Var, byte[] bArr, int i) {
        int length = bArr.length + i;
        os4 os4Var = this.k;
        byte[] bArr2 = os4Var.a;
        if (bArr2.length < length) {
            os4Var.a(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        wk0Var.a(this.k.a, bArr.length, i, false);
        this.k.e(0);
        this.k.d(length);
    }

    public static byte[] a(String str, long j, long j2) {
        if (j != C.TIME_UNSET) {
            int i = (int) (j / 3600000000L);
            long j3 = j - (((long) i) * 3600000000L);
            int i2 = (int) (j3 / 60000000);
            long j4 = j3 - (((long) i2) * 60000000);
            int i3 = (int) (j4 / 1000000);
            return u56.c(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
        }
        defpackage.mi2.b();
        return null;
    }

    public final long a(long j) throws xs4 {
        long j2 = this.r;
        if (j2 != C.TIME_UNSET) {
            return u56.a(j, j2, 1000L);
        }
        defpackage.e2.h("Can't scale timecode prior to timecodeScale being set.", null);
        return 0L;
    }

    public final void b() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.a0 = false;
        this.j.c(0);
    }
}
