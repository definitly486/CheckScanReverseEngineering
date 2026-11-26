package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.MultiResolutionStreamConfigurationMap;
import android.hardware.camera2.params.MultiResolutionStreamInfo;
import androidx.camera.camera2.pipe.CameraMultiResolutionStreamConfigurationMap;
import androidx.camera.camera2.pipe.StreamFormat;
import defpackage.ne4;
import defpackage.oo5;
import defpackage.qn1;
import defpackage.vh;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2MultiResolutionStreamConfigurationMap implements CameraMultiResolutionStreamConfigurationMap {
    private final MultiResolutionStreamConfigurationMap multiResolutionStreamConfigurationMap;

    public Camera2MultiResolutionStreamConfigurationMap(MultiResolutionStreamConfigurationMap multiResolutionStreamConfigurationMap) {
        multiResolutionStreamConfigurationMap.getClass();
        this.multiResolutionStreamConfigurationMap = multiResolutionStreamConfigurationMap;
    }

    @Override // androidx.camera.camera2.pipe.CameraMultiResolutionStreamConfigurationMap
    public List<StreamFormat> getInputFormats() {
        int[] inputFormats = this.multiResolutionStreamConfigurationMap.getInputFormats();
        inputFormats.getClass();
        ArrayList arrayList = new ArrayList(inputFormats.length);
        for (int i : inputFormats) {
            arrayList.add(StreamFormat.m677boximpl(StreamFormat.m678constructorimpl(i)));
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraMultiResolutionStreamConfigurationMap
    /* JADX INFO: renamed from: getInputInfo-hNQ4ISI */
    public List<MultiResolutionStreamInfo> mo372getInputInfohNQ4ISI(int i) {
        Collection<MultiResolutionStreamInfo> inputInfo = this.multiResolutionStreamConfigurationMap.getInputInfo(i);
        inputInfo.getClass();
        return qn1.t0(inputInfo);
    }

    @Override // androidx.camera.camera2.pipe.CameraMultiResolutionStreamConfigurationMap
    public List<StreamFormat> getOutputFormats() {
        int[] outputFormats = this.multiResolutionStreamConfigurationMap.getOutputFormats();
        outputFormats.getClass();
        ArrayList arrayList = new ArrayList(outputFormats.length);
        for (int i : outputFormats) {
            arrayList.add(StreamFormat.m677boximpl(StreamFormat.m678constructorimpl(i)));
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraMultiResolutionStreamConfigurationMap
    /* JADX INFO: renamed from: getOutputInfo-hNQ4ISI */
    public List<MultiResolutionStreamInfo> mo373getOutputInfohNQ4ISI(int i) {
        Collection<MultiResolutionStreamInfo> outputInfo = this.multiResolutionStreamConfigurationMap.getOutputInfo(i);
        outputInfo.getClass();
        return qn1.t0(outputInfo);
    }

    @Override // androidx.camera.camera2.pipe.CameraMultiResolutionStreamConfigurationMap
    /* JADX INFO: renamed from: isConcurrentReadersSupported-hNQ4ISI */
    public boolean mo374isConcurrentReadersSupportedhNQ4ISI(int i) {
        throw new oo5("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, MultiResolutionStreamConfigurationMap.class)) {
            T t = (T) this.multiResolutionStreamConfigurationMap;
            t.getClass();
            return t;
        }
        if (ne4Var.equals(x07.a(Camera2MultiResolutionStreamConfigurationMap.class))) {
            return this;
        }
        return null;
    }
}
