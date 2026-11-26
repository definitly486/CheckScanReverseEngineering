package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.tracing.Trace;
import androidx.work.WorkInfo;

/* JADX INFO: loaded from: classes6.dex */
public final class pm2 {
    public static final byte[] h = {0, 7, 8, 15};
    public static final byte[] i = {0, 119, -120, -1};
    public static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public final Paint a;
    public final Paint b;
    public final Canvas c;
    public final im2 d;
    public final hm2 e;
    public final om2 f;
    public Bitmap g;

    public pm2(int i2, int i3) {
        Paint paint = new Paint();
        this.a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.c = new Canvas();
        this.d = new im2(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.e = new hm2(0, new int[]{0, -1, -16777216, -8421505}, a(), b());
        this.f = new om2(i2, i3);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x01f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:125:0x020f  */
    /* JADX WARN: Code duplicated, block: B:131:0x021c  */
    /* JADX WARN: Code duplicated, block: B:133:0x022b A[LOOP:3: B:97:0x0186->B:133:0x022b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:157:0x0217 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    public static void a(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        char c;
        ?? A;
        int iA;
        int iA2;
        int i5;
        int iA3;
        int iA4;
        ?? r4;
        int i6;
        int i7;
        int iA5;
        Paint paint2 = paint;
        ns4 ns4Var = new ns4(bArr);
        int i8 = i3;
        int i9 = i4;
        byte[] bArr4 = null;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        while (ns4Var.b() != 0) {
            int iA6 = ns4Var.a(8);
            if (iA6 != 240) {
                int i10 = 4;
                int i11 = 2;
                int i12 = 1;
                switch (iA6) {
                    case 16:
                        if (i2 == 3) {
                            if (bArr4 == null) {
                                bArr3 = i;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArr4;
                            }
                        } else if (i2 != 2) {
                            bArr2 = null;
                        } else if (bArr6 == null) {
                            bArr3 = h;
                            bArr2 = bArr3;
                        } else {
                            bArr2 = bArr6;
                        }
                        boolean z = false;
                        while (true) {
                            int iA7 = ns4Var.a(2);
                            if (iA7 != 0) {
                                iA = 1;
                            } else {
                                if (!ns4Var.e()) {
                                    if (!ns4Var.e()) {
                                        int iA8 = ns4Var.a(2);
                                        if (iA8 != 0) {
                                            if (iA8 == 1) {
                                                c = 4;
                                                iA = 2;
                                            } else if (iA8 == 2) {
                                                c = 4;
                                                iA = ns4Var.a(4) + 12;
                                                z = z;
                                                A = ns4Var.a(2);
                                            } else if (iA8 != 3) {
                                                z = z;
                                                c = 4;
                                            } else {
                                                iA2 = ns4Var.a(8) + 29;
                                                iA7 = ns4Var.a(2);
                                            }
                                            if (iA == 0 && paint2 != null) {
                                                if (bArr2 != 0) {
                                                    A = bArr2[A];
                                                }
                                                paint2.setColor(iArr[A]);
                                                canvas.drawRect(i8, i9, i8 + iA, i9 + 1, paint2);
                                            }
                                            i8 += iA;
                                            if (z) {
                                                paint2 = paint;
                                                z = z;
                                            } else if (ns4Var.c != 0) {
                                                ns4Var.c = 0;
                                                ns4Var.b++;
                                                ns4Var.a();
                                            }
                                        } else {
                                            c = 4;
                                            z = true;
                                        }
                                        A = 0;
                                        iA = 0;
                                        if (iA == 0) {
                                        }
                                        i8 += iA;
                                        if (z) {
                                            paint2 = paint;
                                            z = z;
                                        } else if (ns4Var.c != 0) {
                                            ns4Var.c = 0;
                                            ns4Var.b++;
                                            ns4Var.a();
                                        }
                                    } else {
                                        iA = 1;
                                        c = 4;
                                    }
                                    A = 0;
                                    if (iA == 0) {
                                    }
                                    i8 += iA;
                                    if (z) {
                                        paint2 = paint;
                                        z = z;
                                    } else if (ns4Var.c != 0) {
                                        ns4Var.c = 0;
                                        ns4Var.b++;
                                        ns4Var.a();
                                    }
                                } else {
                                    iA2 = ns4Var.a(3) + 3;
                                    iA7 = ns4Var.a(2);
                                }
                                iA = iA2;
                            }
                            A = iA7;
                            c = 4;
                            if (iA == 0) {
                            }
                            i8 += iA;
                            if (z) {
                                paint2 = paint;
                                z = z;
                            } else if (ns4Var.c != 0) {
                                ns4Var.c = 0;
                                ns4Var.b++;
                                ns4Var.a();
                            }
                            break;
                        }
                        break;
                    case 17:
                        byte[] bArr7 = i2 == 3 ? bArr5 == null ? j : bArr5 : null;
                        boolean z2 = false;
                        while (true) {
                            int iA9 = ns4Var.a(i10);
                            if (iA9 != 0) {
                                z2 = z2;
                                i5 = 1;
                                r4 = iA9;
                            } else if (ns4Var.e()) {
                                if (ns4Var.e()) {
                                    int iA10 = ns4Var.a(i11);
                                    if (iA10 == 0) {
                                        i5 = 1;
                                    } else if (iA10 == 1) {
                                        i5 = i11;
                                    } else if (iA10 == i11) {
                                        iA3 = ns4Var.a(i10) + 9;
                                        iA4 = ns4Var.a(i10);
                                    } else if (iA10 != 3) {
                                        z2 = z2;
                                        r4 = 0;
                                        i5 = 0;
                                    } else {
                                        iA3 = ns4Var.a(8) + 25;
                                        iA4 = ns4Var.a(i10);
                                    }
                                    r4 = 0;
                                } else {
                                    iA3 = ns4Var.a(i11) + i10;
                                    iA4 = ns4Var.a(i10);
                                }
                                i5 = iA3;
                                z2 = z2;
                                r4 = iA4;
                            } else {
                                int iA11 = ns4Var.a(3);
                                if (iA11 != 0) {
                                    i5 = iA11 + 2;
                                    r4 = 0;
                                } else {
                                    z2 = true;
                                    r4 = 0;
                                    i5 = 0;
                                }
                            }
                            if (i5 == 0 || paint2 == null) {
                                i6 = i11;
                            } else {
                                if (bArr7 != 0) {
                                    r4 = bArr7[r4];
                                }
                                paint2.setColor(iArr[r4]);
                                i6 = 2;
                                canvas.drawRect(i8, i9, i8 + i5, i9 + 1, paint2);
                            }
                            i8 += i5;
                            if (!z2) {
                                i11 = i6;
                                z2 = z2;
                                i10 = 4;
                            } else if (ns4Var.c == 0) {
                                continue;
                            } else {
                                ns4Var.c = 0;
                                ns4Var.b++;
                                ns4Var.a();
                            }
                            break;
                        }
                        break;
                    case 18:
                        int i13 = i8;
                        int i14 = 0;
                        while (true) {
                            int iA12 = ns4Var.a(8);
                            if (iA12 != 0) {
                                i7 = i14;
                                iA5 = i12;
                            } else if (ns4Var.e()) {
                                i7 = i14;
                                iA5 = ns4Var.a(7);
                                iA12 = ns4Var.a(8);
                            } else {
                                int iA13 = ns4Var.a(7);
                                if (iA13 != 0) {
                                    i7 = i14;
                                    iA5 = iA13;
                                    iA12 = 0;
                                } else {
                                    i7 = i12;
                                    iA12 = 0;
                                    iA5 = 0;
                                }
                            }
                            if (iA5 != 0 && paint2 != null) {
                                paint2.setColor(iArr[iA12]);
                                canvas.drawRect(i13, i9, i13 + iA5, i9 + 1, paint2);
                            }
                            i13 += iA5;
                            if (i7 != 0) {
                                i8 = i13;
                                continue;
                            } else {
                                i12 = i12;
                                i14 = i7;
                            }
                            break;
                        }
                        break;
                    default:
                        switch (iA6) {
                            case 32:
                                bArr6 = new byte[4];
                                for (int i15 = 0; i15 < 4; i15++) {
                                    bArr6[i15] = (byte) ns4Var.a(4);
                                }
                                break;
                            case 33:
                                bArr4 = new byte[4];
                                for (int i16 = 0; i16 < 4; i16++) {
                                    bArr4[i16] = (byte) ns4Var.a(8);
                                }
                                break;
                            case 34:
                                bArr5 = new byte[16];
                                for (int i17 = 0; i17 < 16; i17++) {
                                    bArr5[i17] = (byte) ns4Var.a(8);
                                }
                                break;
                            default:
                                continue;
                        }
                        break;
                }
            } else {
                i9 += 2;
                i8 = i3;
            }
            paint2 = paint;
        }
    }

    public static int[] b() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = a(Trace.MAX_TRACE_LABEL_LENGTH, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 43 : 0) + Trace.MAX_TRACE_LABEL_LENGTH + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + Trace.MAX_TRACE_LABEL_LENGTH + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + Trace.MAX_TRACE_LABEL_LENGTH + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static hm2 a(ns4 ns4Var, int i2) {
        int[] iArr;
        int i3;
        int iA;
        int iA2;
        int iA3;
        int iA4;
        int i4 = 8;
        int iA5 = ns4Var.a(8);
        ns4Var.c(8);
        int i5 = 2;
        int i6 = i2 - 2;
        int i7 = 4;
        int i8 = 0;
        int[] iArr2 = {0, -1, -16777216, -8421505};
        int[] iArrA = a();
        int[] iArrB = b();
        while (i6 > 0) {
            int iA6 = ns4Var.a(i4);
            int iA7 = ns4Var.a(i4);
            if ((iA7 & 128) != 0) {
                iArr = iArr2;
            } else {
                iArr = (iA7 & 64) != 0 ? iArrA : iArrB;
            }
            if ((iA7 & 1) != 0) {
                iA2 = ns4Var.a(i4);
                iA3 = ns4Var.a(i4);
                iA4 = ns4Var.a(i4);
                iA = ns4Var.a(i4);
                i3 = i6 - 6;
            } else {
                int iA8 = ns4Var.a(6) << i5;
                int iA9 = ns4Var.a(i7) << i7;
                int iA10 = ns4Var.a(i7) << i7;
                i3 = i6 - 4;
                iA = ns4Var.a(i5) << 6;
                iA2 = iA8;
                iA3 = iA9;
                iA4 = iA10;
            }
            if (iA2 == 0) {
                iA = 255;
                iA3 = i8;
                iA4 = iA3;
            }
            int i9 = i3;
            double d = iA2;
            double d2 = iA3 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            double d3 = iA4 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            int i10 = u56.a;
            iArr[iA6] = a((byte) (255 - (iA & 255)), Math.max(0, Math.min((int) ((1.402d * d2) + d), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) ((d3 * 1.772d) + d), 255)));
            i6 = i9;
            i8 = 0;
            iArr2 = iArr2;
            iArrA = iArrA;
            i4 = 8;
            i5 = 2;
            i7 = 4;
        }
        return new hm2(iA5, iArr2, iArrA, iArrB);
    }

    public static jm2 a(ns4 ns4Var) {
        byte[] bArr;
        int iA = ns4Var.a(16);
        ns4Var.c(4);
        int iA2 = ns4Var.a(2);
        boolean zE = ns4Var.e();
        ns4Var.c(1);
        byte[] bArr2 = u56.f;
        if (iA2 == 1) {
            ns4Var.c(ns4Var.a(8) * 16);
        } else {
            if (iA2 == 0) {
                int iA3 = ns4Var.a(16);
                int iA4 = ns4Var.a(16);
                if (iA3 > 0) {
                    bArr2 = new byte[iA3];
                    if (ns4Var.c == 0) {
                        System.arraycopy(ns4Var.a, ns4Var.b, bArr2, 0, iA3);
                        ns4Var.b += iA3;
                        ns4Var.a();
                    } else {
                        defpackage.ud.g();
                        return null;
                    }
                }
                if (iA4 > 0) {
                    bArr = new byte[iA4];
                    if (ns4Var.c == 0) {
                        System.arraycopy(ns4Var.a, ns4Var.b, bArr, 0, iA4);
                        ns4Var.b += iA4;
                        ns4Var.a();
                    } else {
                        defpackage.ud.g();
                        return null;
                    }
                }
            }
            return new jm2(iA, zE, bArr2, bArr);
        }
        bArr = bArr2;
        return new jm2(iA, zE, bArr2, bArr);
    }

    public static int[] a() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                int i3 = i2 & 1;
                int i4 = Trace.MAX_TRACE_LABEL_LENGTH;
                int i5 = i3 != 0 ? 127 : 0;
                int i6 = (i2 & 2) != 0 ? 127 : 0;
                if ((i2 & 4) == 0) {
                    i4 = 0;
                }
                iArr[i2] = a(255, i5, i6, i4);
            }
        }
        return iArr;
    }

    public static int a(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }
}
