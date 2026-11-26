package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class EncoderInfoImpl implements EncoderInfo {
    private final MediaCodecInfo.CodecCapabilities codecCapabilities;
    private final MediaCodecInfo mediaCodecInfo;

    public EncoderInfoImpl(MediaCodecInfo mediaCodecInfo, String str) throws InvalidConfigException {
        mediaCodecInfo.getClass();
        str.getClass();
        this.mediaCodecInfo = mediaCodecInfo;
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
            capabilitiesForType.getClass();
            this.codecCapabilities = capabilitiesForType;
        } catch (RuntimeException e) {
            throw new InvalidConfigException("Unable to get CodecCapabilities for mime: ".concat(str), e);
        }
    }

    public final MediaCodecInfo.CodecCapabilities getCodecCapabilities() {
        return this.codecCapabilities;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderInfo
    public String getName() {
        String name = this.mediaCodecInfo.getName();
        name.getClass();
        return name;
    }
}
