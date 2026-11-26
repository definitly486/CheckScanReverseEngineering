package androidx.camera.video.internal.config;

import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.core.util.Supplier;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AudioSettingsDefaultResolver implements Supplier<AudioSettings> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "DefAudioResolver";
    private final AudioSpec audioSpec;
    private final Rational captureToEncodeRatio;

    public AudioSettingsDefaultResolver(AudioSpec audioSpec, Rational rational) {
        audioSpec.getClass();
        this.audioSpec = audioSpec;
        this.captureToEncodeRatio = rational;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.util.Supplier
    public AudioSettings get() {
        AudioConfigUtil audioConfigUtil = AudioConfigUtil.INSTANCE;
        int iResolveAudioSource = audioConfigUtil.resolveAudioSource(this.audioSpec);
        int iResolveAudioSourceFormat = audioConfigUtil.resolveAudioSourceFormat(this.audioSpec);
        int channelCount = this.audioSpec.getChannelCount();
        if (channelCount == -1) {
            Logger.d(TAG, "Using fallback AUDIO channel count: 1");
            channelCount = 1;
        } else {
            Logger.d(TAG, "Using supplied AUDIO channel count: " + channelCount);
        }
        int sampleRate = this.audioSpec.getSampleRate();
        if (sampleRate == 0) {
            sampleRate = 44100;
        }
        CaptureEncodeRates captureEncodeRatesResolveSampleRates$camera_video = audioConfigUtil.resolveSampleRates$camera_video(sampleRate, channelCount, iResolveAudioSourceFormat, this.captureToEncodeRatio);
        Logger.d(TAG, "Using AUDIO sample rate resolved from AudioSpec: Capture sample rate: " + captureEncodeRatesResolveSampleRates$camera_video.getCaptureRate() + "Hz. Encode sample rate: " + captureEncodeRatesResolveSampleRates$camera_video.getEncodeRate() + "Hz.");
        AudioSettings audioSettingsBuild = AudioSettings.builder().setAudioSource(iResolveAudioSource).setAudioFormat(iResolveAudioSourceFormat).setChannelCount(channelCount).setCaptureSampleRate(captureEncodeRatesResolveSampleRates$camera_video.getCaptureRate()).setEncodeSampleRate(captureEncodeRatesResolveSampleRates$camera_video.getEncodeRate()).build();
        audioSettingsBuild.getClass();
        return audioSettingsBuild;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
