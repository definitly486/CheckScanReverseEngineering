package androidx.camera.core.featuregroup.impl.resolver;

import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.UseCaseUtil;
import defpackage.fg;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.me0;
import defpackage.mr7;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultFeatureGroupResolver implements FeatureGroupResolver {
    private static final Companion Companion = new Companion(null);
    private static final String TAG = "DefaultFeatureGroupResolver";
    private final CameraInfoInternal cameraInfoInternal;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[VideoStabilization.values().length];
            try {
                iArr[VideoStabilization.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VideoStabilization.ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FeatureTypeInternal.values().length];
            try {
                iArr2[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FeatureTypeInternal.FPS_RANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public DefaultFeatureGroupResolver(CameraInfoInternal cameraInfoInternal) {
        cameraInfoInternal.getClass();
        this.cameraInfoInternal = cameraInfoInternal;
    }

    private final FeatureGroupResolutionResult getFeatureListResolvedByPriority(SessionConfig sessionConfig, List<? extends GroupableFeature> list, int i, List<? extends GroupableFeature> list2) {
        if (i < list.size()) {
            int i2 = i + 1;
            FeatureGroupResolutionResult featureListResolvedByPriority = getFeatureListResolvedByPriority(sessionConfig, list, i2, qn1.i0(list.get(i), list2));
            return featureListResolvedByPriority instanceof FeatureGroupResolutionResult.Supported ? featureListResolvedByPriority : getFeatureListResolvedByPriority(sessionConfig, list, i2, list2);
        }
        LinkedHashSet linkedHashSetL = mr7.l(sessionConfig.getRequiredFeatureGroup(), list2);
        Logger.d(TAG, "getFeatureListResolvedByPriority: features = " + linkedHashSetL + ", useCases = " + sessionConfig.getUseCases());
        return (isConflictFree(linkedHashSetL) && this.cameraInfoInternal.isResolvedFeatureGroupSupported(new ResolvedFeatureGroup(linkedHashSetL), sessionConfig)) ? new FeatureGroupResolutionResult.Supported(new ResolvedFeatureGroup(linkedHashSetL)) : FeatureGroupResolutionResult.Unsupported.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FeatureGroupResolutionResult getFeatureListResolvedByPriority$default(DefaultFeatureGroupResolver defaultFeatureGroupResolver, SessionConfig sessionConfig, List list, int i, List list2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            list2 = kx2.b;
        }
        return defaultFeatureGroupResolver.getFeatureListResolvedByPriority(sessionConfig, list, i, list2);
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00c6  */
    private final FeatureGroupResolutionResult.UseCaseMissing getMissingUseCase(GroupableFeature groupableFeature, List<? extends UseCase> list) {
        boolean z;
        boolean z2;
        boolean z3;
        String string;
        List<? extends UseCase> list2 = list;
        boolean z4 = list2 instanceof Collection;
        boolean z5 = false;
        if (!z4 || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (((UseCase) it.next()) instanceof ImageCapture) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        if (z4 && list2.isEmpty()) {
            z2 = false;
        } else {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    UseCase useCase = (UseCase) it2.next();
                    if ((useCase instanceof Preview) || UseCaseUtil.isVideoCapture(useCase)) {
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
            }
        }
        if (z4 && list2.isEmpty()) {
            z3 = false;
        } else {
            Iterator<T> it3 = list2.iterator();
            while (true) {
                if (it3.hasNext()) {
                    UseCase useCase2 = (UseCase) it3.next();
                    if ((useCase2 instanceof Preview) || (useCase2 instanceof ImageAnalysis) || UseCaseUtil.isVideoCapture(useCase2)) {
                        z3 = true;
                    }
                } else {
                    z3 = false;
                }
            }
        }
        if (!z4 || !list2.isEmpty()) {
            Iterator<T> it4 = list2.iterator();
            while (it4.hasNext()) {
                if (UseCaseUtil.isVideoCapture((UseCase) it4.next())) {
                    z5 = true;
                    break;
                }
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$1[groupableFeature.getFeatureTypeInternal().ordinal()];
        if (i == 1) {
            string = UseCaseType.IMAGE_CAPTURE.toString();
            if (z) {
                string = null;
            }
        } else if (i == 2) {
            string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE;
            if (z2) {
                string = null;
            }
        } else if (i == 3) {
            string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE + " or " + UseCaseType.IMAGE_ANALYSIS;
            if (z3) {
                string = null;
            }
        } else if (i == 4) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[((VideoStabilizationFeature) groupableFeature).getVideoStabilization().ordinal()];
            if (i2 == 1) {
                string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE + " or " + UseCaseType.IMAGE_ANALYSIS;
                if (z3) {
                    string = null;
                }
            } else if (i2 != 2) {
                string = null;
            } else {
                string = UseCaseType.VIDEO_CAPTURE.toString();
                if (z5) {
                    string = null;
                }
            }
        } else {
            if (i != 5) {
                me0.e();
                return null;
            }
            string = UseCaseType.VIDEO_CAPTURE.toString();
            if (z5) {
                string = null;
            }
        }
        if (string != null) {
            return new FeatureGroupResolutionResult.UseCaseMissing(string, groupableFeature);
        }
        return null;
    }

    private final boolean isConflictFree(Set<? extends GroupableFeature> set) {
        Set<? extends GroupableFeature> set2 = set;
        ArrayList arrayList = new ArrayList(kn1.q(set2, 10));
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            arrayList.add(((GroupableFeature) it.next()).getFeatureTypeInternal());
        }
        for (FeatureTypeInternal featureTypeInternal : qn1.N(arrayList)) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : set2) {
                if (((GroupableFeature) obj).getFeatureTypeInternal() == featureTypeInternal) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolver
    public FeatureGroupResolutionResult resolveFeatureGroup(SessionConfig sessionConfig) {
        sessionConfig.getClass();
        List<UseCase> useCases = sessionConfig.getUseCases();
        Set<GroupableFeature> requiredFeatureGroup = sessionConfig.getRequiredFeatureGroup();
        List<GroupableFeature> preferredFeatureGroup = sessionConfig.getPreferredFeatureGroup();
        if (requiredFeatureGroup.isEmpty() && preferredFeatureGroup.isEmpty()) {
            fg.c("Must have at least one required or preferred feature");
            return null;
        }
        for (UseCase useCase : useCases) {
            if (UseCaseType.Companion.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                return new FeatureGroupResolutionResult.UnsupportedUseCase(useCase);
            }
        }
        Iterator<T> it = requiredFeatureGroup.iterator();
        while (it.hasNext()) {
            FeatureGroupResolutionResult.UseCaseMissing missingUseCase = getMissingUseCase((GroupableFeature) it.next(), useCases);
            if (missingUseCase != null) {
                return missingUseCase;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : preferredFeatureGroup) {
            FeatureGroupResolutionResult.UseCaseMissing missingUseCase2 = getMissingUseCase((GroupableFeature) obj, useCases);
            if (missingUseCase2 != null) {
                Logger.d(TAG, "resolveFeatureGroup: filtered out preferred feature due to " + missingUseCase2);
            } else {
                missingUseCase2 = null;
            }
            if (missingUseCase2 == null) {
                arrayList.add(obj);
            }
        }
        Logger.d(TAG, "resolveFeatureGroup: filteredPreferredFeatures = " + arrayList);
        return getFeatureListResolvedByPriority$default(this, sessionConfig, arrayList, 0, null, 12, null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
