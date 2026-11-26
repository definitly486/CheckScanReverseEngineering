package androidx.camera.camera2.adapter;

import android.media.CamcorderProfile;
import android.media.EncoderProfiles;
import android.os.Build;
import androidx.camera.camera2.compat.quirk.CamcorderProfileResolutionQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.compat.EncoderProfilesProxyCompat;
import defpackage.jh2;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class EncoderProfilesProviderAdapter implements EncoderProfilesProvider {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "EncoderProfilesProviderAdapter";
    private final int cameraId;
    private final String cameraIdString;
    private final Quirks cameraQuirks;
    private final boolean hasValidCameraId;
    private final Map<Integer, EncoderProfilesProxy> mEncoderProfilesCache;

    public static final class Api31Impl {
        public static final Api31Impl INSTANCE = new Api31Impl();

        private Api31Impl() {
        }

        public final EncoderProfiles getAll(String str, int i) {
            str.getClass();
            return CamcorderProfile.getAll(str, i);
        }
    }

    public EncoderProfilesProviderAdapter(String str, Quirks quirks) {
        boolean z;
        int i;
        str.getClass();
        quirks.getClass();
        this.cameraIdString = str;
        this.cameraQuirks = quirks;
        this.mEncoderProfilesCache = new LinkedHashMap();
        try {
            i = Integer.parseInt(str);
            z = true;
        } catch (NumberFormatException unused) {
            Logger.w(TAG, "Camera id is not an integer:  " + this.cameraIdString + ", unable to create EncoderProfilesProviderAdapter.");
            z = false;
            i = -1;
        }
        this.hasValidCameraId = z;
        this.cameraId = i;
    }

    private final EncoderProfilesProxy createProfilesFromCamcorderProfile(int i) {
        CamcorderProfile camcorderProfile;
        try {
            camcorderProfile = CamcorderProfile.get(this.cameraId, i);
        } catch (RuntimeException e) {
            Logger.w(TAG, "Unable to get CamcorderProfile by quality: " + i, e);
            camcorderProfile = null;
        }
        if (camcorderProfile != null) {
            return EncoderProfilesProxyCompat.from(camcorderProfile);
        }
        return null;
    }

    private final EncoderProfilesProxy findHighestQualityProfiles() {
        for (Integer num : EncoderProfilesProvider.QUALITY_HIGH_TO_LOW) {
            num.getClass();
            EncoderProfilesProxy all = getAll(num.intValue());
            if (all != null) {
                return all;
            }
        }
        return null;
    }

    private final EncoderProfilesProxy findLowestQualityProfiles() {
        EncoderProfilesProxy all;
        List<Integer> list = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW;
        list.getClass();
        int size = list.size();
        do {
            size--;
            if (-1 >= size) {
                return null;
            }
            Integer num = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW.get(size);
            num.getClass();
            all = getAll(num.intValue());
        } while (all == null);
        return all;
    }

    private final EncoderProfilesProxy getProfilesInternal(int i) {
        if (Build.VERSION.SDK_INT >= 31) {
            EncoderProfiles all = Api31Impl.INSTANCE.getAll(this.cameraIdString, i);
            if (all == null) {
                return null;
            }
            if (DeviceQuirks.INSTANCE.get(InvalidVideoProfilesQuirk.class) != null) {
                Logger.d(TAG, "EncoderProfiles contains invalid video profiles, use CamcorderProfile to create EncoderProfilesProxy.");
            } else {
                try {
                    return EncoderProfilesProxyCompat.from(all);
                } catch (NullPointerException e) {
                    Logger.w(TAG, "Failed to create EncoderProfilesProxy, EncoderProfiles might contain invalid video profiles. Use CamcorderProfile instead.", e);
                }
            }
        }
        return createProfilesFromCamcorderProfile(i);
    }

    private final boolean isEncoderProfilesResolutionValidInQuirk(EncoderProfilesProxy encoderProfilesProxy) {
        CamcorderProfileResolutionQuirk camcorderProfileResolutionQuirk = (CamcorderProfileResolutionQuirk) this.cameraQuirks.get(CamcorderProfileResolutionQuirk.class);
        if (camcorderProfileResolutionQuirk == null) {
            return true;
        }
        List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles = encoderProfilesProxy.getVideoProfiles();
        videoProfiles.getClass();
        if (videoProfiles.isEmpty()) {
            return true;
        }
        return camcorderProfileResolutionQuirk.getSupportedResolutions().contains(videoProfiles.get(0).getResolution());
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        EncoderProfilesProxy encoderProfilesProxyFindLowestQualityProfiles = null;
        if (!this.hasValidCameraId || !CamcorderProfile.hasProfile(this.cameraId, i)) {
            return null;
        }
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return this.mEncoderProfilesCache.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy profilesInternal = getProfilesInternal(i);
        if (profilesInternal != null && !isEncoderProfilesResolutionValidInQuirk(profilesInternal)) {
            if (i == 0) {
                encoderProfilesProxyFindLowestQualityProfiles = findLowestQualityProfiles();
            } else if (i == 1) {
                encoderProfilesProxyFindLowestQualityProfiles = findHighestQualityProfiles();
            }
            profilesInternal = encoderProfilesProxyFindLowestQualityProfiles;
        }
        this.mEncoderProfilesCache.put(Integer.valueOf(i), profilesInternal);
        return profilesInternal;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return this.hasValidCameraId && getAll(i) != null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
