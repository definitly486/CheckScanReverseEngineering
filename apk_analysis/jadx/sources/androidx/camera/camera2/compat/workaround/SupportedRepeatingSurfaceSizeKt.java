package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.RepeatingStreamConstraintForVideoRecordingQuirk;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.media3.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class SupportedRepeatingSurfaceSizeKt {
    private static final Size MINI_PREVIEW_SIZE_HUAWEI_MATE_9 = new Size(320, PsExtractor.VIDEO_STREAM_MASK);
    private static final Comparator<Size> SIZE_COMPARATOR = new CompareSizesByArea();

    public static final Size[] getSupportedRepeatingSurfaceSizes(Size[] sizeArr) {
        sizeArr.getClass();
        if (((RepeatingStreamConstraintForVideoRecordingQuirk) DeviceQuirks.INSTANCE.get(RepeatingStreamConstraintForVideoRecordingQuirk.class)) == null) {
            return sizeArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Size size : sizeArr) {
            if (SIZE_COMPARATOR.compare(size, MINI_PREVIEW_SIZE_HUAWEI_MATE_9) >= 0) {
                arrayList.add(size);
            }
        }
        return (Size[]) arrayList.toArray(new Size[0]);
    }
}
