package androidx.camera.video.internal.config;

import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AudioSpec;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.config.AudioConfigUtil;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import defpackage.aa4;
import defpackage.bg;
import defpackage.bm3;
import defpackage.gg;
import defpackage.hg;
import defpackage.mz0;
import defpackage.nn1;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AudioConfigUtil {
    private static final int AAC_DEFAULT_PROFILE = 2;
    public static final int AUDIO_CHANNEL_COUNT_DEFAULT = 1;
    private static final String AUDIO_ENCODER_MIME_MPEG4_DEFAULT = "audio/mp4a-latm";
    private static final String AUDIO_ENCODER_MIME_WEBM_DEFAULT = "audio/vorbis";
    public static final int AUDIO_SAMPLE_RATE_DEFAULT = 44100;
    public static final int AUDIO_SOURCE_DEFAULT = 5;
    public static final int AUDIO_SOURCE_FORMAT_DEFAULT = 2;
    public static final AudioConfigUtil INSTANCE = new AudioConfigUtil();
    private static final String TAG = "AudioConfigUtil";

    private AudioConfigUtil() {
    }

    public static final AudioEncoderConfig resolveAudioEncoderConfig(AudioMimeInfo audioMimeInfo, Timebase timebase, AudioSettings audioSettings, AudioSpec audioSpec) {
        audioMimeInfo.getClass();
        timebase.getClass();
        audioSettings.getClass();
        audioSpec.getClass();
        Object obj = (audioMimeInfo.getCompatibleAudioProfile() != null ? new AudioEncoderConfigAudioProfileResolver(audioMimeInfo.getMimeType(), audioMimeInfo.getProfile(), timebase, audioSpec, audioSettings, audioMimeInfo.getCompatibleAudioProfile()) : new AudioEncoderConfigDefaultResolver(audioMimeInfo.getMimeType(), audioMimeInfo.getProfile(), timebase, audioSpec, audioSettings)).get();
        obj.getClass();
        return (AudioEncoderConfig) obj;
    }

    public static final AudioMimeInfo resolveAudioMimeInfo(MediaSpec mediaSpec, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        EncoderProfilesProxy.AudioProfileProxy defaultAudioProfile;
        mediaSpec.getClass();
        MediaSpec.Companion companion = MediaSpec.Companion;
        String strOutputFormatToAudioMime = companion.outputFormatToAudioMime(mediaSpec.getOutputFormat());
        int iOutputFormatToAudioProfile = companion.outputFormatToAudioProfile(mediaSpec.getOutputFormat());
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = null;
        if (videoValidatedEncoderProfilesProxy != null && (defaultAudioProfile = videoValidatedEncoderProfilesProxy.getDefaultAudioProfile()) != null) {
            String mediaType = defaultAudioProfile.getMediaType();
            mediaType.getClass();
            int profile = defaultAudioProfile.getProfile();
            if (mediaType.equals(EncoderProfilesProxy.AudioProfileProxy.MEDIA_TYPE_NONE)) {
                Logger.d(TAG, hg.d(iOutputFormatToAudioProfile, "EncoderProfiles contains undefined AUDIO mime type so cannot be used. May rely on fallback defaults to derive settings [chosen mime type: ", strOutputFormatToAudioMime, "(profile: ", ")]"));
            } else if (mediaSpec.getOutputFormat() == -1) {
                Logger.d(TAG, hg.d(profile, "MediaSpec contains OUTPUT_FORMAT_UNSPECIFIED. Using EncoderProfiles to derive AUDIO settings [mime type: ", mediaType, "(profile: ", ")]"));
                audioProfileProxy = defaultAudioProfile;
                strOutputFormatToAudioMime = mediaType;
                iOutputFormatToAudioProfile = profile;
            } else if (aa4.e(strOutputFormatToAudioMime, mediaType) && iOutputFormatToAudioProfile == profile) {
                Logger.d(TAG, hg.d(iOutputFormatToAudioProfile, "MediaSpec audio mime/profile matches EncoderProfiles. Using EncoderProfiles to derive AUDIO settings [mime type: ", mediaType, "(profile: ", ")]"));
                audioProfileProxy = defaultAudioProfile;
                strOutputFormatToAudioMime = mediaType;
            } else {
                StringBuilder sbA = mz0.a(profile, "MediaSpec audio mime or profile does not match EncoderProfiles, so EncoderProfiles settings cannot be used. May rely on fallback defaults to derive AUDIO settings [EncoderProfiles mime type: ", mediaType, "(profile: ", "), chosen mime type: ");
                sbA.append(strOutputFormatToAudioMime);
                sbA.append("(profile: ");
                sbA.append(iOutputFormatToAudioProfile);
                sbA.append(")]");
                Logger.d(TAG, sbA.toString());
            }
        }
        return new AudioMimeInfo(strOutputFormatToAudioMime, iOutputFormatToAudioProfile, audioProfileProxy);
    }

    public static final AudioSettings resolveAudioSettings(AudioMimeInfo audioMimeInfo, AudioSpec audioSpec, Rational rational) {
        audioMimeInfo.getClass();
        audioSpec.getClass();
        Object obj = (audioMimeInfo.getCompatibleAudioProfile() != null ? new AudioSettingsAudioProfileResolver(audioSpec, audioMimeInfo.getCompatibleAudioProfile(), rational) : new AudioSettingsDefaultResolver(audioSpec, rational)).get();
        obj.getClass();
        return (AudioSettings) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int selectSampleRateOrNearestSupported$lambda$0(int i, int i2, int i3) {
        int iAbs = Math.abs(i2 - i) - Math.abs(i3 - i);
        return iAbs == 0 ? Integer.signum(i2 - i3) : Integer.signum(iAbs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int selectSampleRateOrNearestSupported$lambda$1(bm3 bm3Var, Object obj, Object obj2) {
        return ((Number) bm3Var.invoke(obj, obj2)).intValue();
    }

    public final int audioMimeToAudioProfile(String str) {
        str.getClass();
        return str.equals("audio/mp4a-latm") ? 2 : -1;
    }

    public final String outputFormatToAudioMime(int i) {
        return i == 1 ? "audio/vorbis" : "audio/mp4a-latm";
    }

    public final int resolveAudioSource(AudioSpec audioSpec) {
        audioSpec.getClass();
        int source = audioSpec.getSource();
        if (source == -1) {
            Logger.d(TAG, "Using default AUDIO source: 5");
            return 5;
        }
        Logger.d(TAG, "Using provided AUDIO source: " + source);
        return source;
    }

    public final int resolveAudioSourceFormat(AudioSpec audioSpec) {
        audioSpec.getClass();
        int sourceFormat = audioSpec.getSourceFormat();
        if (sourceFormat == -1) {
            Logger.d(TAG, "Using default AUDIO source format: 2");
            return 2;
        }
        Logger.d(TAG, "Using provided AUDIO source format: " + sourceFormat);
        return sourceFormat;
    }

    public final EncoderProfilesProxy.AudioProfileProxy resolveCompatibleAudioProfile(String str, List<? extends EncoderProfilesProxy.AudioProfileProxy> list) {
        Object next;
        str.getClass();
        list.getClass();
        int iAudioMimeToAudioProfile = audioMimeToAudioProfile(str);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            next = it.next();
            EncoderProfilesProxy.AudioProfileProxy audioProfileProxy = (EncoderProfilesProxy.AudioProfileProxy) next;
            if (str.equals(AudioSpec.MIME_TYPE_UNSPECIFIED) || (aa4.e(audioProfileProxy.getMediaType(), str) && audioProfileProxy.getProfile() == iAudioMimeToAudioProfile)) {
                return (EncoderProfilesProxy.AudioProfileProxy) next;
            }
        }
        next = null;
        return (EncoderProfilesProxy.AudioProfileProxy) next;
    }

    public final CaptureEncodeRates resolveSampleRates$camera_video(int i, int i2, int i3, Rational rational) {
        int iSelectSampleRateOrNearestSupported;
        int encodeRate;
        if (rational == null) {
            iSelectSampleRateOrNearestSupported = selectSampleRateOrNearestSupported(i2, i3, i);
            encodeRate = iSelectSampleRateOrNearestSupported;
        } else {
            iSelectSampleRateOrNearestSupported = selectSampleRateOrNearestSupported(i2, i3, CaptureEncodeRatesKt.toCaptureRate(i, rational));
            encodeRate = CaptureEncodeRatesKt.toEncodeRate(iSelectSampleRateOrNearestSupported, rational);
        }
        StringBuilder sbF = bg.f(iSelectSampleRateOrNearestSupported, encodeRate, "Resolved capture/encode sample rate ", "Hz/", "Hz, [target sample rate: ");
        gg.e(sbF, i, ", channel count: ", i2, ", source format: ");
        sbF.append(i3);
        sbF.append(", capture to encode sample rate ratio: ");
        sbF.append(rational);
        sbF.append(']');
        Logger.d(TAG, sbF.toString());
        return new CaptureEncodeRates(iSelectSampleRateOrNearestSupported, encodeRate);
    }

    public final int scaleBitrate(int i, int i2, int i3, int i4, int i5) {
        String string;
        Rational rational = new Rational(i2, i3);
        Rational rational2 = new Rational(i4, i5);
        double dDoubleValue = rational.doubleValue();
        int iDoubleValue = (int) (rational2.doubleValue() * dDoubleValue * ((double) i));
        if (Logger.isDebugEnabled(TAG)) {
            StringBuilder sbF = bg.f(i, i2, "Base Bitrate(", "bps) * Channel Count Ratio(", " / ");
            gg.e(sbF, i3, ") * Sample Rate Ratio(", i4, " / ");
            sbF.append(i5);
            sbF.append(") = ");
            sbF.append(iDoubleValue);
            string = sbF.toString();
        } else {
            string = "";
        }
        Logger.d(TAG, string);
        return iDoubleValue;
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [st] */
    public final int selectSampleRateOrNearestSupported(int i, int i2, final int i3) {
        ArrayList arrayList = null;
        int i4 = 0;
        int iIntValue = i3;
        while (!AudioSource.isSettingsSupported(iIntValue, i, i2)) {
            StringBuilder sbF = bg.f(iIntValue, i, "Sample rate ", " Hz is not supported by audio source with channel count ", " and source format ");
            sbF.append(i2);
            Logger.d(TAG, sbF.toString());
            if (arrayList == null) {
                Logger.d(TAG, "Trying common sample rates in proximity order to target " + i3 + " Hz");
                arrayList = new ArrayList(AudioSettings.COMMON_SAMPLE_RATES);
                final ?? r1 = new bm3() { // from class: st
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return Integer.valueOf(AudioConfigUtil.selectSampleRateOrNearestSupported$lambda$0(i3, ((Integer) obj).intValue(), ((Integer) obj2).intValue()));
                    }
                };
                nn1.J(new Comparator() { // from class: tt
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return AudioConfigUtil.selectSampleRateOrNearestSupported$lambda$1(r1, obj, obj2);
                    }
                }, arrayList);
            }
            if (i4 >= arrayList.size()) {
                Logger.d(TAG, "No sample rate found or supported by audio source. Falling back to default sample rate of 44100 Hz");
                return 44100;
            }
            iIntValue = ((Number) arrayList.get(i4)).intValue();
            i4++;
        }
        return iIntValue;
    }
}
