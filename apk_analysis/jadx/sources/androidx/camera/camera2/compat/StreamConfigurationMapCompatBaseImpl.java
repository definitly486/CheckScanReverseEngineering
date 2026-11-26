package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.Logger;
import defpackage.aq5;

/* JADX INFO: loaded from: classes.dex */
public class StreamConfigurationMapCompatBaseImpl implements StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl {
    private final StreamConfigurationMap streamConfigurationMap;

    public StreamConfigurationMapCompatBaseImpl(StreamConfigurationMap streamConfigurationMap) {
        this.streamConfigurationMap = streamConfigurationMap;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighResolutionOutputSizes(int i) {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighResolutionOutputSizes(i);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Range<Integer>[] getHighSpeedVideoFpsRanges() {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoFpsRanges();
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size) {
        size.getClass();
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoFpsRangesFor(size);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighSpeedVideoSizes() {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoSizes();
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighSpeedVideoSizesFor(Range<Integer> range) {
        range.getClass();
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getHighSpeedVideoSizesFor(range);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Integer[] getOutputFormats() {
        int[] outputFormats;
        try {
            StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
            outputFormats = streamConfigurationMap != null ? streamConfigurationMap.getOutputFormats() : null;
        } catch (IllegalArgumentException e) {
            Logger.w("StreamConfigurationMapCompatBaseImpl", "Failed to get output formats from StreamConfigurationMap", e);
        } catch (NullPointerException e2) {
            Logger.w("StreamConfigurationMapCompatBaseImpl", "Failed to get output formats from StreamConfigurationMap", e2);
        }
        if (outputFormats != null) {
            return aq5.B(outputFormats);
        }
        return null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public long getOutputMinFrameDuration(int i, Size size) {
        size.getClass();
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputMinFrameDuration(i, size);
        }
        return 0L;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public <T> Size[] getOutputSizes(Class<T> cls) {
        Size[] outputSizes;
        cls.getClass();
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        return (streamConfigurationMap == null || (outputSizes = streamConfigurationMap.getOutputSizes(cls)) == null) ? new Size[0] : outputSizes;
    }

    public final StreamConfigurationMap getStreamConfigurationMap() {
        return this.streamConfigurationMap;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public StreamConfigurationMap unwrap() {
        return this.streamConfigurationMap;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getOutputSizes(int i) {
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMap;
        if (streamConfigurationMap != null) {
            return streamConfigurationMap.getOutputSizes(i);
        }
        return null;
    }
}
