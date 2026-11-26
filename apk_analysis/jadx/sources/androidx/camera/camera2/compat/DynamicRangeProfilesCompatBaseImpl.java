package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import androidx.core.util.Preconditions;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.l1;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangeProfilesCompatBaseImpl implements DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl {
    public static final Companion Companion = new Companion(null);
    private static final DynamicRangeProfilesCompat COMPAT_INSTANCE = new DynamicRangeProfilesCompat(new DynamicRangeProfilesCompatBaseImpl());
    private static final Set<DynamicRange> SDR_ONLY = l1.f(DynamicRange.SDR);

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set<DynamicRange> getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        Preconditions.checkArgument(aa4.e(DynamicRange.SDR, dynamicRange), "DynamicRange is not supported: " + dynamicRange);
        return SDR_ONLY;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set<DynamicRange> getSupportedDynamicRanges() {
        return SDR_ONLY;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public boolean isExtraLatencyPresent(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        Preconditions.checkArgument(aa4.e(DynamicRange.SDR, dynamicRange), "DynamicRange is not supported: " + dynamicRange);
        return false;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public DynamicRangeProfiles unwrap() {
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final DynamicRangeProfilesCompat getCOMPAT_INSTANCE() {
            return DynamicRangeProfilesCompatBaseImpl.COMPAT_INSTANCE;
        }

        private Companion() {
        }
    }
}
