package androidx.camera.core.featuregroup;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.impl.feature.DynamicRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.ImageFormatFeature;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.js3;
import defpackage.me0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public abstract class GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final int FEATURE_TYPE_DYNAMIC_RANGE = 0;
    public static final int FEATURE_TYPE_FPS_RANGE = 1;
    public static final int FEATURE_TYPE_IMAGE_FORMAT = 3;
    public static final int FEATURE_TYPE_RECORDING_QUALITY = 4;
    public static final int FEATURE_TYPE_VIDEO_STABILIZATION = 2;
    public static final GroupableFeature FPS_60;
    public static final GroupableFeature HDR_HLG10;
    public static final GroupableFeature IMAGE_ULTRA_HDR;
    public static final GroupableFeature PREVIEW_STABILIZATION;
    private final cl4 featureType$delegate = new fh8(new js3(this, 0));

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface FeatureType {
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FeatureTypeInternal.values().length];
            try {
                iArr[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureTypeInternal.FPS_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        DynamicRange dynamicRange = DynamicRange.HLG_10_BIT;
        dynamicRange.getClass();
        HDR_HLG10 = new DynamicRangeFeature(dynamicRange);
        FPS_60 = new FpsRangeFeature(60, 60);
        PREVIEW_STABILIZATION = new VideoStabilizationFeature(VideoStabilization.PREVIEW);
        IMAGE_ULTRA_HDR = new ImageFormatFeature(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int featureType_delegate$lambda$0(GroupableFeature groupableFeature) {
        return groupableFeature.toFeatureType(groupableFeature.getFeatureTypeInternal());
    }

    private final int toFeatureType(FeatureTypeInternal featureTypeInternal) {
        int i = WhenMappings.$EnumSwitchMapping$0[featureTypeInternal.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 4;
        }
        me0.e();
        return 0;
    }

    public final int getFeatureType() {
        return ((Number) this.featureType$delegate.getValue()).intValue();
    }

    public abstract FeatureTypeInternal getFeatureTypeInternal();

    public boolean isSupportedIndividually(CameraInfoInternal cameraInfoInternal, SessionConfig sessionConfig) {
        cameraInfoInternal.getClass();
        sessionConfig.getClass();
        return true;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
