package defpackage;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraStreamConfigurationMap;
import androidx.camera.camera2.pipe.StreamFormat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class oz0 implements CameraStreamConfigurationMap {
    public final StreamConfigurationMap b;

    public oz0(StreamConfigurationMap streamConfigurationMap) {
        this.b = streamConfigurationMap;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: getHighResolutionOutputSizes-hNQ4ISI */
    public final List<Size> mo386getHighResolutionOutputSizeshNQ4ISI(int i) {
        Size[] highResolutionOutputSizes = this.b.getHighResolutionOutputSizes(i);
        return highResolutionOutputSizes != null ? yr.h0(highResolutionOutputSizes) : kx2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final List<Range<Integer>> getHighSpeedVideoFpsRanges() {
        Range<Integer>[] highSpeedVideoFpsRanges = this.b.getHighSpeedVideoFpsRanges();
        highSpeedVideoFpsRanges.getClass();
        return yr.h0(highSpeedVideoFpsRanges);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final List<Range<Integer>> getHighSpeedVideoFpsRangesFor(Size size) {
        size.getClass();
        Range<Integer>[] highSpeedVideoFpsRangesFor = this.b.getHighSpeedVideoFpsRangesFor(size);
        return highSpeedVideoFpsRangesFor != null ? yr.h0(highSpeedVideoFpsRangesFor) : kx2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final List<Size> getHighSpeedVideoSizes() {
        Size[] highSpeedVideoSizes = this.b.getHighSpeedVideoSizes();
        highSpeedVideoSizes.getClass();
        return yr.h0(highSpeedVideoSizes);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final List<Size> getHighSpeedVideoSizesFor(Range<Integer> range) {
        range.getClass();
        Size[] highSpeedVideoSizesFor = this.b.getHighSpeedVideoSizesFor(range);
        highSpeedVideoSizesFor.getClass();
        return yr.h0(highSpeedVideoSizesFor);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final List<StreamFormat> getInputFormats() {
        int[] inputFormats = this.b.getInputFormats();
        inputFormats.getClass();
        ArrayList arrayList = new ArrayList(inputFormats.length);
        for (int i : inputFormats) {
            arrayList.add(StreamFormat.m677boximpl(StreamFormat.m678constructorimpl(i)));
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: getInputSizes-hNQ4ISI */
    public final List<Size> mo387getInputSizeshNQ4ISI(int i) {
        Size[] inputSizes = this.b.getInputSizes(i);
        return inputSizes != null ? yr.h0(inputSizes) : kx2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final List<StreamFormat> getOutputFormats() {
        int[] outputFormats = this.b.getOutputFormats();
        outputFormats.getClass();
        ArrayList arrayList = new ArrayList(outputFormats.length);
        for (int i : outputFormats) {
            arrayList.add(StreamFormat.m677boximpl(StreamFormat.m678constructorimpl(i)));
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final <T> long getOutputMinFrameDuration(Class<T> cls, Size size) {
        cls.getClass();
        size.getClass();
        return this.b.getOutputMinFrameDuration(cls, size);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: getOutputMinFrameDuration-lomOqCM */
    public final long mo388getOutputMinFrameDurationlomOqCM(int i, Size size) {
        size.getClass();
        return this.b.getOutputMinFrameDuration(i, size);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final <T> List<Size> getOutputSizes(Class<T> cls) {
        cls.getClass();
        Size[] outputSizes = this.b.getOutputSizes(cls);
        return outputSizes != null ? yr.h0(outputSizes) : kx2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: getOutputSizes-hNQ4ISI */
    public final List<Size> mo389getOutputSizeshNQ4ISI(int i) {
        Size[] outputSizes = this.b.getOutputSizes(i);
        return outputSizes != null ? yr.h0(outputSizes) : kx2.b;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final <T> long getOutputStallDuration(Class<T> cls, Size size) {
        cls.getClass();
        size.getClass();
        return this.b.getOutputStallDuration(cls, size);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: getOutputStallDuration-lomOqCM */
    public final long mo390getOutputStallDurationlomOqCM(int i, Size size) {
        size.getClass();
        return this.b.getOutputStallDuration(i, size);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: getValidOutputFormatsForInput-hNQ4ISI */
    public final List<StreamFormat> mo391getValidOutputFormatsForInputhNQ4ISI(int i) {
        int[] validOutputFormatsForInput = this.b.getValidOutputFormatsForInput(i);
        validOutputFormatsForInput.getClass();
        ArrayList arrayList = new ArrayList(validOutputFormatsForInput.length);
        for (int i2 : validOutputFormatsForInput) {
            arrayList.add(StreamFormat.m677boximpl(StreamFormat.m678constructorimpl(i2)));
        }
        return arrayList;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final boolean isOutputSupportedFor(Surface surface) {
        surface.getClass();
        return this.b.isOutputSupportedFor(surface);
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    /* JADX INFO: renamed from: isOutputSupportedFor-hNQ4ISI */
    public final boolean mo392isOutputSupportedForhNQ4ISI(int i) {
        return this.b.isOutputSupportedFor(i);
    }

    public final String toString() {
        String string = this.b.toString();
        string.getClass();
        return string;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final <T> T unwrapAs(ne4<T> ne4Var) {
        if (vh.g(ne4Var, StreamConfigurationMap.class)) {
            return (T) this.b;
        }
        if (ne4Var.equals(x07.a(oz0.class))) {
            return this;
        }
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraStreamConfigurationMap
    public final <T> boolean isOutputSupportedFor(Class<T> cls) {
        cls.getClass();
        return StreamConfigurationMap.isOutputSupportedFor(cls);
    }
}
