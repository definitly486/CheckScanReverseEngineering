package androidx.camera.video;

import android.util.LruCache;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.video.EncoderProfilesResolverFactory;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.ej0;
import defpackage.fh8;
import defpackage.ll3;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class EncoderProfilesResolverFactory {
    public static final EncoderProfilesResolverFactory INSTANCE = new EncoderProfilesResolverFactory();
    private static final LruCache<CacheKey, EncoderProfilesResolver> cache = new LruCache<>(16);

    public static final class CacheKey {
        private final Object cameraConfig;
        private final String cameraId;
        private final int videoCapabilitiesSource;
        private final VideoEncoderInfo.Finder videoEncoderInfoFinder;
        private final int videoRecordingType;

        public CacheKey(String str, Object obj, int i, int i2, VideoEncoderInfo.Finder finder) {
            str.getClass();
            obj.getClass();
            finder.getClass();
            this.cameraId = str;
            this.cameraConfig = obj;
            this.videoRecordingType = i;
            this.videoCapabilitiesSource = i2;
            this.videoEncoderInfoFinder = finder;
        }

        public static /* synthetic */ CacheKey copy$default(CacheKey cacheKey, String str, Object obj, int i, int i2, VideoEncoderInfo.Finder finder, int i3, Object obj2) {
            if ((i3 & 1) != 0) {
                str = cacheKey.cameraId;
            }
            if ((i3 & 2) != 0) {
                obj = cacheKey.cameraConfig;
            }
            if ((i3 & 4) != 0) {
                i = cacheKey.videoRecordingType;
            }
            if ((i3 & 8) != 0) {
                i2 = cacheKey.videoCapabilitiesSource;
            }
            if ((i3 & 16) != 0) {
                finder = cacheKey.videoEncoderInfoFinder;
            }
            VideoEncoderInfo.Finder finder2 = finder;
            int i4 = i;
            return cacheKey.copy(str, obj, i4, i2, finder2);
        }

        public final String component1() {
            return this.cameraId;
        }

        public final Object component2() {
            return this.cameraConfig;
        }

        public final int component3() {
            return this.videoRecordingType;
        }

        public final int component4() {
            return this.videoCapabilitiesSource;
        }

        public final VideoEncoderInfo.Finder component5() {
            return this.videoEncoderInfoFinder;
        }

        public final CacheKey copy(String str, Object obj, int i, int i2, VideoEncoderInfo.Finder finder) {
            str.getClass();
            obj.getClass();
            finder.getClass();
            return new CacheKey(str, obj, i, i2, finder);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CacheKey)) {
                return false;
            }
            CacheKey cacheKey = (CacheKey) obj;
            return aa4.e(this.cameraId, cacheKey.cameraId) && aa4.e(this.cameraConfig, cacheKey.cameraConfig) && this.videoRecordingType == cacheKey.videoRecordingType && this.videoCapabilitiesSource == cacheKey.videoCapabilitiesSource && aa4.e(this.videoEncoderInfoFinder, cacheKey.videoEncoderInfoFinder);
        }

        public final Object getCameraConfig() {
            return this.cameraConfig;
        }

        public final String getCameraId() {
            return this.cameraId;
        }

        public final int getVideoCapabilitiesSource() {
            return this.videoCapabilitiesSource;
        }

        public final VideoEncoderInfo.Finder getVideoEncoderInfoFinder() {
            return this.videoEncoderInfoFinder;
        }

        public final int getVideoRecordingType() {
            return this.videoRecordingType;
        }

        public int hashCode() {
            return this.videoEncoderInfoFinder.hashCode() + ej0.b(this.videoCapabilitiesSource, ej0.b(this.videoRecordingType, (this.cameraConfig.hashCode() + (this.cameraId.hashCode() * 31)) * 31, 31), 31);
        }

        public String toString() {
            return "CacheKey(cameraId=" + this.cameraId + ", cameraConfig=" + this.cameraConfig + ", videoRecordingType=" + this.videoRecordingType + ", videoCapabilitiesSource=" + this.videoCapabilitiesSource + ", videoEncoderInfoFinder=" + this.videoEncoderInfoFinder + ')';
        }
    }

    private EncoderProfilesResolverFactory() {
    }

    private final EncoderProfilesResolver createResolver(CameraInfo cameraInfo, int i, int i2, VideoEncoderInfo.Finder finder) {
        cameraInfo.getClass();
        CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) cameraInfo;
        int i3 = i != 2 ? 1 : 2;
        EncoderProfilesProvider encoderProfilesProviderResolve = EncoderProfilesProviderResolver.INSTANCE.resolve(cameraInfoInternal, i2, i3, finder);
        Set<DynamicRange> supportedDynamicRanges = cameraInfoInternal.getSupportedDynamicRanges();
        supportedDynamicRanges.getClass();
        return new EncoderProfilesResolver(encoderProfilesProviderResolve, i3, supportedDynamicRanges);
    }

    public static final EncoderProfilesResolver getResolver(final CameraInfo cameraInfo, final int i, final int i2, final VideoEncoderInfo.Finder finder) {
        EncoderProfilesResolver resolver$lambda$1;
        cameraInfo.getClass();
        finder.getClass();
        fh8 fh8Var = new fh8(new ll3() { // from class: gy2
            @Override // defpackage.ll3
            public final Object invoke() {
                return EncoderProfilesResolverFactory.getResolver$lambda$0(cameraInfo, i, i2, finder);
            }
        });
        if (INSTANCE.shouldSkipCache(cameraInfo)) {
            return getResolver$lambda$1(fh8Var);
        }
        AdapterCameraInfo adapterCameraInfo = (AdapterCameraInfo) cameraInfo;
        String cameraId = adapterCameraInfo.getCameraId();
        cameraId.getClass();
        CameraConfig cameraConfig = adapterCameraInfo.getCameraConfig();
        cameraConfig.getClass();
        CacheKey cacheKey = new CacheKey(cameraId, cameraConfig, i, i2, finder);
        LruCache<CacheKey, EncoderProfilesResolver> lruCache = cache;
        synchronized (lruCache) {
            resolver$lambda$1 = lruCache.get(cacheKey);
            if (resolver$lambda$1 == null) {
                resolver$lambda$1 = getResolver$lambda$1(fh8Var);
                lruCache.put(cacheKey, resolver$lambda$1);
            }
        }
        return resolver$lambda$1;
    }

    public static /* synthetic */ EncoderProfilesResolver getResolver$default(CameraInfo cameraInfo, int i, int i2, VideoEncoderInfo.Finder finder, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 1;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if ((i3 & 8) != 0) {
            finder = VideoEncoderInfoImpl.FINDER;
        }
        return getResolver(cameraInfo, i, i2, finder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EncoderProfilesResolver getResolver$lambda$0(CameraInfo cameraInfo, int i, int i2, VideoEncoderInfo.Finder finder) {
        return INSTANCE.createResolver(cameraInfo, i, i2, finder);
    }

    private static final EncoderProfilesResolver getResolver$lambda$1(cl4<EncoderProfilesResolver> cl4Var) {
        return cl4Var.getValue();
    }

    private final boolean shouldSkipCache(CameraInfo cameraInfo) {
        if (cameraInfo instanceof AdapterCameraInfo) {
            AdapterCameraInfo adapterCameraInfo = (AdapterCameraInfo) cameraInfo;
            if (!adapterCameraInfo.isExternalCamera() && adapterCameraInfo.getLensFacing() != -1) {
                return false;
            }
        }
        return true;
    }
}
