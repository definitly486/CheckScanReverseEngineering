package androidx.camera.core.internal;

import android.media.MediaCodec;
import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import defpackage.aa4;
import defpackage.jh2;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class HighSpeedFpsModifier {
    private static final Companion Companion = new Companion(null);
    private static final int PREVIEW_ONLY_FPS_LOWER = 30;
    private static final String TAG = "HighSpeedFpsModifier";

    private final boolean hasVideoSurface(CaptureConfig.Builder builder) {
        Set<DeferrableSurface> surfaces = builder.getSurfaces();
        surfaces.getClass();
        Set<DeferrableSurface> set = surfaces;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (DeferrableSurface deferrableSurface : set) {
            deferrableSurface.getClass();
            if (isVideoSurface(deferrableSurface)) {
                return true;
            }
        }
        return false;
    }

    private final boolean isHighSpeedFixedFps(Range<Integer> range) {
        return ((Number) range.getUpper()).intValue() >= 120 && aa4.e(range.getLower(), range.getUpper());
    }

    private final boolean isVideoSurface(DeferrableSurface deferrableSurface) {
        return aa4.e(deferrableSurface.getContainerClass(), MediaCodec.class);
    }

    private final Range<Integer> toPreviewOnlyRange(Range<Integer> range) {
        Range<Integer> range2 = new Range<>(30, range.getUpper());
        Logger.d(TAG, "Modified high-speed FPS range from " + range + " to " + range2);
        return range2;
    }

    public final void modifyFpsForPreviewOnlyRepeating(Collection<? extends SessionConfig.OutputConfig> collection, CaptureConfig.Builder builder) {
        Range<Integer> expectedFrameRateRange;
        collection.getClass();
        builder.getClass();
        if (collection.size() != 2 || !hasVideoSurface(collection) || hasVideoSurface(builder) || (expectedFrameRateRange = builder.getExpectedFrameRateRange()) == null) {
            return;
        }
        if (!isHighSpeedFixedFps(expectedFrameRateRange)) {
            expectedFrameRateRange = null;
        }
        if (expectedFrameRateRange != null) {
            builder.setExpectedFrameRateRange(toPreviewOnlyRange(expectedFrameRateRange));
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    private final boolean hasVideoSurface(Collection<? extends SessionConfig.OutputConfig> collection) {
        Collection<? extends SessionConfig.OutputConfig> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return false;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            DeferrableSurface surface = ((SessionConfig.OutputConfig) it.next()).getSurface();
            surface.getClass();
            if (isVideoSurface(surface)) {
                return true;
            }
        }
        return false;
    }
}
