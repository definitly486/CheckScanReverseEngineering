package yads;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import androidx.compose.runtime.GapComposerKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.tracing.Trace;
import androidx.work.WorkInfo;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes6.dex */
public final class my extends py {
    public final os4 g = new os4();
    public final ns4 h = new ns4();
    public int i = -1;
    public final int j;
    public final ky[] k;
    public ky l;
    public List m;
    public List n;
    public ly o;
    public int p;

    public my(int i, List list) {
        this.j = i == -1 ? 1 : i;
        if (list != null && list.size() == 1 && ((byte[]) list.get(0)).length == 1) {
            byte b = ((byte[]) list.get(0))[0];
        }
        this.k = new ky[8];
        int i2 = 0;
        while (true) {
            ky[] kyVarArr = this.k;
            if (i2 >= 8) {
                this.l = kyVarArr[0];
                return;
            } else {
                kyVarArr[i2] = new ky();
                i2++;
            }
        }
    }

    @Override // yads.py
    public final void a(ny nyVar) {
        ly lyVar;
        ByteBuffer byteBuffer = nyVar.d;
        byteBuffer.getClass();
        byte[] bArrArray = byteBuffer.array();
        os4 os4Var = this.g;
        int iLimit = byteBuffer.limit();
        os4Var.a = bArrArray;
        os4Var.c = iLimit;
        os4Var.b = 0;
        while (true) {
            os4 os4Var2 = this.g;
            if (os4Var2.c - os4Var2.b < 3) {
                return;
            }
            int iK = os4Var2.k();
            int i = iK & 3;
            boolean z = (iK & 4) == 4;
            byte bK = (byte) this.g.k();
            byte bK2 = (byte) this.g.k();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        g();
                        int i2 = (bK & 192) >> 6;
                        int i3 = this.i;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            for (int i4 = 0; i4 < 8; i4++) {
                                this.k[i4].b();
                            }
                            sv3.d("Cea708Decoder", "Sequence number discontinuity. previous=" + this.i + " current=" + i2);
                        }
                        this.i = i2;
                        int i5 = bK & 63;
                        if (i5 == 0) {
                            i5 = 64;
                        }
                        lyVar = new ly(i2, i5);
                        this.o = lyVar;
                        byte[] bArr = lyVar.c;
                        lyVar.d = 1;
                        bArr[0] = bK2;
                    } else {
                        if (i != 2) {
                            defpackage.mi2.b();
                            return;
                        }
                        lyVar = this.o;
                        if (lyVar == null) {
                            sv3.b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = lyVar.c;
                            int i6 = lyVar.d;
                            int i7 = i6 + 1;
                            lyVar.d = i7;
                            bArr2[i6] = bK;
                            lyVar.d = i6 + 2;
                            bArr2[i7] = bK2;
                        }
                    }
                    if (lyVar.d == (lyVar.b * 2) - 1) {
                        g();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // yads.py
    public final qy c() {
        List list = this.m;
        this.n = list;
        list.getClass();
        return new qy(list);
    }

    @Override // yads.py
    public final boolean f() {
        return this.m != this.n;
    }

    @Override // yads.py, yads.ii0
    public final void flush() {
        super.flush();
        this.m = null;
        this.n = null;
        this.p = 0;
        this.l = this.k[0];
        for (int i = 0; i < 8; i++) {
            this.k[i].b();
        }
        this.o = null;
    }

    /* JADX WARN: Code duplicated, block: B:235:0x0605  */
    /* JADX WARN: Failed to find 'out' block for switch in B:58:0x014d. Please report as an issue. */
    public final void g() {
        int i;
        boolean z;
        int i2;
        int i3;
        char c;
        ly lyVar = this.o;
        if (lyVar == null) {
            return;
        }
        int i4 = 2;
        boolean z2 = true;
        if (lyVar.d != (lyVar.b * 2) - 1) {
            sv3.a("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.o.b * 2) - 1) + ", but current index is " + this.o.d + " (sequence number " + this.o.a + ");");
        }
        ns4 ns4Var = this.h;
        ly lyVar2 = this.o;
        ns4Var.b(lyVar2.c, lyVar2.d);
        boolean z3 = false;
        while (this.h.b() > 0) {
            int i5 = 3;
            int iA = this.h.a(3);
            int iA2 = this.h.a(5);
            int i6 = 7;
            if (iA == 7) {
                this.h.c(i4);
                iA = this.h.a(6);
                if (iA < 7) {
                    qt3.a(iA, "Invalid extended service number: ", "Cea708Decoder");
                }
            }
            if (iA2 == 0) {
                if (iA != 0) {
                    sv3.d("Cea708Decoder", "serviceNumber is non-zero (" + iA + ") when blockSize is 0");
                }
                if (z3) {
                    this.m = h();
                }
                this.o = null;
            }
            int i7 = this.j;
            ns4 ns4Var2 = this.h;
            if (iA != i7) {
                ns4Var2.d(iA2);
            } else {
                int iD = (iA2 * 8) + ns4Var2.d();
                while (this.h.d() < iD) {
                    int iA3 = this.h.a(8);
                    if (iA3 != 16) {
                        if (iA3 <= 31) {
                            if (iA3 != 0) {
                                if (iA3 == i5) {
                                    this.m = h();
                                } else if (iA3 != 8) {
                                    switch (iA3) {
                                        case 12:
                                            for (int i8 = 0; i8 < 8; i8++) {
                                                this.k[i8].b();
                                            }
                                            break;
                                        case 13:
                                            this.l.a('\n');
                                            break;
                                        case 14:
                                            break;
                                        default:
                                            if (iA3 >= 17 && iA3 <= 23) {
                                                qt3.a(iA3, "Currently unsupported COMMAND_EXT1 Command: ", "Cea708Decoder");
                                                this.h.c(8);
                                            } else if (iA3 < 24 || iA3 > 31) {
                                                qt3.a(iA3, "Invalid C0 command: ", "Cea708Decoder");
                                            } else {
                                                qt3.a(iA3, "Currently unsupported COMMAND_P16 Command: ", "Cea708Decoder");
                                                this.h.c(16);
                                            }
                                            break;
                                    }
                                } else {
                                    ky kyVar = this.l;
                                    int length = kyVar.b.length();
                                    if (length > 0) {
                                        kyVar.b.delete(length - 1, length);
                                    }
                                }
                            }
                            i3 = i4;
                            i2 = i6;
                            z = true;
                            c = 6;
                            i = i5;
                        } else {
                            if (iA3 <= 127) {
                                ky kyVar2 = this.l;
                                if (iA3 == 127) {
                                    kyVar2.a((char) 9835);
                                } else {
                                    kyVar2.a((char) (iA3 & 255));
                                }
                            } else {
                                if (iA3 <= 159) {
                                    switch (iA3) {
                                        case 128:
                                        case TsExtractor.TS_STREAM_TYPE_AC3 /* 129 */:
                                        case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                                        case WebmConstants.MkvEbmlElement.TRACK_TYPE /* 131 */:
                                        case 132:
                                        case 133:
                                        case 134:
                                        case TsExtractor.TS_STREAM_TYPE_E_AC3 /* 135 */:
                                            i = i5;
                                            z = true;
                                            int i9 = iA3 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                                            if (this.p != i9) {
                                                this.p = i9;
                                                this.l = this.k[i9];
                                            }
                                            break;
                                        case 136:
                                            i = i5;
                                            z = true;
                                            for (int i10 = 1; i10 <= 8; i10++) {
                                                if (this.h.e()) {
                                                    ky kyVar3 = this.k[8 - i10];
                                                    kyVar3.a.clear();
                                                    kyVar3.b.clear();
                                                    kyVar3.p = -1;
                                                    kyVar3.q = -1;
                                                    kyVar3.r = -1;
                                                    kyVar3.t = -1;
                                                    kyVar3.v = 0;
                                                }
                                            }
                                            break;
                                        case 137:
                                            i = i5;
                                            for (int i11 = 1; i11 <= 8; i11++) {
                                                if (this.h.e()) {
                                                    this.k[8 - i11].d = true;
                                                }
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case TsExtractor.TS_STREAM_TYPE_DTS /* 138 */:
                                            i = i5;
                                            for (int i12 = 1; i12 <= 8; i12++) {
                                                if (this.h.e()) {
                                                    this.k[8 - i12].d = false;
                                                }
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case TsExtractor.TS_STREAM_TYPE_DTS_UHD /* 139 */:
                                            i = i5;
                                            for (int i13 = 1; i13 <= 8; i13++) {
                                                if (this.h.e()) {
                                                    ky kyVar4 = this.k[8 - i13];
                                                    kyVar4.d = !kyVar4.d;
                                                }
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA /* 140 */:
                                            i = i5;
                                            for (int i14 = 1; i14 <= 8; i14++) {
                                                if (this.h.e()) {
                                                    this.k[8 - i14].b();
                                                }
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA /* 141 */:
                                            i = i5;
                                            this.h.c(8);
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case 142:
                                            i = i5;
                                            i3 = i4;
                                            z = true;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case 143:
                                            i = i5;
                                            for (int i15 = 0; i15 < 8; i15++) {
                                                this.k[i15].b();
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            c = 6;
                                            break;
                                        case 144:
                                            boolean z4 = this.l.c;
                                            ns4 ns4Var3 = this.h;
                                            if (z4) {
                                                ns4Var3.a(4);
                                                this.h.a(2);
                                                this.h.a(2);
                                                boolean zE = this.h.e();
                                                boolean zE2 = this.h.e();
                                                i = 3;
                                                this.h.a(3);
                                                this.h.a(3);
                                                this.l.a(zE, zE2);
                                                z = true;
                                                i3 = 2;
                                                i2 = 7;
                                                c = 6;
                                            } else {
                                                ns4Var3.c(16);
                                                z = true;
                                                i3 = 2;
                                                i2 = 7;
                                                i = 3;
                                                c = 6;
                                            }
                                            break;
                                        case 145:
                                            boolean z5 = this.l.c;
                                            ns4 ns4Var4 = this.h;
                                            if (z5) {
                                                int iA4 = ky.a(this.h.a(2), this.h.a(2), this.h.a(2), ns4Var4.a(2));
                                                int iA5 = ky.a(this.h.a(2), this.h.a(2), this.h.a(2), this.h.a(2));
                                                this.h.c(2);
                                                ky.a(this.h.a(2), this.h.a(2), this.h.a(2), 0);
                                                this.l.a(iA4, iA5);
                                            } else {
                                                ns4Var4.c(24);
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            i = 3;
                                            c = 6;
                                            break;
                                        case 146:
                                            boolean z6 = this.l.c;
                                            ns4 ns4Var5 = this.h;
                                            if (z6) {
                                                ns4Var5.c(4);
                                                int iA6 = this.h.a(4);
                                                this.h.c(2);
                                                this.h.a(6);
                                                ky kyVar5 = this.l;
                                                if (kyVar5.v != iA6) {
                                                    kyVar5.a('\n');
                                                }
                                                kyVar5.v = iA6;
                                            } else {
                                                ns4Var5.c(16);
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            i = 3;
                                            c = 6;
                                            break;
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        default:
                                            qt3.a(iA3, "Invalid C1 command: ", "Cea708Decoder");
                                            break;
                                        case 151:
                                            boolean z7 = this.l.c;
                                            ns4 ns4Var6 = this.h;
                                            if (z7) {
                                                int iA7 = ky.a(this.h.a(2), this.h.a(2), this.h.a(2), ns4Var6.a(2));
                                                this.h.a(2);
                                                ky.a(this.h.a(2), this.h.a(2), this.h.a(2), 0);
                                                this.h.e();
                                                this.h.e();
                                                this.h.a(2);
                                                this.h.a(2);
                                                int iA8 = this.h.a(2);
                                                this.h.c(8);
                                                ky kyVar6 = this.l;
                                                kyVar6.o = iA7;
                                                kyVar6.l = iA8;
                                            } else {
                                                ns4Var6.c(32);
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            i = 3;
                                            c = 6;
                                            break;
                                        case 152:
                                        case 153:
                                        case WebmConstants.MkvEbmlElement.FLAG_INTERLACED /* 154 */:
                                        case WebmConstants.MkvEbmlElement.BLOCK_DURATION /* 155 */:
                                        case 156:
                                        case ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_RSA_WITH_AES_256_GCM_SHA384 /* 157 */:
                                        case 158:
                                        case WebmConstants.MkvEbmlElement.CHANNELS /* 159 */:
                                            int i16 = iA3 - 152;
                                            ky kyVar7 = this.k[i16];
                                            this.h.c(i4);
                                            boolean zE3 = this.h.e();
                                            boolean zE4 = this.h.e();
                                            this.h.e();
                                            int iA9 = this.h.a(i5);
                                            boolean zE5 = this.h.e();
                                            int iA10 = this.h.a(i6);
                                            int iA11 = this.h.a(8);
                                            int iA12 = this.h.a(4);
                                            int iA13 = this.h.a(4);
                                            this.h.c(i4);
                                            this.h.a(6);
                                            this.h.c(i4);
                                            int iA14 = this.h.a(3);
                                            int iA15 = this.h.a(3);
                                            kyVar7.c = true;
                                            kyVar7.d = zE3;
                                            kyVar7.k = zE4;
                                            kyVar7.e = iA9;
                                            kyVar7.f = zE5;
                                            kyVar7.g = iA10;
                                            kyVar7.h = iA11;
                                            kyVar7.i = iA12;
                                            int i17 = iA13 + 1;
                                            if (kyVar7.j != i17) {
                                                kyVar7.j = i17;
                                                while (true) {
                                                    if ((zE4 && kyVar7.a.size() >= kyVar7.j) || kyVar7.a.size() >= 15) {
                                                        kyVar7.a.remove(0);
                                                    }
                                                }
                                            }
                                            if (iA14 != 0 && kyVar7.m != iA14) {
                                                kyVar7.m = iA14;
                                                int i18 = iA14 - 1;
                                                int i19 = ky.C[i18];
                                                boolean z8 = ky.B[i18];
                                                int i20 = ky.z[i18];
                                                int i21 = ky.A[i18];
                                                int i22 = ky.y[i18];
                                                kyVar7.o = i19;
                                                kyVar7.l = i22;
                                            }
                                            if (iA15 != 0 && kyVar7.n != iA15) {
                                                kyVar7.n = iA15;
                                                int i23 = iA15 - 1;
                                                int i24 = ky.E[i23];
                                                int i25 = ky.D[i23];
                                                kyVar7.a(false, false);
                                                kyVar7.a(ky.w, ky.F[i23]);
                                            }
                                            if (this.p != i16) {
                                                this.p = i16;
                                                this.l = this.k[i16];
                                            }
                                            z = true;
                                            i3 = 2;
                                            i2 = 7;
                                            i = 3;
                                            c = 6;
                                            break;
                                    }
                                    z3 = z;
                                    i5 = i;
                                    i4 = i3;
                                    i6 = i2;
                                    z2 = z3;
                                } else {
                                    i = i5;
                                    z = true;
                                    if (iA3 <= 255) {
                                        this.l.a((char) (iA3 & 255));
                                    } else {
                                        qt3.a(iA3, "Invalid base command: ", "Cea708Decoder");
                                        i3 = 2;
                                        i2 = 7;
                                        c = 6;
                                    }
                                }
                                i3 = 2;
                                i2 = 7;
                                c = 6;
                                z3 = z;
                                i5 = i;
                                i4 = i3;
                                i6 = i2;
                                z2 = z3;
                            }
                            i3 = i4;
                            i2 = i6;
                            z = true;
                            c = 6;
                            i = i5;
                            z3 = z;
                            i5 = i;
                            i4 = i3;
                            i6 = i2;
                            z2 = z3;
                        }
                        int i26 = i3;
                        z2 = z;
                        i4 = i26;
                        i5 = i;
                        i6 = i2;
                    } else {
                        i = i5;
                        z = true;
                        int iA16 = this.h.a(8);
                        if (iA16 <= 31) {
                            i2 = 7;
                            if (iA16 > 7) {
                                if (iA16 <= 15) {
                                    this.h.c(8);
                                } else if (iA16 <= 23) {
                                    this.h.c(16);
                                } else if (iA16 <= 31) {
                                    this.h.c(24);
                                }
                            }
                        } else {
                            i2 = 7;
                            if (iA16 <= 127) {
                                if (iA16 == 32) {
                                    this.l.a(' ');
                                } else if (iA16 == 33) {
                                    this.l.a((char) 160);
                                } else if (iA16 == 37) {
                                    this.l.a((char) 8230);
                                } else if (iA16 == 42) {
                                    this.l.a((char) 352);
                                } else if (iA16 == 44) {
                                    this.l.a((char) 338);
                                } else if (iA16 == 63) {
                                    this.l.a((char) 376);
                                } else if (iA16 == 57) {
                                    this.l.a((char) 8482);
                                } else if (iA16 == 58) {
                                    this.l.a((char) 353);
                                } else if (iA16 == 60) {
                                    this.l.a((char) 339);
                                } else if (iA16 != 61) {
                                    switch (iA16) {
                                        case 48:
                                            this.l.a((char) 9608);
                                            break;
                                        case 49:
                                            this.l.a((char) 8216);
                                            break;
                                        case 50:
                                            this.l.a((char) 8217);
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                            this.l.a((char) 8220);
                                            break;
                                        case 52:
                                            this.l.a((char) 8221);
                                            break;
                                        case 53:
                                            this.l.a((char) 8226);
                                            break;
                                        default:
                                            switch (iA16) {
                                                case 118:
                                                    this.l.a((char) 8539);
                                                    break;
                                                case 119:
                                                    this.l.a((char) 8540);
                                                    break;
                                                case 120:
                                                    this.l.a((char) 8541);
                                                    break;
                                                case 121:
                                                    this.l.a((char) 8542);
                                                    break;
                                                case 122:
                                                    this.l.a((char) 9474);
                                                    break;
                                                case 123:
                                                    this.l.a((char) 9488);
                                                    break;
                                                case 124:
                                                    this.l.a((char) 9492);
                                                    break;
                                                case GapComposerKt.nodeKey /* 125 */:
                                                    this.l.a((char) 9472);
                                                    break;
                                                case 126:
                                                    this.l.a((char) 9496);
                                                    break;
                                                case Trace.MAX_TRACE_LABEL_LENGTH /* 127 */:
                                                    this.l.a((char) 9484);
                                                    break;
                                                default:
                                                    qt3.a(iA16, "Invalid G2 character: ", "Cea708Decoder");
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    this.l.a((char) 8480);
                                }
                                i3 = 2;
                                c = 6;
                            } else {
                                if (iA16 > 159) {
                                    i3 = 2;
                                    c = 6;
                                    if (iA16 > 255) {
                                        qt3.a(iA16, "Invalid extended command: ", "Cea708Decoder");
                                    } else if (iA16 == 160) {
                                        this.l.a((char) 13252);
                                    } else {
                                        qt3.a(iA16, "Invalid G3 character: ", "Cea708Decoder");
                                        this.l.a('_');
                                    }
                                } else if (iA16 <= 135) {
                                    this.h.c(32);
                                } else if (iA16 <= 143) {
                                    this.h.c(40);
                                } else if (iA16 <= 159) {
                                    i3 = 2;
                                    this.h.c(2);
                                    c = 6;
                                    this.h.c(this.h.a(6) * 8);
                                }
                                int i27 = i3;
                                z2 = z;
                                i4 = i27;
                                i5 = i;
                                i6 = i2;
                            }
                            z3 = z;
                            i5 = i;
                            i4 = i3;
                            i6 = i2;
                            z2 = z3;
                        }
                        i3 = 2;
                        c = 6;
                        int i28 = i3;
                        z2 = z;
                        i4 = i28;
                        i5 = i;
                        i6 = i2;
                    }
                }
                z2 = z2;
                i4 = i4;
            }
        }
        if (z3) {
            this.m = h();
        }
        this.o = null;
    }

    public final List h() {
        Layout.Alignment alignment;
        float f;
        float f2;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            ky kyVar = this.k[i];
            if (kyVar.c && (!kyVar.a.isEmpty() || kyVar.b.length() != 0)) {
                ky kyVar2 = this.k[i];
                if (kyVar2.d) {
                    jy jyVar = null;
                    if (kyVar2.c && (!kyVar2.a.isEmpty() || kyVar2.b.length() != 0)) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        for (int i2 = 0; i2 < kyVar2.a.size(); i2++) {
                            spannableStringBuilder.append((CharSequence) kyVar2.a.get(i2));
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append((CharSequence) kyVar2.a());
                        int i3 = kyVar2.l;
                        if (i3 == 0) {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else if (i3 == 1) {
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                        } else if (i3 != 2) {
                            if (i3 != 3) {
                                defpackage.jn.f(kyVar2.l, "Unexpected justification value: ");
                                return null;
                            }
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else {
                            alignment = Layout.Alignment.ALIGN_CENTER;
                        }
                        boolean z = kyVar2.f;
                        int i4 = kyVar2.h;
                        if (z) {
                            f = i4 / 99.0f;
                            f2 = kyVar2.g / 99.0f;
                        } else {
                            f = i4 / 209.0f;
                            f2 = kyVar2.g / 74.0f;
                        }
                        float f3 = (f * 0.9f) + 0.05f;
                        float f4 = (f2 * 0.9f) + 0.05f;
                        int i5 = kyVar2.i;
                        int i6 = i5 / 3;
                        int i7 = i6 == 0 ? 0 : i6 == 1 ? 1 : 2;
                        int i8 = i5 % 3;
                        int i9 = i8 == 0 ? 0 : i8 == 1 ? 1 : 2;
                        int i10 = kyVar2.o;
                        jyVar = new jy(spannableStringBuilder, alignment, f4, i7, f3, i9, i10 != ky.x, i10, kyVar2.e);
                    }
                    if (jyVar != null) {
                        arrayList.add(jyVar);
                    }
                } else {
                    continue;
                }
            }
        }
        Collections.sort(arrayList, jy.c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((jy) arrayList.get(i11)).a);
        }
        return Collections.unmodifiableList(arrayList2);
    }
}
