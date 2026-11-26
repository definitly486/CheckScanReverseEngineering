package yads;

import androidx.core.view.MotionEventCompat;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.ts.PsExtractor;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zl2 {
    public static final int[] a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    public static final int[] b = {-1, 8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, OpusUtil.SAMPLE_RATE, -1, -1};
    public static final int[] c = {64, 112, 128, PsExtractor.AUDIO_STREAM, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static vz2 a(byte[] bArr, String str, String str2) {
        ns4 ns4Var;
        byte[] bArr2;
        if (bArr[0] == 127) {
            ns4Var = new ns4(bArr);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            byte b2 = bArrCopyOf[0];
            if (b2 == -2 || b2 == -1) {
                for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
                    byte b3 = bArrCopyOf[i];
                    int i2 = i + 1;
                    bArrCopyOf[i] = bArrCopyOf[i2];
                    bArrCopyOf[i2] = b3;
                }
            }
            ns4Var = new ns4(bArrCopyOf);
            if (bArrCopyOf[0] == 31) {
                ns4 ns4Var2 = new ns4(bArrCopyOf);
                while (ns4Var2.b() >= 16) {
                    ns4Var2.c(2);
                    int iA = ns4Var2.a(14) & 16383;
                    int iMin = Math.min(8 - ns4Var.c, 14);
                    int i3 = ns4Var.c;
                    int i4 = (8 - i3) - iMin;
                    int i5 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i3) | ((1 << i4) - 1);
                    byte[] bArr3 = ns4Var.a;
                    int i6 = ns4Var.b;
                    byte b4 = (byte) (i5 & bArr3[i6]);
                    bArr3[i6] = b4;
                    int i7 = 14 - iMin;
                    bArr3[i6] = (byte) (b4 | ((iA >>> i7) << i4));
                    int i8 = i6 + 1;
                    while (true) {
                        bArr2 = ns4Var.a;
                        if (i7 > 8) {
                            bArr2[i8] = (byte) (iA >>> (i7 - 8));
                            i7 -= 8;
                            i8++;
                        }
                    }
                    int i9 = 8 - i7;
                    byte b5 = (byte) (bArr2[i8] & ((1 << i9) - 1));
                    bArr2[i8] = b5;
                    bArr2[i8] = (byte) (((iA & ((1 << i7) - 1)) << i9) | b5);
                    ns4Var.c(14);
                    ns4Var.a();
                }
            }
            ns4Var.b(bArrCopyOf, bArrCopyOf.length);
        }
        ns4Var.c(60);
        int i10 = a[ns4Var.a(6)];
        int i11 = b[ns4Var.a(4)];
        int iA2 = ns4Var.a(5);
        int i12 = iA2 < 29 ? (c[iA2] * 1000) / 2 : -1;
        ns4Var.c(10);
        int i13 = i10 + (ns4Var.a(2) > 0 ? 1 : 0);
        uz2 uz2Var = new uz2();
        uz2Var.a = str;
        uz2Var.k = MimeTypes.AUDIO_DTS;
        uz2Var.f = i12;
        uz2Var.x = i13;
        uz2Var.y = i11;
        uz2Var.n = null;
        uz2Var.c = str2;
        return new vz2(uz2Var);
    }
}
