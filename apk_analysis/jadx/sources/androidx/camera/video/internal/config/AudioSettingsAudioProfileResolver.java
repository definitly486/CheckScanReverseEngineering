package androidx.camera.video.internal.config;

import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.core.util.Supplier;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class AudioSettingsAudioProfileResolver implements Supplier<AudioSettings> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AudioSrcAdPrflRslvr";
    private final EncoderProfilesProxy.AudioProfileProxy audioProfile;
    private final AudioSpec audioSpec;
    private final Rational captureToEncodeRatio;

    public AudioSettingsAudioProfileResolver(AudioSpec audioSpec, EncoderProfilesProxy.AudioProfileProxy audioProfileProxy, Rational rational) {
        audioSpec.getClass();
        audioProfileProxy.getClass();
        this.audioSpec = audioSpec;
        this.audioProfile = audioProfileProxy;
        this.captureToEncodeRatio = rational;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.util.Supplier
    public AudioSettings get() {
        AudioConfigUtil audioConfigUtil = AudioConfigUtil.INSTANCE;
        int iResolveAudioSource = audioConfigUtil.resolveAudioSource(this.audioSpec);
        int iResolveAudioSourceFormat = audioConfigUtil.resolveAudioSourceFormat(this.audioSpec);
        int channelCount = this.audioSpec.getChannelCount();
        int channels = this.audioProfile.getChannels();
        if (channelCount == -1) {
            Logger.d(TAG, "Resolved AUDIO channel count from AudioProfile: " + channels);
            channelCount = channels;
        } else {
            Logger.d(TAG, "Media spec AUDIO channel count overrides AudioProfile [AudioProfile channel count: " + channels + ", Resolved Channel Count: " + channelCount + ']');
        }
        int sampleRate = this.audioSpec.getSampleRate();
        int sampleRate2 = this.audioProfile.getSampleRate();
        if (sampleRate == 0) {
            sampleRate = sampleRate2;
        }
        CaptureEncodeRates captureEncodeRatesResolveSampleRates$camera_video = audioConfigUtil.resolveSampleRates$camera_video(sampleRate, channelCount, iResolveAudioSourceFormat, this.captureToEncodeRatio);
        Logger.d(TAG, "Using resolved AUDIO sample rate or nearest supported from AudioProfile: Capture sample rate: " + captureEncodeRatesResolveSampleRates$camera_video.getCaptureRate() + "Hz. Encode sample rate: " + captureEncodeRatesResolveSampleRates$camera_video.getEncodeRate() + "Hz. [AudioProfile sample rate: " + sampleRate2 + "Hz]");
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
