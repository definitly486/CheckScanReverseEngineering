package androidx.camera.core.featuregroup.impl;

import android.util.Size;
import android.view.Surface;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public interface FeatureCombinationQuery {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final FeatureCombinationQuery NO_OP_FEATURE_COMBINATION_QUERY = new FeatureCombinationQuery() { // from class: androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1
        @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
        public boolean isSupported(SessionConfig sessionConfig) {
            sessionConfig.getClass();
            return false;
        }
    };

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SessionConfig.Builder createSessionConfigBuilder(UseCaseConfig<?> useCaseConfig, final Size size, DynamicRange dynamicRange) {
            useCaseConfig.getClass();
            size.getClass();
            dynamicRange.getClass();
            final int inputFormat = useCaseConfig.getInputFormat();
            DeferrableSurface deferrableSurface = new DeferrableSurface(size, inputFormat) { // from class: androidx.camera.core.featuregroup.impl.FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1
                @Override // androidx.camera.core.impl.DeferrableSurface
                public ListenableFuture<Surface> provideSurface() {
                    ListenableFuture<Surface> listenableFutureImmediateFuture = Futures.immediateFuture(null);
                    listenableFutureImmediateFuture.getClass();
                    return listenableFutureImmediateFuture;
                }
            };
            Class<?> surfaceClass = UseCaseType.Companion.getFeatureGroupUseCaseType(useCaseConfig).getSurfaceClass();
            if (surfaceClass != null) {
                deferrableSurface.setContainerClass(surfaceClass);
            }
            SessionConfig.Builder builderAddSurface = SessionConfig.Builder.createFrom(useCaseConfig, size).addSurface(deferrableSurface, dynamicRange);
            builderAddSurface.getClass();
            return builderAddSurface;
        }
    }

    static SessionConfig.Builder createSessionConfigBuilder(UseCaseConfig<?> useCaseConfig, Size size, DynamicRange dynamicRange) {
        return Companion.createSessionConfigBuilder(useCaseConfig, size, dynamicRange);
    }

    boolean isSupported(SessionConfig sessionConfig);
}
