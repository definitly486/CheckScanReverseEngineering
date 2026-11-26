package androidx.camera.video.internal.config;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import androidx.core.util.Supplier;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AudioEncoderConfigAudioProfileResolver implements Supplier<AudioEncoderConfig> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AudioEncAdPrflRslvr";
    private final int audioProfile;
    private final EncoderProfilesProxy.AudioProfileProxy audioProfileProxy;
    private final AudioSettings audioSettings;
    private final AudioSpec audioSpec;
    private final Timebase inputTimebase;
    private final String mimeType;

    public AudioEncoderConfigAudioProfileResolver(String str, int i, Timebase timebase, AudioSpec audioSpec, AudioSettings audioSettings, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy) {
        str.getClass();
        timebase.getClass();
        audioSpec.getClass();
        audioSettings.getClass();
        audioProfileProxy.getClass();
        this.mimeType = str;
        this.audioProfile = i;
        this.inputTimebase = timebase;
        this.audioSpec = audioSpec;
        this.audioSettings = audioSettings;
        this.audioProfileProxy = audioProfileProxy;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.util.Supplier
    public AudioEncoderConfig get() {
        int bitrate = this.audioSpec.getBitrate();
        if (bitrate == 0) {
            Logger.d(TAG, "Using resolved AUDIO bitrate from AudioProfile");
            bitrate = AudioConfigUtil.INSTANCE.scaleBitrate(this.audioProfileProxy.getBitrate(), this.audioSettings.getChannelCount(), this.audioProfileProxy.getChannels(), this.audioSettings.getEncodeSampleRate(), this.audioProfileProxy.getSampleRate());
        }
        AudioEncoderConfig audioEncoderConfigBuild = AudioEncoderConfig.builder().setMimeType(this.mimeType).setProfile(this.audioProfile).setInputTimebase(this.inputTimebase).setChannelCount(this.audioSettings.getChannelCount()).setCaptureSampleRate(this.audioSettings.getCaptureSampleRate()).setEncodeSampleRate(this.audioSettings.getEncodeSampleRate()).setBitrate(bitrate).build();
        audioEncoderConfigBuild.getClass();
        return audioEncoderConfigBuild;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
