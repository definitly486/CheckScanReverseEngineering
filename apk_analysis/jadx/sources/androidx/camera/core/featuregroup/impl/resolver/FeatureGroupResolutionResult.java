package androidx.camera.core.featuregroup.impl.resolver;

import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public interface FeatureGroupResolutionResult {

    public static final class Supported implements FeatureGroupResolutionResult {
        private final ResolvedFeatureGroup resolvedFeatureGroup;

        public Supported(ResolvedFeatureGroup resolvedFeatureGroup) {
            resolvedFeatureGroup.getClass();
            this.resolvedFeatureGroup = resolvedFeatureGroup;
        }

        public static /* synthetic */ Supported copy$default(Supported supported, ResolvedFeatureGroup resolvedFeatureGroup, int i, Object obj) {
            if ((i & 1) != 0) {
                resolvedFeatureGroup = supported.resolvedFeatureGroup;
            }
            return supported.copy(resolvedFeatureGroup);
        }

        public final ResolvedFeatureGroup component1() {
            return this.resolvedFeatureGroup;
        }

        public final Supported copy(ResolvedFeatureGroup resolvedFeatureGroup) {
            resolvedFeatureGroup.getClass();
            return new Supported(resolvedFeatureGroup);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Supported) && aa4.e(this.resolvedFeatureGroup, ((Supported) obj).resolvedFeatureGroup);
        }

        public final ResolvedFeatureGroup getResolvedFeatureGroup() {
            return this.resolvedFeatureGroup;
        }

        public int hashCode() {
            return this.resolvedFeatureGroup.hashCode();
        }

        public String toString() {
            return "Supported(resolvedFeatureGroup=" + this.resolvedFeatureGroup + ')';
        }
    }

    public static final class Unsupported implements FeatureGroupResolutionResult {
        public static final Unsupported INSTANCE = new Unsupported();

        private Unsupported() {
        }
    }

    public static final class UnsupportedUseCase implements FeatureGroupResolutionResult {
        private final UseCase unsupportedUseCase;

        public UnsupportedUseCase(UseCase useCase) {
            useCase.getClass();
            this.unsupportedUseCase = useCase;
        }

        public static /* synthetic */ UnsupportedUseCase copy$default(UnsupportedUseCase unsupportedUseCase, UseCase useCase, int i, Object obj) {
            if ((i & 1) != 0) {
                useCase = unsupportedUseCase.unsupportedUseCase;
            }
            return unsupportedUseCase.copy(useCase);
        }

        public final UseCase component1() {
            return this.unsupportedUseCase;
        }

        public final UnsupportedUseCase copy(UseCase useCase) {
            useCase.getClass();
            return new UnsupportedUseCase(useCase);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnsupportedUseCase) && aa4.e(this.unsupportedUseCase, ((UnsupportedUseCase) obj).unsupportedUseCase);
        }

        public final UseCase getUnsupportedUseCase() {
            return this.unsupportedUseCase;
        }

        public int hashCode() {
            return this.unsupportedUseCase.hashCode();
        }

        public String toString() {
            return "UnsupportedUseCase(unsupportedUseCase=" + this.unsupportedUseCase + ')';
        }
    }

    public static final class UseCaseMissing implements FeatureGroupResolutionResult {
        private final GroupableFeature featureRequiring;
        private final String requiredUseCases;

        public UseCaseMissing(String str, GroupableFeature groupableFeature) {
            str.getClass();
            groupableFeature.getClass();
            this.requiredUseCases = str;
            this.featureRequiring = groupableFeature;
        }

        public static /* synthetic */ UseCaseMissing copy$default(UseCaseMissing useCaseMissing, String str, GroupableFeature groupableFeature, int i, Object obj) {
            if ((i & 1) != 0) {
                str = useCaseMissing.requiredUseCases;
            }
            if ((i & 2) != 0) {
                groupableFeature = useCaseMissing.featureRequiring;
            }
            return useCaseMissing.copy(str, groupableFeature);
        }

        public final String component1() {
            return this.requiredUseCases;
        }

        public final GroupableFeature component2() {
            return this.featureRequiring;
        }

        public final UseCaseMissing copy(String str, GroupableFeature groupableFeature) {
            str.getClass();
            groupableFeature.getClass();
            return new UseCaseMissing(str, groupableFeature);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UseCaseMissing)) {
                return false;
            }
            UseCaseMissing useCaseMissing = (UseCaseMissing) obj;
            return aa4.e(this.requiredUseCases, useCaseMissing.requiredUseCases) && aa4.e(this.featureRequiring, useCaseMissing.featureRequiring);
        }

        public final GroupableFeature getFeatureRequiring() {
            return this.featureRequiring;
        }

        public final String getRequiredUseCases() {
            return this.requiredUseCases;
        }

        public int hashCode() {
            return this.featureRequiring.hashCode() + (this.requiredUseCases.hashCode() * 31);
        }

        public String toString() {
            return "UseCaseMissing(requiredUseCases=" + this.requiredUseCases + ", featureRequiring=" + this.featureRequiring + ')';
        }
    }
}
