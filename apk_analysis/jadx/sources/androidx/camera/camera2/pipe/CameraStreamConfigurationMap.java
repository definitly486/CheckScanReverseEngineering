package androidx.camera.camera2.pipe;

import android.util.Range;
import android.util.Size;
import android.view.Surface;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CameraStreamConfigurationMap extends UnsafeWrapper {
    /* JADX INFO: renamed from: getHighResolutionOutputSizes-hNQ4ISI, reason: not valid java name */
    List<Size> mo386getHighResolutionOutputSizeshNQ4ISI(int i);

    List<Range<Integer>> getHighSpeedVideoFpsRanges();

    List<Range<Integer>> getHighSpeedVideoFpsRangesFor(Size size);

    List<Size> getHighSpeedVideoSizes();

    List<Size> getHighSpeedVideoSizesFor(Range<Integer> range);

    List<StreamFormat> getInputFormats();

    /* JADX INFO: renamed from: getInputSizes-hNQ4ISI, reason: not valid java name */
    List<Size> mo387getInputSizeshNQ4ISI(int i);

    List<StreamFormat> getOutputFormats();

    <T> long getOutputMinFrameDuration(Class<T> cls, Size size);

    /* JADX INFO: renamed from: getOutputMinFrameDuration-lomOqCM, reason: not valid java name */
    long mo388getOutputMinFrameDurationlomOqCM(int i, Size size);

    <T> List<Size> getOutputSizes(Class<T> cls);

    /* JADX INFO: renamed from: getOutputSizes-hNQ4ISI, reason: not valid java name */
    List<Size> mo389getOutputSizeshNQ4ISI(int i);

    <T> long getOutputStallDuration(Class<T> cls, Size size);

    /* JADX INFO: renamed from: getOutputStallDuration-lomOqCM, reason: not valid java name */
    long mo390getOutputStallDurationlomOqCM(int i, Size size);

    /* JADX INFO: renamed from: getValidOutputFormatsForInput-hNQ4ISI, reason: not valid java name */
    List<StreamFormat> mo391getValidOutputFormatsForInputhNQ4ISI(int i);

    boolean isOutputSupportedFor(Surface surface);

    <T> boolean isOutputSupportedFor(Class<T> cls);

    /* JADX INFO: renamed from: isOutputSupportedFor-hNQ4ISI, reason: not valid java name */
    boolean mo392isOutputSupportedForhNQ4ISI(int i);
}
