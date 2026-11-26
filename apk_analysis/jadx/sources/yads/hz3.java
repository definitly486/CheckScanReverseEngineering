package yads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* JADX INFO: loaded from: classes6.dex */
public final class hz3 implements fz3 {
    public final int a;
    public MediaCodecInfo[] b;

    public hz3(boolean z, boolean z2) {
        this.a = (z || z2) ? 1 : 0;
    }

    @Override // yads.fz3
    public final MediaCodecInfo a(int i) {
        MediaCodecInfo[] codecInfos = this.b;
        if (codecInfos == null) {
            codecInfos = new MediaCodecList(this.a).getCodecInfos();
            this.b = codecInfos;
        }
        return codecInfos[i];
    }

    @Override // yads.fz3
    public final boolean b() {
        return true;
    }

    @Override // yads.fz3
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override // yads.fz3
    public final int a() {
        MediaCodecInfo[] codecInfos = this.b;
        if (codecInfos == null) {
            codecInfos = new MediaCodecList(this.a).getCodecInfos();
            this.b = codecInfos;
        }
        return codecInfos.length;
    }

    @Override // yads.fz3
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }
}
