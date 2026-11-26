package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.internal.utils.SizeUtil;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.cw3;
import defpackage.fg;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.k57;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.lz0;
import defpackage.m05;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.vo1;
import defpackage.xh2;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class HighSpeedResolver {
    public static final Companion Companion = new Companion(null);
    private static final Range<Integer> DEFAULT_FPS = new Range<>(120, 120);
    private static final String TAG = "HighSpeedResolver";
    private final CameraMetadata cameraMetadata;
    private final cl4 isHighSpeedSupported$delegate;
    private final cl4 maxSize$delegate;
    private final cl4 streamConfigurationMapCompat$delegate;
    private final cl4 supportedSizes$delegate;

    public HighSpeedResolver(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        this.cameraMetadata = cameraMetadata;
        this.isHighSpeedSupported$delegate = new fh8(new cw3(this, 0));
        this.maxSize$delegate = new fh8(new lz0(this, 2));
        int i = 1;
        this.streamConfigurationMapCompat$delegate = new fh8(new vo1(this, i));
        this.supportedSizes$delegate = new fh8(new xh2(this, i));
    }

    private final <T> List<T> findCommonElements(List<? extends List<? extends T>> list) {
        if (list.isEmpty()) {
            return kx2.b;
        }
        ArrayList arrayListV0 = qn1.v0((Collection) qn1.T(list));
        Iterator<T> it = qn1.O(list, 1).iterator();
        while (it.hasNext()) {
            arrayListV0.retainAll((List) it.next());
        }
        return arrayListV0;
    }

    private final List<Range<Integer>> getHighSpeedVideoFpsRangesFor(Size size) {
        Object aVar;
        try {
            aVar = getStreamConfigurationMapCompat().getHighSpeedVideoFpsRangesFor(size);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        Range[] rangeArr = (Range[]) aVar;
        return rangeArr != null ? qn1.t0(yr.G(rangeArr)) : kx2.b;
    }

    private final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        return (StreamConfigurationMapCompat) this.streamConfigurationMapCompat$delegate.getValue();
    }

    private final List<Size> getSupportedSizes() {
        return (List) this.supportedSizes$delegate.getValue();
    }

    public static final boolean isHighSpeedOn(Collection<? extends AttachedSurfaceInfo> collection, Collection<? extends UseCaseConfig<?>> collection2) {
        return Companion.isHighSpeedOn(collection, collection2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isHighSpeedSupported_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        CameraMetadata cameraMetadata = highSpeedResolver.cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key.getClass();
        int[] iArr = (int[]) cameraMetadata.get(key);
        if (iArr != null) {
            for (int i : iArr) {
                if (i == 9) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Size maxSize_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        List<Size> supportedSizes = highSpeedResolver.getSupportedSizes();
        if (supportedSizes.isEmpty()) {
            supportedSizes = null;
        }
        if (supportedSizes != null) {
            Iterator<T> it = supportedSizes.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                if (it.hasNext()) {
                    int area = SizeUtil.getArea((Size) next);
                    do {
                        Object next2 = it.next();
                        int area2 = SizeUtil.getArea((Size) next2);
                        if (area < area2) {
                            next = next2;
                            area = area2;
                        }
                    } while (it.hasNext());
                }
                return (Size) next;
            }
            qz0.e();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StreamConfigurationMapCompat streamConfigurationMapCompat_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        CameraMetadata cameraMetadata = highSpeedResolver.cameraMetadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(key);
        if (streamConfigurationMap != null) {
            return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(highSpeedResolver.cameraMetadata, streamConfigurationMap));
        }
        fg.c("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List supportedSizes_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        Size[] highSpeedVideoSizes = highSpeedResolver.getStreamConfigurationMapCompat().getHighSpeedVideoSizes();
        return highSpeedVideoSizes != null ? yr.h0(highSpeedVideoSizes) : kx2.b;
    }

    public final <T> Map<T, List<Size>> filterCommonSupportedSizes(Map<T, ? extends List<Size>> map) {
        map.getClass();
        List<T> listFindCommonElements = findCommonElements(qn1.t0(map.values()));
        ArrayList arrayList = new ArrayList();
        for (T t : listFindCommonElements) {
            if (getSupportedSizes().contains((Size) t)) {
                arrayList.add(t);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            List list = (List) entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (arrayList.contains((Size) obj)) {
                    arrayList2.add(obj);
                }
            }
            linkedHashMap.put(key, arrayList2);
        }
        return linkedHashMap;
    }

    public final Range<Integer>[] getFrameRateRangesFor(List<Size> list) {
        list.getClass();
        int size = list.size();
        if (1 > size || size >= 3 || qn1.N(list).size() != 1) {
            return null;
        }
        List<Range<Integer>> highSpeedVideoFpsRangesFor = getHighSpeedVideoFpsRangesFor(list.get(0));
        if (highSpeedVideoFpsRangesFor.isEmpty()) {
            highSpeedVideoFpsRangesFor = null;
        }
        if (highSpeedVideoFpsRangesFor == null) {
            return null;
        }
        if (list.size() == 2) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : highSpeedVideoFpsRangesFor) {
                Range range = (Range) obj;
                if (aa4.e(range.getLower(), range.getUpper())) {
                    arrayList.add(obj);
                }
            }
            highSpeedVideoFpsRangesFor = arrayList;
        }
        return (Range[]) highSpeedVideoFpsRangesFor.toArray(new Range[0]);
    }

    public final int getMaxFrameRate(Size size) {
        size.getClass();
        List<Range<Integer>> highSpeedVideoFpsRangesFor = getHighSpeedVideoFpsRangesFor(size);
        if (highSpeedVideoFpsRangesFor.isEmpty()) {
            highSpeedVideoFpsRangesFor = null;
        }
        if (highSpeedVideoFpsRangesFor == null) {
            Logger.w(TAG, "No supported high speed  fps for " + size);
            return 0;
        }
        Iterator<T> it = highSpeedVideoFpsRangesFor.iterator();
        if (!it.hasNext()) {
            qz0.e();
            return 0;
        }
        Integer num = (Integer) ((Range) it.next()).getUpper();
        while (it.hasNext()) {
            Integer num2 = (Integer) ((Range) it.next()).getUpper();
            if (num.compareTo(num2) < 0) {
                num = num2;
            }
        }
        num.getClass();
        return num.intValue();
    }

    public final Size getMaxSize() {
        return (Size) this.maxSize$delegate.getValue();
    }

    public final List<List<Size>> getSizeArrangements(List<? extends List<Size>> list) {
        list.getClass();
        if (list.isEmpty()) {
            return kx2.b;
        }
        List<Size> listFindCommonElements = findCommonElements(list);
        ArrayList arrayList = new ArrayList(kn1.q(listFindCommonElements, 10));
        for (Size size : listFindCommonElements) {
            int size2 = list.size();
            ArrayList arrayList2 = new ArrayList(size2);
            for (int i = 0; i < size2; i++) {
                arrayList2.add(size);
            }
            arrayList.add(arrayList2);
        }
        return arrayList;
    }

    public final boolean isHighSpeedSupported() {
        return ((Boolean) this.isHighSpeedSupported$delegate.getValue()).booleanValue();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Range<Integer> getDEFAULT_FPS() {
            return HighSpeedResolver.DEFAULT_FPS;
        }

        public final boolean isHighSpeedOn(Collection<? extends AttachedSurfaceInfo> collection, Collection<? extends UseCaseConfig<?>> collection2) {
            boolean z;
            collection.getClass();
            collection2.getClass();
            Collection<? extends AttachedSurfaceInfo> collection3 = collection;
            ArrayList arrayList = new ArrayList(kn1.q(collection3, 10));
            Iterator<T> it = collection3.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((AttachedSurfaceInfo) it.next()).getSessionType()));
            }
            Collection<? extends UseCaseConfig<?>> collection4 = collection2;
            ArrayList arrayList2 = new ArrayList(kn1.q(collection4, 10));
            Iterator<T> it2 = collection4.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Integer.valueOf(((UseCaseConfig) it2.next()).getSessionType(0)));
            }
            ArrayList arrayListH0 = qn1.h0(arrayList2, arrayList);
            if (!arrayListH0.isEmpty()) {
                Iterator it3 = arrayListH0.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z = false;
                        break;
                    }
                    if (((Number) it3.next()).intValue() == 1) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
            if (z && !arrayListH0.isEmpty()) {
                Iterator it4 = arrayListH0.iterator();
                while (it4.hasNext()) {
                    if (((Number) it4.next()).intValue() != 1) {
                        fg.c("All sessionTypes should be high-speed when any of them is high-speed");
                        return false;
                    }
                }
            }
            return z;
        }

        private Companion() {
        }
    }
}
