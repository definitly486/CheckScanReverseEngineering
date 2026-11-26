package yads;

import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f0 {
    public static final int[] a = {1, 2, 3, 6};
    public static final int[] b = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    public static final int[] c = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};
    public static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};
    public static final int[] e = {32, 40, 48, 56, 64, 80, 96, 112, 128, WebmConstants.MkvEbmlElement.BLOCK_GROUP, PsExtractor.AUDIO_STREAM, 224, 256, 320, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};
    public static final int[] f = {69, 87, 104, 121, TsExtractor.TS_STREAM_TYPE_DTS_UHD, WebmConstants.MkvEbmlElement.TRACK_ENTRY, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int a(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int[] iArr = b;
        if (i >= 3 || i2 < 0) {
            return -1;
        }
        int[] iArr2 = f;
        if (i3 >= 19) {
            return -1;
        }
        int i4 = iArr[i];
        if (i4 == 44100) {
            return ((i2 % 2) + iArr2[i3]) * 2;
        }
        int i5 = e[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }
}
