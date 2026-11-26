package androidx.camera.core.internal;

import androidx.camera.core.UseCase;
import androidx.camera.core.streamsharing.StreamSharing;
import defpackage.aa4;
import defpackage.e2;
import defpackage.k;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CalculatedUseCaseInfo {
    private final Collection<UseCase> appUseCases;
    private final Collection<UseCase> cameraUseCases;
    private final List<UseCase> cameraUseCasesToAttach;
    private final List<UseCase> cameraUseCasesToDetach;
    private final List<UseCase> cameraUseCasesToKeep;
    private final UseCase placeholderForExtensions;
    private final StreamSpecQueryResult primaryStreamSpecResult;
    private final StreamSpecQueryResult secondaryStreamSpecResult;
    private final StreamSharing streamSharing;
    private final Map<UseCase, CameraUseCaseAdapter.ConfigPair> useCaseConfigs;

    /* JADX WARN: Multi-variable type inference failed */
    public CalculatedUseCaseInfo(Collection<? extends UseCase> collection, Collection<? extends UseCase> collection2, List<? extends UseCase> list, List<? extends UseCase> list2, List<? extends UseCase> list3, StreamSharing streamSharing, UseCase useCase, Map<UseCase, ? extends CameraUseCaseAdapter.ConfigPair> map, StreamSpecQueryResult streamSpecQueryResult, StreamSpecQueryResult streamSpecQueryResult2) {
        collection.getClass();
        collection2.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        map.getClass();
        streamSpecQueryResult.getClass();
        this.appUseCases = collection;
        this.cameraUseCases = collection2;
        this.cameraUseCasesToAttach = list;
        this.cameraUseCasesToKeep = list2;
        this.cameraUseCasesToDetach = list3;
        this.streamSharing = streamSharing;
        this.placeholderForExtensions = useCase;
        this.useCaseConfigs = map;
        this.primaryStreamSpecResult = streamSpecQueryResult;
        this.secondaryStreamSpecResult = streamSpecQueryResult2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CalculatedUseCaseInfo copy$default(CalculatedUseCaseInfo calculatedUseCaseInfo, Collection collection, Collection collection2, List list, List list2, List list3, StreamSharing streamSharing, UseCase useCase, Map map, StreamSpecQueryResult streamSpecQueryResult, StreamSpecQueryResult streamSpecQueryResult2, int i, Object obj) {
        if ((i & 1) != 0) {
            collection = calculatedUseCaseInfo.appUseCases;
        }
        if ((i & 2) != 0) {
            collection2 = calculatedUseCaseInfo.cameraUseCases;
        }
        if ((i & 4) != 0) {
            list = calculatedUseCaseInfo.cameraUseCasesToAttach;
        }
        if ((i & 8) != 0) {
            list2 = calculatedUseCaseInfo.cameraUseCasesToKeep;
        }
        if ((i & 16) != 0) {
            list3 = calculatedUseCaseInfo.cameraUseCasesToDetach;
        }
        if ((i & 32) != 0) {
            streamSharing = calculatedUseCaseInfo.streamSharing;
        }
        if ((i & 64) != 0) {
            useCase = calculatedUseCaseInfo.placeholderForExtensions;
        }
        if ((i & 128) != 0) {
            map = calculatedUseCaseInfo.useCaseConfigs;
        }
        if ((i & 256) != 0) {
            streamSpecQueryResult = calculatedUseCaseInfo.primaryStreamSpecResult;
        }
        if ((i & 512) != 0) {
            streamSpecQueryResult2 = calculatedUseCaseInfo.secondaryStreamSpecResult;
        }
        StreamSpecQueryResult streamSpecQueryResult3 = streamSpecQueryResult;
        StreamSpecQueryResult streamSpecQueryResult4 = streamSpecQueryResult2;
        UseCase useCase2 = useCase;
        Map map2 = map;
        List list4 = list3;
        StreamSharing streamSharing2 = streamSharing;
        return calculatedUseCaseInfo.copy(collection, collection2, list, list2, list4, streamSharing2, useCase2, map2, streamSpecQueryResult3, streamSpecQueryResult4);
    }

    public final Collection<UseCase> component1() {
        return this.appUseCases;
    }

    public final StreamSpecQueryResult component10() {
        return this.secondaryStreamSpecResult;
    }

    public final Collection<UseCase> component2() {
        return this.cameraUseCases;
    }

    public final List<UseCase> component3() {
        return this.cameraUseCasesToAttach;
    }

    public final List<UseCase> component4() {
        return this.cameraUseCasesToKeep;
    }

    public final List<UseCase> component5() {
        return this.cameraUseCasesToDetach;
    }

    public final StreamSharing component6() {
        return this.streamSharing;
    }

    public final UseCase component7() {
        return this.placeholderForExtensions;
    }

    public final Map<UseCase, CameraUseCaseAdapter.ConfigPair> component8() {
        return this.useCaseConfigs;
    }

    public final StreamSpecQueryResult component9() {
        return this.primaryStreamSpecResult;
    }

    public final CalculatedUseCaseInfo copy(Collection<? extends UseCase> collection, Collection<? extends UseCase> collection2, List<? extends UseCase> list, List<? extends UseCase> list2, List<? extends UseCase> list3, StreamSharing streamSharing, UseCase useCase, Map<UseCase, ? extends CameraUseCaseAdapter.ConfigPair> map, StreamSpecQueryResult streamSpecQueryResult, StreamSpecQueryResult streamSpecQueryResult2) {
        collection.getClass();
        collection2.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        map.getClass();
        streamSpecQueryResult.getClass();
        return new CalculatedUseCaseInfo(collection, collection2, list, list2, list3, streamSharing, useCase, map, streamSpecQueryResult, streamSpecQueryResult2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalculatedUseCaseInfo)) {
            return false;
        }
        CalculatedUseCaseInfo calculatedUseCaseInfo = (CalculatedUseCaseInfo) obj;
        return aa4.e(this.appUseCases, calculatedUseCaseInfo.appUseCases) && aa4.e(this.cameraUseCases, calculatedUseCaseInfo.cameraUseCases) && aa4.e(this.cameraUseCasesToAttach, calculatedUseCaseInfo.cameraUseCasesToAttach) && aa4.e(this.cameraUseCasesToKeep, calculatedUseCaseInfo.cameraUseCasesToKeep) && aa4.e(this.cameraUseCasesToDetach, calculatedUseCaseInfo.cameraUseCasesToDetach) && aa4.e(this.streamSharing, calculatedUseCaseInfo.streamSharing) && aa4.e(this.placeholderForExtensions, calculatedUseCaseInfo.placeholderForExtensions) && aa4.e(this.useCaseConfigs, calculatedUseCaseInfo.useCaseConfigs) && aa4.e(this.primaryStreamSpecResult, calculatedUseCaseInfo.primaryStreamSpecResult) && aa4.e(this.secondaryStreamSpecResult, calculatedUseCaseInfo.secondaryStreamSpecResult);
    }

    public final Collection<UseCase> getAppUseCases() {
        return this.appUseCases;
    }

    public final Collection<UseCase> getCameraUseCases() {
        return this.cameraUseCases;
    }

    public final List<UseCase> getCameraUseCasesToAttach() {
        return this.cameraUseCasesToAttach;
    }

    public final List<UseCase> getCameraUseCasesToDetach() {
        return this.cameraUseCasesToDetach;
    }

    public final List<UseCase> getCameraUseCasesToKeep() {
        return this.cameraUseCasesToKeep;
    }

    public final UseCase getPlaceholderForExtensions() {
        return this.placeholderForExtensions;
    }

    public final StreamSpecQueryResult getPrimaryStreamSpecResult() {
        return this.primaryStreamSpecResult;
    }

    public final StreamSpecQueryResult getSecondaryStreamSpecResult() {
        return this.secondaryStreamSpecResult;
    }

    public final StreamSharing getStreamSharing() {
        return this.streamSharing;
    }

    public final Map<UseCase, CameraUseCaseAdapter.ConfigPair> getUseCaseConfigs() {
        return this.useCaseConfigs;
    }

    public int hashCode() {
        int iB = e2.b(this.cameraUseCasesToDetach, e2.b(this.cameraUseCasesToKeep, e2.b(this.cameraUseCasesToAttach, (this.cameraUseCases.hashCode() + (this.appUseCases.hashCode() * 31)) * 31, 31), 31), 31);
        StreamSharing streamSharing = this.streamSharing;
        int iHashCode = (iB + (streamSharing == null ? 0 : streamSharing.hashCode())) * 31;
        UseCase useCase = this.placeholderForExtensions;
        int iHashCode2 = (this.primaryStreamSpecResult.hashCode() + k.c(this.useCaseConfigs, (iHashCode + (useCase == null ? 0 : useCase.hashCode())) * 31, 31)) * 31;
        StreamSpecQueryResult streamSpecQueryResult = this.secondaryStreamSpecResult;
        return iHashCode2 + (streamSpecQueryResult != null ? streamSpecQueryResult.hashCode() : 0);
    }

    public String toString() {
        return "CalculatedUseCaseInfo(appUseCases=" + this.appUseCases + ", cameraUseCases=" + this.cameraUseCases + ", cameraUseCasesToAttach=" + this.cameraUseCasesToAttach + ", cameraUseCasesToKeep=" + this.cameraUseCasesToKeep + ", cameraUseCasesToDetach=" + this.cameraUseCasesToDetach + ", streamSharing=" + this.streamSharing + ", placeholderForExtensions=" + this.placeholderForExtensions + ", useCaseConfigs=" + this.useCaseConfigs + ", primaryStreamSpecResult=" + this.primaryStreamSpecResult + ", secondaryStreamSpecResult=" + this.secondaryStreamSpecResult + ')';
    }
}
