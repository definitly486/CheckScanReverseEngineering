package yads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* JADX INFO: loaded from: classes6.dex */
public final class gz3 implements fz3 {
    @Override // yads.fz3
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // yads.fz3
    public final boolean b() {
        return false;
    }

    @Override // yads.fz3
    public final int a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // yads.fz3
    public final MediaCodecInfo a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // yads.fz3
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }
}
