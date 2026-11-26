package yads;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.tracing.Trace;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class iy extends py {
    public final int h;
    public final int i;
    public final int j;
    public List n;
    public List o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public byte t;
    public byte u;
    public boolean w;
    public long x;
    public static final int[] y = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] z = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] A = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, -256, -65281};
    public static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, WebmConstants.MkvEbmlElement.AUDIO, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, TypedValues.TYPE_TARGET, 102, 103, 104, 105, 106, 107, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, WebmConstants.MkvEbmlElement.TIMESTAMP, WebmConstants.MkvEbmlElement.CUE_TRACK, 209, WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION, 9632};
    public static final int[] C = {WebmConstants.MkvEbmlElement.TRACK_ENTRY, WebmConstants.MkvEbmlElement.PIXEL_WIDTH, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, WebmConstants.MkvEbmlElement.SIMPLE_BLOCK, 9834, 224, 32, 232, 226, 234, WebmConstants.MkvEbmlElement.BLOCK_ADD_ID, 244, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK};
    public static final int[] D = {193, ComposerKt.providerKey, 211, 218, 220, 252, 8216, WebmConstants.MkvEbmlElement.BLOCK, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, ComposerKt.compositionLocalMapKey, ComposerKt.providerValuesKey, 235, ComposerKt.referenceKey, ComposerKt.reuseKey, 239, 212, 217, 249, 219, WebmConstants.MkvEbmlElement.PREV_SIZE, WebmConstants.MkvEbmlElement.CUE_POINT};
    public static final int[] E = {195, 227, 205, 204, WebmConstants.MkvEbmlElement.VOID, 210, 242, 213, 245, 123, GapComposerKt.nodeKey, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    public final os4 g = new os4();
    public final ArrayList l = new ArrayList();
    public hy m = new hy(0, 4);
    public int v = 0;
    public final long k = 16000000;

    public iy(String str, int i) {
        this.h = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i == 1) {
            this.j = 0;
            this.i = 0;
        } else if (i == 2) {
            this.j = 1;
            this.i = 0;
        } else if (i == 3) {
            this.j = 0;
            this.i = 1;
        } else if (i != 4) {
            sv3.d("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.j = 0;
            this.i = 0;
        } else {
            this.j = 1;
            this.i = 1;
        }
        a(0);
        h();
        this.w = true;
        this.x = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0158  */
    /* JADX WARN: Code duplicated, block: B:133:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:135:0x01db A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:139:0x01e9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:143:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:145:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:146:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:149:0x01fe A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:150:0x0200  */
    /* JADX WARN: Code duplicated, block: B:152:0x0205  */
    /* JADX WARN: Code duplicated, block: B:153:0x0210  */
    /* JADX WARN: Code duplicated, block: B:154:0x0215 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:155:0x0217  */
    /* JADX WARN: Code duplicated, block: B:157:0x0221  */
    /* JADX WARN: Code duplicated, block: B:162:0x0233  */
    /* JADX WARN: Code duplicated, block: B:165:0x0258 A[LOOP:1: B:163:0x0250->B:165:0x0258, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:166:0x025e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0264 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:169:0x0266  */
    /* JADX WARN: Code duplicated, block: B:170:0x026b  */
    /* JADX WARN: Code duplicated, block: B:171:0x0272  */
    /* JADX WARN: Code duplicated, block: B:172:0x027d  */
    /* JADX WARN: Code duplicated, block: B:173:0x0288  */
    /* JADX WARN: Code duplicated, block: B:174:0x0293  */
    /* JADX WARN: Code duplicated, block: B:175:0x0298  */
    /* JADX WARN: Code duplicated, block: B:176:0x029d  */
    /* JADX WARN: Code duplicated, block: B:178:0x02af  */
    /* JADX WARN: Code duplicated, block: B:181:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:183:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:201:0x0090 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    /* JADX WARN: Code duplicated, block: B:49:0x009d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b1 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:64:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:87:0x0120 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x0122  */
    /* JADX WARN: Code duplicated, block: B:98:0x0154  */
    @Override // yads.py
    public final void a(ny nyVar) {
        boolean z2;
        int i;
        hy hyVar;
        int[] iArr;
        char c;
        hy hyVar2;
        char c2;
        int i2;
        int i3;
        int i4;
        hy hyVar3;
        hy hyVar4;
        int iMin;
        ByteBuffer byteBuffer = nyVar.d;
        byteBuffer.getClass();
        os4 os4Var = this.g;
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        os4Var.a = bArrArray;
        os4Var.c = iLimit;
        os4Var.b = 0;
        boolean z3 = false;
        while (true) {
            os4 os4Var2 = this.g;
            int i5 = os4Var2.c - os4Var2.b;
            int i6 = this.h;
            if (i5 < i6) {
                if (z3) {
                    int i7 = this.p;
                    if (i7 == 1 || i7 == 3) {
                        this.n = g();
                        this.x = this.e;
                        return;
                    }
                    return;
                }
                return;
            }
            byte bK = i6 == 2 ? (byte) -4 : (byte) os4Var2.k();
            int iK = this.g.k();
            int iK2 = this.g.k();
            if ((bK & 2) == 0 && (bK & 1) == this.i) {
                byte b = (byte) (iK & Trace.MAX_TRACE_LABEL_LENGTH);
                byte b2 = (byte) (iK2 & Trace.MAX_TRACE_LABEL_LENGTH);
                if (b != 0 || b2 != 0) {
                    boolean z4 = this.r;
                    if ((bK & 4) == 4) {
                        boolean[] zArr = F;
                        if (zArr[iK] && zArr[iK2]) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    this.r = z2;
                    if (!z2 || (b & 240) != 16) {
                        this.s = false;
                        if (!z2) {
                            if (1 > b && b <= 15) {
                                this.w = false;
                            } else if ((b & 247) == 20) {
                                if (b2 == 32 && b2 != 47) {
                                    switch (b2) {
                                        default:
                                            switch (b2) {
                                                case 42:
                                                case 43:
                                                    this.w = false;
                                                    break;
                                            }
                                        case 37:
                                        case 38:
                                        case 39:
                                            this.w = true;
                                            break;
                                    }
                                } else {
                                    this.w = true;
                                }
                            }
                            if (this.w) {
                                i = b & 224;
                                if (i == 0) {
                                    this.v = (b >> 3) & 1;
                                }
                                if (this.v != this.j) {
                                    if (i == 0) {
                                        i2 = b & 247;
                                        if (i2 == 17 || (b2 & 240) != 48) {
                                            i3 = b & 246;
                                            if (i3 != 18 && (b2 & 224) == 32) {
                                                this.m.a();
                                                hy hyVar5 = this.m;
                                                char c3 = (char) ((b & 1) == 0 ? D[b2 & 31] : E[b2 & 31]);
                                                if (hyVar5.c.length() < 32) {
                                                    hyVar5.c.append(c3);
                                                }
                                            } else if (i2 != 17 && (b2 & 240) == 32) {
                                                hy hyVar6 = this.m;
                                                if (hyVar6.c.length() < 32) {
                                                    hyVar6.c.append(' ');
                                                }
                                                boolean z5 = (b2 & 1) == 1;
                                                hy hyVar7 = this.m;
                                                hyVar7.a.add(new gy((b2 >> 1) & 7, hyVar7.c.length(), z5));
                                            } else if ((b & 240) != 16 && (b2 & 192) == 64) {
                                                int i8 = y[b & 7];
                                                if ((b2 & 32) != 0) {
                                                    i8++;
                                                }
                                                hy hyVar8 = this.m;
                                                if (i8 != hyVar8.d) {
                                                    if (this.p != 1 && (!hyVar8.a.isEmpty() || !hyVar8.b.isEmpty() || hyVar8.c.length() != 0)) {
                                                        hy hyVar9 = new hy(this.p, this.q);
                                                        this.m = hyVar9;
                                                        this.l.add(hyVar9);
                                                    }
                                                    hyVar8 = this.m;
                                                    hyVar8.d = i8;
                                                }
                                                boolean z6 = (b2 & 16) == 16;
                                                int i9 = (b2 >> 1) & 7;
                                                hyVar8.a.add(new gy(z6 ? 8 : i9, hyVar8.c.length(), (b2 & 1) == 1));
                                                if (z6) {
                                                    this.m.e = z[i9];
                                                }
                                            } else if (i2 != 23 && b2 >= 33 && b2 <= 35) {
                                                this.m.f = b2 - 32;
                                            } else if (i3 == 20 && (b2 & 240) == 32) {
                                                if (b2 == 32) {
                                                    a(2);
                                                } else if (b2 != 41) {
                                                    switch (b2) {
                                                        case 37:
                                                            a(1);
                                                            this.q = 2;
                                                            this.m.h = 2;
                                                            break;
                                                        case 38:
                                                            a(1);
                                                            this.q = 3;
                                                            this.m.h = 3;
                                                            break;
                                                        case 39:
                                                            a(1);
                                                            this.q = 4;
                                                            this.m.h = 4;
                                                            break;
                                                        default:
                                                            i4 = this.p;
                                                            if (i4 != 0) {
                                                                if (b2 != 33) {
                                                                    switch (b2) {
                                                                        case 44:
                                                                            this.n = Collections.EMPTY_LIST;
                                                                            if (i4 != 1 || i4 == 3) {
                                                                                h();
                                                                            }
                                                                            break;
                                                                        case 45:
                                                                            if (i4 == 1) {
                                                                                hyVar3 = this.m;
                                                                                if (hyVar3.a.isEmpty() || !hyVar3.b.isEmpty() || hyVar3.c.length() != 0) {
                                                                                    hyVar4 = this.m;
                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                    hyVar4.c.setLength(0);
                                                                                    hyVar4.a.clear();
                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                        hyVar4.b.remove(0);
                                                                                    }
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            h();
                                                                            break;
                                                                        case 47:
                                                                            this.n = g();
                                                                            h();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.m.a();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    a(3);
                                                }
                                            }
                                        } else {
                                            hy hyVar10 = this.m;
                                            char c4 = (char) C[b2 & 15];
                                            if (hyVar10.c.length() < 32) {
                                                hyVar10.c.append(c4);
                                            }
                                        }
                                    } else {
                                        hyVar = this.m;
                                        iArr = B;
                                        c = (char) iArr[(b & 127) - 32];
                                        if (hyVar.c.length() < 32) {
                                            hyVar.c.append(c);
                                        }
                                        if ((b2 & 224) != 0) {
                                            hyVar2 = this.m;
                                            c2 = (char) iArr[(b2 & 127) - 32];
                                            if (hyVar2.c.length() < 32) {
                                                hyVar2.c.append(c2);
                                            }
                                        }
                                    }
                                    z3 = true;
                                }
                            }
                        } else if (z4) {
                            h();
                            z3 = true;
                        }
                    } else if (this.s && this.t == b && this.u == b2) {
                        this.s = false;
                    } else {
                        this.s = true;
                        this.t = b;
                        this.u = b2;
                        if (!z2) {
                            if (1 > b) {
                                if ((b & 247) == 20) {
                                    if (b2 == 32) {
                                        this.w = true;
                                    } else {
                                        this.w = true;
                                    }
                                }
                            } else if ((b & 247) == 20) {
                                if (b2 == 32) {
                                    this.w = true;
                                } else {
                                    this.w = true;
                                }
                            }
                            if (this.w) {
                                i = b & 224;
                                if (i == 0) {
                                    this.v = (b >> 3) & 1;
                                }
                                if (this.v != this.j) {
                                    if (i == 0) {
                                        i2 = b & 247;
                                        if (i2 == 17) {
                                            i3 = b & 246;
                                            if (i3 != 18) {
                                                if (i2 != 17) {
                                                    if ((b & 240) != 16) {
                                                        if (i2 != 23) {
                                                            if (i3 == 20) {
                                                                if (b2 == 32) {
                                                                    a(2);
                                                                } else if (b2 != 41) {
                                                                    switch (b2) {
                                                                        case 37:
                                                                            a(1);
                                                                            this.q = 2;
                                                                            this.m.h = 2;
                                                                            break;
                                                                        case 38:
                                                                            a(1);
                                                                            this.q = 3;
                                                                            this.m.h = 3;
                                                                            break;
                                                                        case 39:
                                                                            a(1);
                                                                            this.q = 4;
                                                                            this.m.h = 4;
                                                                            break;
                                                                        default:
                                                                            i4 = this.p;
                                                                            if (i4 != 0) {
                                                                                if (b2 != 33) {
                                                                                    switch (b2) {
                                                                                        case 44:
                                                                                            this.n = Collections.EMPTY_LIST;
                                                                                            if (i4 != 1) {
                                                                                                h();
                                                                                            } else {
                                                                                                h();
                                                                                            }
                                                                                            break;
                                                                                        case 45:
                                                                                            if (i4 == 1) {
                                                                                                hyVar3 = this.m;
                                                                                                if (hyVar3.a.isEmpty()) {
                                                                                                    hyVar4 = this.m;
                                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                                    hyVar4.c.setLength(0);
                                                                                                    hyVar4.a.clear();
                                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                                        hyVar4.b.remove(0);
                                                                                                    }
                                                                                                } else {
                                                                                                    hyVar4 = this.m;
                                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                                    hyVar4.c.setLength(0);
                                                                                                    hyVar4.a.clear();
                                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                                        hyVar4.b.remove(0);
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            break;
                                                                                        case 46:
                                                                                            h();
                                                                                            break;
                                                                                        case 47:
                                                                                            this.n = g();
                                                                                            h();
                                                                                            break;
                                                                                    }
                                                                                } else {
                                                                                    this.m.a();
                                                                                    break;
                                                                                }
                                                                            }
                                                                            break;
                                                                    }
                                                                } else {
                                                                    a(3);
                                                                }
                                                            }
                                                        } else if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i2 != 23) {
                                                        if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if ((b & 240) != 16) {
                                                    if (i2 != 23) {
                                                        if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i2 != 23) {
                                                    if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if (i2 != 17) {
                                                if ((b & 240) != 16) {
                                                    if (i2 != 23) {
                                                        if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i2 != 23) {
                                                    if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if ((b & 240) != 16) {
                                                if (i2 != 23) {
                                                    if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if (i2 != 23) {
                                                if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if (i3 == 20) {
                                                if (b2 == 32) {
                                                    a(2);
                                                } else if (b2 != 41) {
                                                    switch (b2) {
                                                        case 37:
                                                            a(1);
                                                            this.q = 2;
                                                            this.m.h = 2;
                                                            break;
                                                        case 38:
                                                            a(1);
                                                            this.q = 3;
                                                            this.m.h = 3;
                                                            break;
                                                        case 39:
                                                            a(1);
                                                            this.q = 4;
                                                            this.m.h = 4;
                                                            break;
                                                        default:
                                                            i4 = this.p;
                                                            if (i4 != 0) {
                                                                if (b2 != 33) {
                                                                    switch (b2) {
                                                                        case 44:
                                                                            this.n = Collections.EMPTY_LIST;
                                                                            if (i4 != 1) {
                                                                                h();
                                                                            } else {
                                                                                h();
                                                                            }
                                                                            break;
                                                                        case 45:
                                                                            if (i4 == 1) {
                                                                                hyVar3 = this.m;
                                                                                if (hyVar3.a.isEmpty()) {
                                                                                    hyVar4 = this.m;
                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                    hyVar4.c.setLength(0);
                                                                                    hyVar4.a.clear();
                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                        hyVar4.b.remove(0);
                                                                                    }
                                                                                } else {
                                                                                    hyVar4 = this.m;
                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                    hyVar4.c.setLength(0);
                                                                                    hyVar4.a.clear();
                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                        hyVar4.b.remove(0);
                                                                                    }
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            h();
                                                                            break;
                                                                        case 47:
                                                                            this.n = g();
                                                                            h();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.m.a();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    a(3);
                                                }
                                            }
                                        } else {
                                            i3 = b & 246;
                                            if (i3 != 18) {
                                                if (i2 != 17) {
                                                    if ((b & 240) != 16) {
                                                        if (i2 != 23) {
                                                            if (i3 == 20) {
                                                                if (b2 == 32) {
                                                                    a(2);
                                                                } else if (b2 != 41) {
                                                                    switch (b2) {
                                                                        case 37:
                                                                            a(1);
                                                                            this.q = 2;
                                                                            this.m.h = 2;
                                                                            break;
                                                                        case 38:
                                                                            a(1);
                                                                            this.q = 3;
                                                                            this.m.h = 3;
                                                                            break;
                                                                        case 39:
                                                                            a(1);
                                                                            this.q = 4;
                                                                            this.m.h = 4;
                                                                            break;
                                                                        default:
                                                                            i4 = this.p;
                                                                            if (i4 != 0) {
                                                                                if (b2 != 33) {
                                                                                    switch (b2) {
                                                                                        case 44:
                                                                                            this.n = Collections.EMPTY_LIST;
                                                                                            if (i4 != 1) {
                                                                                                h();
                                                                                            } else {
                                                                                                h();
                                                                                            }
                                                                                            break;
                                                                                        case 45:
                                                                                            if (i4 == 1) {
                                                                                                hyVar3 = this.m;
                                                                                                if (hyVar3.a.isEmpty()) {
                                                                                                    hyVar4 = this.m;
                                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                                    hyVar4.c.setLength(0);
                                                                                                    hyVar4.a.clear();
                                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                                        hyVar4.b.remove(0);
                                                                                                    }
                                                                                                } else {
                                                                                                    hyVar4 = this.m;
                                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                                    hyVar4.c.setLength(0);
                                                                                                    hyVar4.a.clear();
                                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                                        hyVar4.b.remove(0);
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            break;
                                                                                        case 46:
                                                                                            h();
                                                                                            break;
                                                                                        case 47:
                                                                                            this.n = g();
                                                                                            h();
                                                                                            break;
                                                                                    }
                                                                                } else {
                                                                                    this.m.a();
                                                                                    break;
                                                                                }
                                                                            }
                                                                            break;
                                                                    }
                                                                } else {
                                                                    a(3);
                                                                }
                                                            }
                                                        } else if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i2 != 23) {
                                                        if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if ((b & 240) != 16) {
                                                    if (i2 != 23) {
                                                        if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i2 != 23) {
                                                    if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if (i2 != 17) {
                                                if ((b & 240) != 16) {
                                                    if (i2 != 23) {
                                                        if (i3 == 20) {
                                                            if (b2 == 32) {
                                                                a(2);
                                                            } else if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        a(1);
                                                                        this.q = 2;
                                                                        this.m.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        a(1);
                                                                        this.q = 3;
                                                                        this.m.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        a(1);
                                                                        this.q = 4;
                                                                        this.m.h = 4;
                                                                        break;
                                                                    default:
                                                                        i4 = this.p;
                                                                        if (i4 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.n = Collections.EMPTY_LIST;
                                                                                        if (i4 != 1) {
                                                                                            h();
                                                                                        } else {
                                                                                            h();
                                                                                        }
                                                                                        break;
                                                                                    case 45:
                                                                                        if (i4 == 1) {
                                                                                            hyVar3 = this.m;
                                                                                            if (hyVar3.a.isEmpty()) {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            } else {
                                                                                                hyVar4 = this.m;
                                                                                                hyVar4.b.add(hyVar4.b());
                                                                                                hyVar4.c.setLength(0);
                                                                                                hyVar4.a.clear();
                                                                                                iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                                while (hyVar4.b.size() >= iMin) {
                                                                                                    hyVar4.b.remove(0);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        h();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.n = g();
                                                                                        h();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.m.a();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                a(3);
                                                            }
                                                        }
                                                    } else if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i2 != 23) {
                                                    if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if ((b & 240) != 16) {
                                                if (i2 != 23) {
                                                    if (i3 == 20) {
                                                        if (b2 == 32) {
                                                            a(2);
                                                        } else if (b2 != 41) {
                                                            switch (b2) {
                                                                case 37:
                                                                    a(1);
                                                                    this.q = 2;
                                                                    this.m.h = 2;
                                                                    break;
                                                                case 38:
                                                                    a(1);
                                                                    this.q = 3;
                                                                    this.m.h = 3;
                                                                    break;
                                                                case 39:
                                                                    a(1);
                                                                    this.q = 4;
                                                                    this.m.h = 4;
                                                                    break;
                                                                default:
                                                                    i4 = this.p;
                                                                    if (i4 != 0) {
                                                                        if (b2 != 33) {
                                                                            switch (b2) {
                                                                                case 44:
                                                                                    this.n = Collections.EMPTY_LIST;
                                                                                    if (i4 != 1) {
                                                                                        h();
                                                                                    } else {
                                                                                        h();
                                                                                    }
                                                                                    break;
                                                                                case 45:
                                                                                    if (i4 == 1) {
                                                                                        hyVar3 = this.m;
                                                                                        if (hyVar3.a.isEmpty()) {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        } else {
                                                                                            hyVar4 = this.m;
                                                                                            hyVar4.b.add(hyVar4.b());
                                                                                            hyVar4.c.setLength(0);
                                                                                            hyVar4.a.clear();
                                                                                            iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                            while (hyVar4.b.size() >= iMin) {
                                                                                                hyVar4.b.remove(0);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    h();
                                                                                    break;
                                                                                case 47:
                                                                                    this.n = g();
                                                                                    h();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.m.a();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            a(3);
                                                        }
                                                    }
                                                } else if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if (i2 != 23) {
                                                if (i3 == 20) {
                                                    if (b2 == 32) {
                                                        a(2);
                                                    } else if (b2 != 41) {
                                                        switch (b2) {
                                                            case 37:
                                                                a(1);
                                                                this.q = 2;
                                                                this.m.h = 2;
                                                                break;
                                                            case 38:
                                                                a(1);
                                                                this.q = 3;
                                                                this.m.h = 3;
                                                                break;
                                                            case 39:
                                                                a(1);
                                                                this.q = 4;
                                                                this.m.h = 4;
                                                                break;
                                                            default:
                                                                i4 = this.p;
                                                                if (i4 != 0) {
                                                                    if (b2 != 33) {
                                                                        switch (b2) {
                                                                            case 44:
                                                                                this.n = Collections.EMPTY_LIST;
                                                                                if (i4 != 1) {
                                                                                    h();
                                                                                } else {
                                                                                    h();
                                                                                }
                                                                                break;
                                                                            case 45:
                                                                                if (i4 == 1) {
                                                                                    hyVar3 = this.m;
                                                                                    if (hyVar3.a.isEmpty()) {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    } else {
                                                                                        hyVar4 = this.m;
                                                                                        hyVar4.b.add(hyVar4.b());
                                                                                        hyVar4.c.setLength(0);
                                                                                        hyVar4.a.clear();
                                                                                        iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                        while (hyVar4.b.size() >= iMin) {
                                                                                            hyVar4.b.remove(0);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                h();
                                                                                break;
                                                                            case 47:
                                                                                this.n = g();
                                                                                h();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.m.a();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        a(3);
                                                    }
                                                }
                                            } else if (i3 == 20) {
                                                if (b2 == 32) {
                                                    a(2);
                                                } else if (b2 != 41) {
                                                    switch (b2) {
                                                        case 37:
                                                            a(1);
                                                            this.q = 2;
                                                            this.m.h = 2;
                                                            break;
                                                        case 38:
                                                            a(1);
                                                            this.q = 3;
                                                            this.m.h = 3;
                                                            break;
                                                        case 39:
                                                            a(1);
                                                            this.q = 4;
                                                            this.m.h = 4;
                                                            break;
                                                        default:
                                                            i4 = this.p;
                                                            if (i4 != 0) {
                                                                if (b2 != 33) {
                                                                    switch (b2) {
                                                                        case 44:
                                                                            this.n = Collections.EMPTY_LIST;
                                                                            if (i4 != 1) {
                                                                                h();
                                                                            } else {
                                                                                h();
                                                                            }
                                                                            break;
                                                                        case 45:
                                                                            if (i4 == 1) {
                                                                                hyVar3 = this.m;
                                                                                if (hyVar3.a.isEmpty()) {
                                                                                    hyVar4 = this.m;
                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                    hyVar4.c.setLength(0);
                                                                                    hyVar4.a.clear();
                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                        hyVar4.b.remove(0);
                                                                                    }
                                                                                } else {
                                                                                    hyVar4 = this.m;
                                                                                    hyVar4.b.add(hyVar4.b());
                                                                                    hyVar4.c.setLength(0);
                                                                                    hyVar4.a.clear();
                                                                                    iMin = Math.min(hyVar4.h, hyVar4.d);
                                                                                    while (hyVar4.b.size() >= iMin) {
                                                                                        hyVar4.b.remove(0);
                                                                                    }
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            h();
                                                                            break;
                                                                        case 47:
                                                                            this.n = g();
                                                                            h();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.m.a();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    a(3);
                                                }
                                            }
                                        }
                                    } else {
                                        hyVar = this.m;
                                        iArr = B;
                                        c = (char) iArr[(b & 127) - 32];
                                        if (hyVar.c.length() < 32) {
                                            hyVar.c.append(c);
                                        }
                                        if ((b2 & 224) != 0) {
                                            hyVar2 = this.m;
                                            c2 = (char) iArr[(b2 & 127) - 32];
                                            if (hyVar2.c.length() < 32) {
                                                hyVar2.c.append(c2);
                                            }
                                        }
                                    }
                                    z3 = true;
                                }
                            }
                        } else if (z4) {
                            h();
                            z3 = true;
                        }
                    }
                }
            }
        }
    }

    @Override // yads.py
    public final qy c() {
        List list = this.n;
        this.o = list;
        list.getClass();
        return new qy(list);
    }

    @Override // yads.py, yads.ii0
    /* JADX INFO: renamed from: d */
    public final rt5 a() {
        rt5 rt5VarE;
        rt5 rt5VarA = super.a();
        if (rt5VarA != null) {
            return rt5VarA;
        }
        long j = this.k;
        if (j == C.TIME_UNSET) {
            return null;
        }
        long j2 = this.x;
        if (j2 == C.TIME_UNSET || this.e - j2 < j || (rt5VarE = e()) == null) {
            return null;
        }
        this.n = Collections.EMPTY_LIST;
        this.x = C.TIME_UNSET;
        qy qyVarC = c();
        long j3 = this.e;
        rt5VarE.c = j3;
        rt5VarE.d = qyVarC;
        rt5VarE.e = j3;
        return rt5VarE;
    }

    @Override // yads.py
    public final boolean f() {
        return this.n != this.o;
    }

    @Override // yads.py, yads.ii0
    public final void flush() {
        super.flush();
        this.n = null;
        this.o = null;
        a(0);
        this.q = 4;
        this.m.h = 4;
        h();
        this.r = false;
        this.s = false;
        this.t = (byte) 0;
        this.u = (byte) 0;
        this.v = 0;
        this.w = true;
        this.x = C.TIME_UNSET;
    }

    public final ArrayList g() {
        int size = this.l.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i = 0; i < size; i++) {
            sb0 sb0VarA = ((hy) this.l.get(i)).a(Integer.MIN_VALUE);
            arrayList.add(sb0VarA);
            if (sb0VarA != null) {
                iMin = Math.min(iMin, sb0VarA.j);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            sb0 sb0VarA2 = (sb0) arrayList.get(i2);
            if (sb0VarA2 != null) {
                if (sb0VarA2.j != iMin) {
                    sb0VarA2 = ((hy) this.l.get(i2)).a(iMin);
                    sb0VarA2.getClass();
                }
                arrayList2.add(sb0VarA2);
            }
        }
        return arrayList2;
    }

    public final void h() {
        hy hyVar = this.m;
        hyVar.g = this.p;
        hyVar.a.clear();
        hyVar.b.clear();
        hyVar.c.setLength(0);
        hyVar.d = 15;
        hyVar.e = 0;
        hyVar.f = 0;
        this.l.clear();
        this.l.add(this.m);
    }

    @Override // yads.py, yads.ii0
    public final void release() {
    }

    public final void a(int i) {
        int i2 = this.p;
        if (i2 == i) {
            return;
        }
        this.p = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.l.size(); i3++) {
                ((hy) this.l.get(i3)).g = i;
            }
            return;
        }
        h();
        if (i2 == 3 || i == 1 || i == 0) {
            this.n = Collections.EMPTY_LIST;
        }
    }
}
