package androidx.camera.core.featuregroup.impl;

import androidx.camera.core.Logger;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.resolver.DefaultFeatureGroupResolver;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolver;
import androidx.camera.core.impl.CameraInfoInternal;
import defpackage.fg;
import defpackage.jh2;
import defpackage.me0;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ResolvedFeatureGroup {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "ResolvedFeatureGroup";
    private final Set<GroupableFeature> features;

    /* JADX WARN: Multi-variable type inference failed */
    public ResolvedFeatureGroup(Set<? extends GroupableFeature> set) {
        set.getClass();
        this.features = set;
    }

    public static final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal) {
        return Companion.resolveFeatureGroup(sessionConfig, cameraInfoInternal);
    }

    public final Set<GroupableFeature> getFeatures() {
        return this.features;
    }

    public String toString() {
        return "ResolvedFeatureGroup(features=" + this.features + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ ResolvedFeatureGroup resolveFeatureGroup$default(Companion companion, SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal, FeatureGroupResolver featureGroupResolver, int i, Object obj) {
            if ((i & 2) != 0) {
                featureGroupResolver = new DefaultFeatureGroupResolver(cameraInfoInternal);
            }
            return companion.resolveFeatureGroup(sessionConfig, cameraInfoInternal, featureGroupResolver);
        }

        public final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal, FeatureGroupResolver featureGroupResolver) {
            sessionConfig.getClass();
            cameraInfoInternal.getClass();
            featureGroupResolver.getClass();
            Logger.d(ResolvedFeatureGroup.TAG, "resolveFeatureGroup: sessionConfig = " + sessionConfig + ", lensFacing = " + cameraInfoInternal.getLensFacing());
            if (sessionConfig.getRequiredFeatureGroup().isEmpty() && sessionConfig.getPreferredFeatureGroup().isEmpty()) {
                return null;
            }
            FeatureGroupResolutionResult featureGroupResolutionResultResolveFeatureGroup = featureGroupResolver.resolveFeatureGroup(sessionConfig);
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.Supported) {
                ResolvedFeatureGroup resolvedFeatureGroup = ((FeatureGroupResolutionResult.Supported) featureGroupResolutionResultResolveFeatureGroup).getResolvedFeatureGroup();
                Logger.d(ResolvedFeatureGroup.TAG, "resolvedFeatureGroup = " + resolvedFeatureGroup);
                return resolvedFeatureGroup;
            }
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.Unsupported) {
                fg.c("Feature group is not supported");
                return null;
            }
            if (featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.UnsupportedUseCase) {
                throw new IllegalArgumentException(((FeatureGroupResolutionResult.UnsupportedUseCase) featureGroupResolutionResultResolveFeatureGroup).getUnsupportedUseCase() + " is not supported");
            }
            if (!(featureGroupResolutionResultResolveFeatureGroup instanceof FeatureGroupResolutionResult.UseCaseMissing)) {
                me0.e();
                return null;
            }
            FeatureGroupResolutionResult.UseCaseMissing useCaseMissing = (FeatureGroupResolutionResult.UseCaseMissing) featureGroupResolutionResultResolveFeatureGroup;
            throw new IllegalArgumentException(useCaseMissing.getRequiredUseCases() + " must be added for " + useCaseMissing.getFeatureRequiring());
        }

        private Companion() {
        }

        public final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal) {
            sessionConfig.getClass();
            cameraInfoInternal.getClass();
            return resolveFeatureGroup$default(this, sessionConfig, cameraInfoInternal, null, 2, null);
        }
    }

    public static final ResolvedFeatureGroup resolveFeatureGroup(SessionConfig sessionConfig, CameraInfoInternal cameraInfoInternal, FeatureGroupResolver featureGroupResolver) {
        return Companion.resolveFeatureGroup(sessionConfig, cameraInfoInternal, featureGroupResolver);
    }
}
