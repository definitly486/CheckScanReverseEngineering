package androidx.media3.exoplayer.mediacodec;

import defpackage.g7;
import defpackage.y83;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT;
    public static final MediaCodecSelector PREFER_SOFTWARE;

    static {
        int i = 2;
        DEFAULT = new g7(i);
        PREFER_SOFTWARE = new y83(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ List lambda$static$0(String str, boolean z, boolean z2) {
        return MediaCodecUtil.getDecoderInfosSortedBySoftwareOnly(DEFAULT.getDecoderInfos(str, z, z2));
    }

    List<MediaCodecInfo> getDecoderInfos(String str, boolean z, boolean z2);
}
