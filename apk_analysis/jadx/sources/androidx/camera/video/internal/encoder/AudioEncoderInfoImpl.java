package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import android.util.Range;

/* JADX INFO: loaded from: classes.dex */
public final class AudioEncoderInfoImpl extends EncoderInfoImpl implements AudioEncoderInfo {
    private final MediaCodecInfo.AudioCapabilities audioCapabilities;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEncoderInfoImpl(MediaCodecInfo mediaCodecInfo, String str) {
        super(mediaCodecInfo, str);
        mediaCodecInfo.getClass();
        str.getClass();
        MediaCodecInfo.AudioCapabilities audioCapabilities = getCodecCapabilities().getAudioCapabilities();
        audioCapabilities.getClass();
        this.audioCapabilities = audioCapabilities;
    }

    @Override // androidx.camera.video.internal.encoder.AudioEncoderInfo
    public Range<Integer> getBitrateRange() {
        Range<Integer> bitrateRange = this.audioCapabilities.getBitrateRange();
        bitrateRange.getClass();
        return bitrateRange;
    }
}
