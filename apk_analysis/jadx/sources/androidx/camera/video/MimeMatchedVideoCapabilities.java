package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.DynamicRanges;
import androidx.camera.video.MimeMatchedVideoCapabilities;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import defpackage.aa4;
import defpackage.b36;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.g2;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.m05;
import defpackage.mx2;
import defpackage.n05;
import defpackage.ox2;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MimeMatchedVideoCapabilities implements VideoCapabilities {
    private final CameraInfoInternal cameraInfo;
    private final String mime;
    private final cl4 validatedData$delegate;

    public MimeMatchedVideoCapabilities(String str, CameraInfoInternal cameraInfoInternal, final VideoEncoderInfo.Finder finder) {
        str.getClass();
        cameraInfoInternal.getClass();
        finder.getClass();
        this.mime = str;
        this.cameraInfo = cameraInfoInternal;
        this.validatedData$delegate = new fh8(new ll3() { // from class: db5
            @Override // defpackage.ll3
            public final Object invoke() {
                return MimeMatchedVideoCapabilities.validatedData_delegate$lambda$0(finder, this);
            }
        });
    }

    private final ValidatedData getValidatedData() {
        return (ValidatedData) this.validatedData$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final ValidatedData validatedData_delegate$lambda$0(VideoEncoderInfo.Finder finder, MimeMatchedVideoCapabilities mimeMatchedVideoCapabilities) {
        Object next;
        VideoEncoderInfo videoEncoderInfoFind = finder.find(mimeMatchedVideoCapabilities.mime);
        int i = 3;
        Set set = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        Object[] objArr9 = 0;
        Object[] objArr10 = 0;
        Object[] objArr11 = 0;
        if (videoEncoderInfoFind == null) {
            return new ValidatedData(set, objArr11 == true ? 1 : 0, i, objArr10 == true ? 1 : 0);
        }
        Set<DynamicRange> supportedDynamicRanges = mimeMatchedVideoCapabilities.cameraInfo.getSupportedDynamicRanges();
        supportedDynamicRanges.getClass();
        if (supportedDynamicRanges.isEmpty()) {
            return new ValidatedData(objArr9 == true ? 1 : 0, objArr8 == true ? 1 : 0, i, objArr7 == true ? 1 : 0);
        }
        LinkedHashSet linkedHashSetX = qn1.X(supportedDynamicRanges, VideoConfigUtil.INSTANCE.getDynamicRangesForMime(mimeMatchedVideoCapabilities.mime));
        if (linkedHashSetX.isEmpty()) {
            return new ValidatedData(objArr6 == true ? 1 : 0, objArr5 == true ? 1 : 0, i, objArr4 == true ? 1 : 0);
        }
        List<Size> supportedResolutions = mimeMatchedVideoCapabilities.cameraInfo.getSupportedResolutions(34);
        supportedResolutions.getClass();
        List<Size> list = supportedResolutions;
        HashSet hashSet = new HashSet(m05.b(kn1.q(list, 12)));
        qn1.q0(list, hashSet);
        List<Quality> sortedQualities = Quality.getSortedQualities();
        sortedQualities.getClass();
        ArrayList<Quality.ConstantQuality> arrayList = new ArrayList();
        for (Object obj : sortedQualities) {
            if (obj instanceof Quality.ConstantQuality) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Quality.ConstantQuality constantQuality : arrayList) {
            List<Size> typicalSizes = constantQuality.getTypicalSizes();
            typicalSizes.getClass();
            Iterator<T> it = typicalSizes.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Size size = (Size) next;
                if (hashSet.contains(size) && videoEncoderInfoFind.isSizeSupported(size.getWidth(), size.getHeight())) {
                    break;
                }
            }
            Size size2 = (Size) next;
            b36 b36Var = size2 != null ? new b36(constantQuality, size2) : null;
            if (b36Var != null) {
                arrayList2.add(b36Var);
            }
        }
        Map mapK = n05.k(arrayList2);
        return mapK.isEmpty() ? new ValidatedData(objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0) : new ValidatedData(linkedHashSetX, mapK);
    }

    @Override // androidx.camera.video.VideoCapabilities
    public Size getResolution(Quality quality, DynamicRange dynamicRange) {
        quality.getClass();
        dynamicRange.getClass();
        if (DynamicRanges.canResolve(dynamicRange, getValidatedData().getDynamicRanges())) {
            return getValidatedData().getQualityToSizeMap().get(quality);
        }
        return null;
    }

    @Override // androidx.camera.video.VideoCapabilities
    public Set<DynamicRange> getSupportedDynamicRanges() {
        return getValidatedData().getDynamicRanges();
    }

    @Override // androidx.camera.video.VideoCapabilities
    public List<Quality> getSupportedQualities(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        return DynamicRanges.canResolve(dynamicRange, getValidatedData().getDynamicRanges()) ? qn1.t0(getValidatedData().getQualityToSizeMap().keySet()) : kx2.b;
    }

    @Override // androidx.camera.video.VideoCapabilities
    public boolean isQualitySupported(Quality quality, DynamicRange dynamicRange) {
        quality.getClass();
        dynamicRange.getClass();
        return DynamicRanges.canResolve(dynamicRange, getValidatedData().getDynamicRanges()) && getValidatedData().getQualityToSizeMap().containsKey(quality);
    }

    @Override // androidx.camera.video.VideoCapabilities
    public boolean isStabilizationSupported() {
        return this.cameraInfo.isVideoStabilizationSupported();
    }

    public String toString() {
        return "MimeMatchedVideoCapabilities(mime=" + this.mime + ", cameraInfo=" + this.cameraInfo + ')';
    }

    public static final class ValidatedData {
        private final Set<DynamicRange> dynamicRanges;
        private final Map<Quality, Size> qualityToSizeMap;

        public /* synthetic */ ValidatedData(Set set, Map map, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? ox2.b : set, (i & 2) != 0 ? mx2.b : map);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ValidatedData copy$default(ValidatedData validatedData, Set set, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                set = validatedData.dynamicRanges;
            }
            if ((i & 2) != 0) {
                map = validatedData.qualityToSizeMap;
            }
            return validatedData.copy(set, map);
        }

        public final Set<DynamicRange> component1() {
            return this.dynamicRanges;
        }

        public final Map<Quality, Size> component2() {
            return this.qualityToSizeMap;
        }

        public final ValidatedData copy(Set<DynamicRange> set, Map<Quality, Size> map) {
            set.getClass();
            map.getClass();
            return new ValidatedData(set, map);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ValidatedData)) {
                return false;
            }
            ValidatedData validatedData = (ValidatedData) obj;
            return aa4.e(this.dynamicRanges, validatedData.dynamicRanges) && aa4.e(this.qualityToSizeMap, validatedData.qualityToSizeMap);
        }

        public final Set<DynamicRange> getDynamicRanges() {
            return this.dynamicRanges;
        }

        public final Map<Quality, Size> getQualityToSizeMap() {
            return this.qualityToSizeMap;
        }

        public int hashCode() {
            return this.qualityToSizeMap.hashCode() + (this.dynamicRanges.hashCode() * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ValidatedData(dynamicRanges=");
            sb.append(this.dynamicRanges);
            sb.append(", qualityToSizeMap=");
            return g2.c(sb, this.qualityToSizeMap, ')');
        }

        public ValidatedData(Set<DynamicRange> set, Map<Quality, Size> map) {
            set.getClass();
            map.getClass();
            this.dynamicRanges = set;
            this.qualityToSizeMap = map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ValidatedData() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }
}
