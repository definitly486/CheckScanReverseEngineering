package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class StreamConfigurationMapCompat {
    private final Map<Class<?>, Size[]> cachedClassOutputSizes;
    private final Map<Integer, Size[]> cachedFormatHighResolutionOutputSizes;
    private final Map<Integer, Size[]> cachedFormatOutputSizes;
    private StreamConfigurationMapCompatImpl impl;
    private final OutputSizesCorrector outputSizesCorrector;
    private final String tag;

    public interface StreamConfigurationMapCompatImpl {
        Size[] getHighResolutionOutputSizes(int i);

        Range<Integer>[] getHighSpeedVideoFpsRanges();

        Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size);

        Size[] getHighSpeedVideoSizes();

        Size[] getHighSpeedVideoSizesFor(Range<Integer> range);

        Integer[] getOutputFormats();

        long getOutputMinFrameDuration(int i, Size size);

        Size[] getOutputSizes(int i);

        <T> Size[] getOutputSizes(Class<T> cls);

        StreamConfigurationMap unwrap();
    }

    public StreamConfigurationMapCompat(StreamConfigurationMap streamConfigurationMap, OutputSizesCorrector outputSizesCorrector) {
        outputSizesCorrector.getClass();
        this.outputSizesCorrector = outputSizesCorrector;
        this.tag = "StreamConfigurationMapCompat";
        this.cachedFormatOutputSizes = new LinkedHashMap();
        this.cachedFormatHighResolutionOutputSizes = new LinkedHashMap();
        this.cachedClassOutputSizes = new LinkedHashMap();
        this.impl = Build.VERSION.SDK_INT >= 34 ? new StreamConfigurationMapCompatApi34Impl(streamConfigurationMap) : new StreamConfigurationMapCompatBaseImpl(streamConfigurationMap);
    }

    public final Size[] getHighResolutionOutputSizes(int i) {
        if (this.cachedFormatHighResolutionOutputSizes.containsKey(Integer.valueOf(i))) {
            Size[] sizeArr = this.cachedFormatHighResolutionOutputSizes.get(Integer.valueOf(i));
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        Size[] highResolutionOutputSizes = this.impl.getHighResolutionOutputSizes(i);
        if (highResolutionOutputSizes != null && highResolutionOutputSizes.length != 0) {
            highResolutionOutputSizes = this.outputSizesCorrector.applyQuirks(highResolutionOutputSizes, i);
        }
        this.cachedFormatHighResolutionOutputSizes.put(Integer.valueOf(i), highResolutionOutputSizes);
        if (highResolutionOutputSizes != null) {
            return (Size[]) highResolutionOutputSizes.clone();
        }
        return null;
    }

    public final Range<Integer>[] getHighSpeedVideoFpsRanges() {
        return this.impl.getHighSpeedVideoFpsRanges();
    }

    public final Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size) {
        size.getClass();
        return this.impl.getHighSpeedVideoFpsRangesFor(size);
    }

    public final Size[] getHighSpeedVideoSizes() {
        return this.impl.getHighSpeedVideoSizes();
    }

    public final Size[] getHighSpeedVideoSizesFor(Range<Integer> range) {
        range.getClass();
        return this.impl.getHighSpeedVideoSizesFor(range);
    }

    public final Integer[] getOutputFormats() {
        return this.impl.getOutputFormats();
    }

    public final long getOutputMinFrameDuration(int i, Size size) {
        size.getClass();
        try {
            return this.impl.getOutputMinFrameDuration(i, size);
        } catch (RuntimeException e) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isWarnEnabled(Log.TAG)) {
                return 0L;
            }
            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Unable to get min frame duration for format = " + i + " and size = " + size, e);
            return 0L;
        }
    }

    public final Size[] getOutputSizes(int i) {
        Size[] outputSizes = null;
        if (this.cachedFormatOutputSizes.containsKey(Integer.valueOf(i))) {
            Size[] sizeArr = this.cachedFormatOutputSizes.get(Integer.valueOf(i));
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        try {
            outputSizes = this.impl.getOutputSizes(i);
        } catch (Throwable th) {
            Logger.w(this.tag, "Failed to get output sizes for " + i, th);
        }
        if (outputSizes != null && outputSizes.length != 0) {
            Size[] sizeArrApplyQuirks = this.outputSizesCorrector.applyQuirks(outputSizes, i);
            this.cachedFormatOutputSizes.put(Integer.valueOf(i), sizeArrApplyQuirks);
            return (Size[]) sizeArrApplyQuirks.clone();
        }
        Logger.w(this.tag, "Retrieved output sizes array is null or empty for format " + i);
        return outputSizes;
    }

    public final StreamConfigurationMap toStreamConfigurationMap() {
        return this.impl.unwrap();
    }

    public final <T> Size[] getOutputSizes(Class<T> cls) {
        cls.getClass();
        Size[] outputSizes = null;
        if (this.cachedClassOutputSizes.containsKey(cls)) {
            Size[] sizeArr = this.cachedClassOutputSizes.get(cls);
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        try {
            outputSizes = this.impl.getOutputSizes(cls);
        } catch (Throwable th) {
            Logger.w(this.tag, "Failed to get output sizes for " + cls, th);
        }
        if (outputSizes != null && outputSizes.length != 0) {
            Size[] sizeArrApplyQuirks = this.outputSizesCorrector.applyQuirks(outputSizes, cls);
            this.cachedClassOutputSizes.put(cls, sizeArrApplyQuirks);
            return (Size[]) sizeArrApplyQuirks.clone();
        }
        Logger.w(this.tag, "Retrieved output sizes array is null or empty for class " + cls);
        return outputSizes;
    }
}
