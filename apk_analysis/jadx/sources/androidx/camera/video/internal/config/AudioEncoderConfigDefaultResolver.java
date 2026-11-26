package androidx.camera.video.internal.config;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import androidx.core.util.Supplier;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AudioEncoderConfigDefaultResolver implements Supplier<AudioEncoderConfig> {
    private static final int AUDIO_BITRATE_BASE = 156000;
    private static final int AUDIO_CHANNEL_COUNT_BASE = 2;
    private static final int AUDIO_SAMPLE_RATE_BASE = 48000;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AudioEncCfgDefaultRslvr";
    private final int audioProfile;
    private final AudioSettings audioSettings;
    private final AudioSpec audioSpec;
    private final Timebase inputTimeBase;
    private final String mimeType;

    public AudioEncoderConfigDefaultResolver(String str, int i, Timebase timebase, AudioSpec audioSpec, AudioSettings audioSettings) {
        str.getClass();
        timebase.getClass();
        audioSpec.getClass();
        audioSettings.getClass();
        this.mimeType = str;
        this.audioProfile = i;
        this.inputTimeBase = timebase;
        this.audioSpec = audioSpec;
        this.audioSettings = audioSettings;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.util.Supplier
    public AudioEncoderConfig get() {
        int bitrate = this.audioSpec.getBitrate();
        if (bitrate == 0) {
            Logger.d(TAG, "Using fallback AUDIO bitrate");
            bitrate = AudioConfigUtil.INSTANCE.scaleBitrate(AUDIO_BITRATE_BASE, this.audioSettings.getChannelCount(), 2, this.audioSettings.getEncodeSampleRate(), 48000);
        }
        AudioEncoderConfig audioEncoderConfigBuild = AudioEncoderConfig.builder().setMimeType(this.mimeType).setProfile(this.audioProfile).setInputTimebase(this.inputTimeBase).setChannelCount(this.audioSettings.getChannelCount()).setCaptureSampleRate(this.audioSettings.getCaptureSampleRate()).setEncodeSampleRate(this.audioSettings.getEncodeSampleRate()).setBitrate(bitrate).build();
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
