package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import defpackage.eg;
import defpackage.ox2;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangeProfilesCompatApi33Impl implements DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl {
    private final DynamicRangeProfiles dynamicRangeProfiles;

    public DynamicRangeProfilesCompatApi33Impl(DynamicRangeProfiles dynamicRangeProfiles) {
        dynamicRangeProfiles.getClass();
        this.dynamicRangeProfiles = dynamicRangeProfiles;
    }

    private final Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange) {
        return DynamicRangeConversions.INSTANCE.dynamicRangeToFirstSupportedProfile(dynamicRange, this.dynamicRangeProfiles);
    }

    private final Set<DynamicRange> profileSetToDynamicRangeSet(Set<Long> set) {
        if (set.isEmpty()) {
            return ox2.b;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Long> it = set.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRangeProfileToDynamicRange = profileToDynamicRange(it.next().longValue());
            if (dynamicRangeProfileToDynamicRange != null) {
                linkedHashSet.add(dynamicRangeProfileToDynamicRange);
            }
        }
        Set<DynamicRange> setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        setUnmodifiableSet.getClass();
        return setUnmodifiableSet;
    }

    private final DynamicRange profileToDynamicRange(long j) {
        DynamicRange dynamicRangeProfileToDynamicRange = DynamicRangeConversions.INSTANCE.profileToDynamicRange(j);
        if (dynamicRangeProfileToDynamicRange == null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Dynamic range profile cannot be converted to a DynamicRange object: " + j);
            }
        }
        return dynamicRangeProfileToDynamicRange;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set<DynamicRange> getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        Long lDynamicRangeToFirstSupportedProfile = dynamicRangeToFirstSupportedProfile(dynamicRange);
        if (lDynamicRangeToFirstSupportedProfile == null) {
            eg.d(dynamicRange, "DynamicRange is not supported: ");
            return null;
        }
        Set<Long> profileCaptureRequestConstraints = this.dynamicRangeProfiles.getProfileCaptureRequestConstraints(lDynamicRangeToFirstSupportedProfile.longValue());
        profileCaptureRequestConstraints.getClass();
        return profileSetToDynamicRangeSet(profileCaptureRequestConstraints);
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set<DynamicRange> getSupportedDynamicRanges() {
        Set<Long> supportedProfiles = this.dynamicRangeProfiles.getSupportedProfiles();
        supportedProfiles.getClass();
        return profileSetToDynamicRangeSet(supportedProfiles);
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public boolean isExtraLatencyPresent(DynamicRange dynamicRange) {
        dynamicRange.getClass();
        Long lDynamicRangeToFirstSupportedProfile = dynamicRangeToFirstSupportedProfile(dynamicRange);
        if (lDynamicRangeToFirstSupportedProfile != null) {
            return this.dynamicRangeProfiles.isExtraLatencyPresent(lDynamicRangeToFirstSupportedProfile.longValue());
        }
        eg.d(dynamicRange, "DynamicRange is not supported: ");
        return false;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public DynamicRangeProfiles unwrap() {
        return this.dynamicRangeProfiles;
    }
}
