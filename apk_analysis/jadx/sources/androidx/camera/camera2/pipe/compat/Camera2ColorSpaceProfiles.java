package androidx.camera.camera2.pipe.compat;

import android.graphics.ColorSpace;
import android.hardware.camera2.params.ColorSpaceProfiles;
import androidx.camera.camera2.pipe.CameraColorSpace;
import androidx.camera.camera2.pipe.CameraColorSpaceProfiles;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.kn1;
import defpackage.ne4;
import defpackage.ox2;
import defpackage.qn1;
import defpackage.vh;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ColorSpaceProfiles implements CameraColorSpaceProfiles {
    private final ColorSpaceProfiles colorSpaceProfiles;

    public Camera2ColorSpaceProfiles(ColorSpaceProfiles colorSpaceProfiles) {
        colorSpaceProfiles.getClass();
        this.colorSpaceProfiles = colorSpaceProfiles;
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedColorSpaces-hNQ4ISI */
    public Set<CameraColorSpace> mo224getSupportedColorSpaceshNQ4ISI(int i) {
        Set<ColorSpace.Named> supportedColorSpaces = this.colorSpaceProfiles.getSupportedColorSpaces(i);
        supportedColorSpaces.getClass();
        ArrayList arrayList = new ArrayList();
        for (ColorSpace.Named named : supportedColorSpaces) {
            CameraColorSpace.Companion companion = CameraColorSpace.Companion;
            named.getClass();
            String strM204fromColorSpaceNamed5GKeQC8 = companion.m204fromColorSpaceNamed5GKeQC8(named);
            if (strM204fromColorSpaceNamed5GKeQC8 == null && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Unsupported color space: " + named.name());
            }
            CameraColorSpace cameraColorSpaceM195boximpl = strM204fromColorSpaceNamed5GKeQC8 != null ? CameraColorSpace.m195boximpl(strM204fromColorSpaceNamed5GKeQC8) : null;
            if (cameraColorSpaceM195boximpl != null) {
                arrayList.add(cameraColorSpaceM195boximpl);
            }
        }
        return qn1.y0(arrayList);
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedColorSpacesForDynamicRange-sNWL0t8 */
    public Set<CameraColorSpace> mo225getSupportedColorSpacesForDynamicRangesNWL0t8(int i, long j) {
        Set<ColorSpace.Named> supportedColorSpacesForDynamicRange = this.colorSpaceProfiles.getSupportedColorSpacesForDynamicRange(i, j);
        supportedColorSpacesForDynamicRange.getClass();
        ArrayList arrayList = new ArrayList();
        for (ColorSpace.Named named : supportedColorSpacesForDynamicRange) {
            CameraColorSpace.Companion companion = CameraColorSpace.Companion;
            named.getClass();
            String strM204fromColorSpaceNamed5GKeQC8 = companion.m204fromColorSpaceNamed5GKeQC8(named);
            if (strM204fromColorSpaceNamed5GKeQC8 == null && Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Unsupported color space: " + named.name());
            }
            CameraColorSpace cameraColorSpaceM195boximpl = strM204fromColorSpaceNamed5GKeQC8 != null ? CameraColorSpace.m195boximpl(strM204fromColorSpaceNamed5GKeQC8) : null;
            if (cameraColorSpaceM195boximpl != null) {
                arrayList.add(cameraColorSpaceM195boximpl);
            }
        }
        return qn1.y0(arrayList);
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedDynamicRangeProfiles-6Yu6yh8 */
    public Set<OutputStream.DynamicRangeProfile> mo226getSupportedDynamicRangeProfiles6Yu6yh8(String str, int i) {
        str.getClass();
        ColorSpace.Named namedM201toColorSpaceNamedimpl = CameraColorSpace.m201toColorSpaceNamedimpl(str);
        if (namedM201toColorSpaceNamedimpl == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Unsupported color space: ".concat(str));
            }
            return ox2.b;
        }
        Set<Long> supportedDynamicRangeProfiles = this.colorSpaceProfiles.getSupportedDynamicRangeProfiles(namedM201toColorSpaceNamedimpl, i);
        supportedDynamicRangeProfiles.getClass();
        Set<Long> set = supportedDynamicRangeProfiles;
        ArrayList arrayList = new ArrayList(kn1.q(set, 10));
        for (Long l : set) {
            l.getClass();
            arrayList.add(OutputStream.DynamicRangeProfile.m543boximpl(OutputStream.DynamicRangeProfile.m544constructorimpl(l.longValue())));
        }
        return qn1.y0(arrayList);
    }

    @Override // androidx.camera.camera2.pipe.CameraColorSpaceProfiles
    /* JADX INFO: renamed from: getSupportedImageFormatsForColorSpace-jRxjvBE */
    public Set<StreamFormat> mo227getSupportedImageFormatsForColorSpacejRxjvBE(String str) {
        str.getClass();
        ColorSpace.Named namedM201toColorSpaceNamedimpl = CameraColorSpace.m201toColorSpaceNamedimpl(str);
        if (namedM201toColorSpaceNamedimpl == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Unsupported color space: ".concat(str));
            }
            return ox2.b;
        }
        Set<Integer> supportedImageFormatsForColorSpace = this.colorSpaceProfiles.getSupportedImageFormatsForColorSpace(namedM201toColorSpaceNamedimpl);
        supportedImageFormatsForColorSpace.getClass();
        Set<Integer> set = supportedImageFormatsForColorSpace;
        ArrayList arrayList = new ArrayList(kn1.q(set, 10));
        for (Integer num : set) {
            num.getClass();
            arrayList.add(StreamFormat.m677boximpl(StreamFormat.m678constructorimpl(num.intValue())));
        }
        return qn1.y0(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, ColorSpaceProfiles.class)) {
            T t = (T) this.colorSpaceProfiles;
            t.getClass();
            return t;
        }
        if (ne4Var.equals(x07.a(Camera2ColorSpaceProfiles.class))) {
            return this;
        }
        return null;
    }
}
