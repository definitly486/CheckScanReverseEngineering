package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import defpackage.jh2;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.vh;
import defpackage.x07;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidFrameInfo implements FrameInfo {
    private final String camera;
    private final Map<CameraId, FrameMetadata> physicalResults;
    private final RequestMetadata requestMetadata;
    private final AndroidFrameMetadata result;
    private final TotalCaptureResult totalCaptureResult;

    private AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String str, RequestMetadata requestMetadata) {
        Map physicalCaptureResults;
        totalCaptureResult.getClass();
        str.getClass();
        requestMetadata.getClass();
        this.totalCaptureResult = totalCaptureResult;
        this.camera = str;
        this.requestMetadata = requestMetadata;
        this.result = new AndroidFrameMetadata(totalCaptureResult, mo65getCameraDz_R5H8(), null);
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("physicalCaptureResults");
            int i = Build.VERSION.SDK_INT;
            Map<CameraId, FrameMetadata> arrayMap = mx2.b;
            if (i >= 31) {
                physicalCaptureResults = Api31Compat.getPhysicalCameraTotalResults(this.totalCaptureResult);
                physicalCaptureResults.getClass();
            } else {
                physicalCaptureResults = i >= 28 ? Api28Compat.getPhysicalCaptureResults(this.totalCaptureResult) : arrayMap;
            }
            if (physicalCaptureResults != null && !physicalCaptureResults.isEmpty()) {
                arrayMap = new ArrayMap<>(physicalCaptureResults.size());
                for (Map.Entry entry : physicalCaptureResults.entrySet()) {
                    String strM352constructorimpl = CameraId.m352constructorimpl((String) entry.getKey());
                    arrayMap.put(CameraId.m351boximpl(strM352constructorimpl), new AndroidFrameMetadata((CaptureResult) entry.getValue(), strM352constructorimpl, null));
                }
            }
            Trace.endSection();
            this.physicalResults = arrayMap;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    /* JADX INFO: renamed from: get-EfqyGwQ */
    public FrameMetadata mo64getEfqyGwQ(String str) {
        str.getClass();
        return this.physicalResults.get(CameraId.m351boximpl(str));
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo65getCameraDz_R5H8() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo66getFrameNumberUgla2oM() {
        return this.result.mo462getFrameNumberUgla2oM();
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    public FrameMetadata getMetadata() {
        return this.result;
    }

    @Override // androidx.camera.camera2.pipe.FrameInfo
    public RequestMetadata getRequestMetadata() {
        return this.requestMetadata;
    }

    public String toString() {
        return "FrameInfo(camera: " + ((Object) CameraId.m357toStringimpl(this.result.mo461getCameraDz_R5H8())) + ", frameNumber: " + this.result.mo462getFrameNumberUgla2oM() + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        T t;
        if (vh.g(ne4Var, CaptureResult.class)) {
            T t2 = (T) this.totalCaptureResult;
            t2.getClass();
            return t2;
        }
        if (!ne4Var.equals(x07.a(TotalCaptureResult.class)) || (t = (T) this.totalCaptureResult) == null) {
            return null;
        }
        return t;
    }

    public /* synthetic */ AndroidFrameInfo(TotalCaptureResult totalCaptureResult, String str, RequestMetadata requestMetadata, jh2 jh2Var) {
        this(totalCaptureResult, str, requestMetadata);
    }
}
