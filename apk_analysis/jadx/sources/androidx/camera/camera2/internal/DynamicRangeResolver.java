package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.ah;
import defpackage.g7;
import defpackage.n7;
import defpackage.qn1;
import defpackage.wg;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangeResolver {
    private final CameraMetadata cameraMetadata;
    private final DynamicRangeProfilesCompat dynamicRangesInfo;
    private final boolean is10BitSupported;

    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        public final DynamicRange getRecommended10BitDynamicRange(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE;
            key.getClass();
            Long l = (Long) cameraMetadata.get(key);
            if (l != null) {
                return DynamicRangeConversions.INSTANCE.profileToDynamicRange(l.longValue());
            }
            return null;
        }
    }

    public DynamicRangeResolver(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        this.cameraMetadata = cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key.getClass();
        int[] iArr = (int[]) cameraMetadata.get(key);
        this.is10BitSupported = iArr != null ? yr.C(iArr, 18) : false;
        this.dynamicRangesInfo = DynamicRangeProfilesCompat.Companion.fromCameraMetaData(cameraMetadata);
    }

    private final boolean canResolveDynamicRange(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
        if (!dynamicRange2.isFullySpecified()) {
            wg.c(dynamicRange2, "Fully specified range ", " not actually fully specified.");
            return false;
        }
        if (dynamicRange.getEncoding() == 2 && dynamicRange2.getEncoding() == 1) {
            return false;
        }
        if (dynamicRange.getEncoding() == 2 || dynamicRange.getEncoding() == 0 || dynamicRange.getEncoding() == dynamicRange2.getEncoding()) {
            return dynamicRange.getBitDepth() == 0 || dynamicRange.getBitDepth() == dynamicRange2.getBitDepth();
        }
        return false;
    }

    private final boolean canResolveWithinConstraints(DynamicRange dynamicRange, DynamicRange dynamicRange2, Set<DynamicRange> set) {
        if (set.contains(dynamicRange2)) {
            return canResolveDynamicRange(dynamicRange, dynamicRange2);
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isDebugEnabled(Log.TAG)) {
            return false;
        }
        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Candidate Dynamic range is not within constraints.\nDynamic range to resolve:\n  " + dynamicRange + "\nCandidate dynamic range:\n  " + dynamicRange2);
        return false;
    }

    private final DynamicRange findSupportedHdrMatch(DynamicRange dynamicRange, Collection<DynamicRange> collection, Set<DynamicRange> set) {
        if (dynamicRange.getEncoding() == 1) {
            return null;
        }
        for (DynamicRange dynamicRange2 : collection) {
            int encoding = dynamicRange2.getEncoding();
            if (!dynamicRange2.isFullySpecified()) {
                ah.f("Fully specified DynamicRange must have fully defined encoding.");
                break;
            }
            if (encoding != 1 && canResolveWithinConstraints(dynamicRange, dynamicRange2, set)) {
                return dynamicRange2;
            }
        }
        return null;
    }

    private final boolean isFullyUnspecified(DynamicRange dynamicRange) {
        return aa4.e(dynamicRange, DynamicRange.UNSPECIFIED);
    }

    private final boolean isPartiallySpecified(DynamicRange dynamicRange) {
        if (dynamicRange.getEncoding() == 2) {
            return true;
        }
        if (dynamicRange.getEncoding() == 0 || dynamicRange.getBitDepth() != 0) {
            return dynamicRange.getEncoding() == 0 && dynamicRange.getBitDepth() != 0;
        }
        return true;
    }

    private final DynamicRange resolveDynamicRange(DynamicRange dynamicRange, Set<DynamicRange> set, Set<DynamicRange> set2, Set<DynamicRange> set3, String str) {
        DynamicRange recommended10BitDynamicRange;
        if (dynamicRange.isFullySpecified()) {
            if (set.contains(dynamicRange)) {
                return dynamicRange;
            }
            return null;
        }
        int encoding = dynamicRange.getEncoding();
        int bitDepth = dynamicRange.getBitDepth();
        if (encoding == 1 && bitDepth == 0) {
            DynamicRange dynamicRange2 = DynamicRange.SDR;
            if (set.contains(dynamicRange2)) {
                return dynamicRange2;
            }
            return null;
        }
        DynamicRange dynamicRangeFindSupportedHdrMatch = findSupportedHdrMatch(dynamicRange, set2, set);
        if (dynamicRangeFindSupportedHdrMatch != null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " from existing attached surface.\n" + dynamicRange + "\n->\n" + dynamicRangeFindSupportedHdrMatch);
            }
            return dynamicRangeFindSupportedHdrMatch;
        }
        DynamicRange dynamicRangeFindSupportedHdrMatch2 = findSupportedHdrMatch(dynamicRange, set3, set);
        if (dynamicRangeFindSupportedHdrMatch2 != null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " from concurrently bound use case.\n" + dynamicRange + "\n->\n" + dynamicRangeFindSupportedHdrMatch2);
            }
            return dynamicRangeFindSupportedHdrMatch2;
        }
        DynamicRange dynamicRange3 = DynamicRange.SDR;
        dynamicRange3.getClass();
        if (canResolveWithinConstraints(dynamicRange, dynamicRange3, set)) {
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " to no compatible HDR dynamic ranges.\n" + dynamicRange + "\n->\n" + dynamicRange3);
            }
            return dynamicRange3;
        }
        if (encoding == 2 && (bitDepth == 10 || bitDepth == 0)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (Build.VERSION.SDK_INT >= 33) {
                recommended10BitDynamicRange = Api33Impl.INSTANCE.getRecommended10BitDynamicRange(this.cameraMetadata);
                if (recommended10BitDynamicRange != null) {
                    linkedHashSet.add(recommended10BitDynamicRange);
                }
            } else {
                recommended10BitDynamicRange = null;
            }
            DynamicRange dynamicRange4 = DynamicRange.HLG_10_BIT;
            dynamicRange4.getClass();
            linkedHashSet.add(dynamicRange4);
            DynamicRange dynamicRangeFindSupportedHdrMatch3 = findSupportedHdrMatch(dynamicRange, linkedHashSet, set);
            if (dynamicRangeFindSupportedHdrMatch3 != null) {
                Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    String str2 = Camera2Logger.TRUNCATED_TAG;
                    StringBuilder sbD = n7.d("DynamicRangeResolver: Resolved dynamic range for use case ", str, "from ");
                    sbD.append(dynamicRangeFindSupportedHdrMatch3.equals(recommended10BitDynamicRange) ? "recommended" : "required");
                    sbD.append(" 10-bit supported dynamic range.\n");
                    sbD.append(dynamicRange);
                    sbD.append("\n->\n");
                    sbD.append(dynamicRangeFindSupportedHdrMatch3);
                    android.util.Log.d(str2, sbD.toString());
                }
                return dynamicRangeFindSupportedHdrMatch3;
            }
        }
        for (DynamicRange dynamicRange5 : set) {
            if (!dynamicRange5.isFullySpecified()) {
                ah.f("Candidate dynamic range must be fully specified.");
                break;
            }
            if (!dynamicRange5.equals(DynamicRange.SDR) && canResolveDynamicRange(dynamicRange, dynamicRange5)) {
                Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " from validated dynamic range constraints or supported HDR dynamic ranges.\n" + dynamicRange + "\n->\n" + dynamicRange5);
                }
                return dynamicRange5;
            }
        }
        return null;
    }

    private final DynamicRange resolveDynamicRangeAndUpdateConstraints(Set<DynamicRange> set, Set<DynamicRange> set2, Set<DynamicRange> set3, UseCaseConfig<?> useCaseConfig, Set<DynamicRange> set4) {
        DynamicRange dynamicRange = useCaseConfig.getDynamicRange();
        dynamicRange.getClass();
        String targetName = useCaseConfig.getTargetName();
        targetName.getClass();
        DynamicRange dynamicRangeResolveDynamicRange = resolveDynamicRange(dynamicRange, set4, set2, set3, targetName);
        if (dynamicRangeResolveDynamicRange != null) {
            updateConstraints(set4, dynamicRangeResolveDynamicRange, this.dynamicRangesInfo);
            return dynamicRangeResolveDynamicRange;
        }
        throw new IllegalArgumentException("Unable to resolve supported dynamic range. The dynamic range may not be supported on the device or may not be allowed concurrently with other attached use cases.\nUse case:\n  " + useCaseConfig.getTargetName() + "\nRequested dynamic range:\n  " + dynamicRange + "\nSupported dynamic ranges:\n  " + set + "\nConstrained set of concurrent dynamic ranges:\n  " + set4);
    }

    private final void updateConstraints(Set<DynamicRange> set, DynamicRange dynamicRange, DynamicRangeProfilesCompat dynamicRangeProfilesCompat) {
        Preconditions.checkState(!set.isEmpty(), "Cannot update already-empty constraints.");
        Set<DynamicRange> dynamicRangeCaptureRequestConstraints = dynamicRangeProfilesCompat.getDynamicRangeCaptureRequestConstraints(dynamicRange);
        Set<DynamicRange> set2 = dynamicRangeCaptureRequestConstraints;
        if (set2.isEmpty()) {
            return;
        }
        Set setY0 = qn1.y0(set);
        set.retainAll(set2);
        if (set.isEmpty()) {
            g7.c("Constraints of dynamic range cannot be combined with existing constraints.\nDynamic range:\n  ", dynamicRange, "\nConstraints:\n  ", dynamicRangeCaptureRequestConstraints, "\nExisting constraints:\n  ", setY0);
        }
    }

    public final CameraMetadata getCameraMetadata() {
        return this.cameraMetadata;
    }

    public final boolean is10BitDynamicRangeSupported() {
        return this.is10BitSupported;
    }

    public final Map<UseCaseConfig<?>, DynamicRange> resolveAndValidateDynamicRanges(List<? extends AttachedSurfaceInfo> list, List<? extends UseCaseConfig<?>> list2, List<Integer> list3) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<? extends AttachedSurfaceInfo> it = list.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange = it.next().getDynamicRange();
            dynamicRange.getClass();
            linkedHashSet.add(dynamicRange);
        }
        Set<DynamicRange> supportedDynamicRanges = this.dynamicRangesInfo.getSupportedDynamicRanges();
        Set<DynamicRange> setX0 = qn1.x0(supportedDynamicRanges);
        Iterator<DynamicRange> it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            updateConstraints(setX0, it2.next(), this.dynamicRangesInfo);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<Integer> it3 = list3.iterator();
        while (it3.hasNext()) {
            UseCaseConfig<?> useCaseConfig = list2.get(it3.next().intValue());
            DynamicRange dynamicRange2 = useCaseConfig.getDynamicRange();
            dynamicRange2.getClass();
            if (isFullyUnspecified(dynamicRange2)) {
                arrayList3.add(useCaseConfig);
            } else if (isPartiallySpecified(dynamicRange2)) {
                arrayList2.add(useCaseConfig);
            } else {
                arrayList.add(useCaseConfig);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ArrayList<UseCaseConfig<?>> arrayList4 = new ArrayList();
        arrayList4.addAll(arrayList);
        arrayList4.addAll(arrayList2);
        arrayList4.addAll(arrayList3);
        for (UseCaseConfig<?> useCaseConfig2 : arrayList4) {
            DynamicRangeResolver dynamicRangeResolver = this;
            DynamicRange dynamicRangeResolveDynamicRangeAndUpdateConstraints = dynamicRangeResolver.resolveDynamicRangeAndUpdateConstraints(supportedDynamicRanges, linkedHashSet, linkedHashSet2, useCaseConfig2, setX0);
            linkedHashMap.put(useCaseConfig2, dynamicRangeResolveDynamicRangeAndUpdateConstraints);
            if (!linkedHashSet.contains(dynamicRangeResolveDynamicRangeAndUpdateConstraints)) {
                linkedHashSet2.add(dynamicRangeResolveDynamicRangeAndUpdateConstraints);
            }
            this = dynamicRangeResolver;
        }
        return linkedHashMap;
    }
}
