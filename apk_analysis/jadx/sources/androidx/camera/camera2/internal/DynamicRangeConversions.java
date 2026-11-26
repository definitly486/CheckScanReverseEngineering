package androidx.camera.camera2.internal;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import defpackage.u96;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangeConversions {
    private static final Map<DynamicRange, List<Long>> DR_TO_PROFILE_MAP;
    public static final DynamicRangeConversions INSTANCE = new DynamicRangeConversions();
    private static final Map<Long, DynamicRange> PROFILE_TO_DR_MAP;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        PROFILE_TO_DR_MAP = linkedHashMap;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DR_TO_PROFILE_MAP = linkedHashMap2;
        DynamicRange dynamicRange = DynamicRange.SDR;
        linkedHashMap.put(1L, dynamicRange);
        linkedHashMap2.put(dynamicRange, u96.h(1L));
        linkedHashMap.put(2L, DynamicRange.HLG_10_BIT);
        linkedHashMap2.put(linkedHashMap.get(2L), u96.h(2L));
        DynamicRange dynamicRange2 = DynamicRange.HDR10_10_BIT;
        linkedHashMap.put(4L, dynamicRange2);
        linkedHashMap2.put(dynamicRange2, u96.h(4L));
        DynamicRange dynamicRange3 = DynamicRange.HDR10_PLUS_10_BIT;
        linkedHashMap.put(8L, dynamicRange3);
        linkedHashMap2.put(dynamicRange3, u96.h(8L));
        List<Long> listI = u96.i(64L, 128L, 16L, 32L);
        Iterator<Long> it = listI.iterator();
        while (it.hasNext()) {
            PROFILE_TO_DR_MAP.put(Long.valueOf(it.next().longValue()), DynamicRange.DOLBY_VISION_10_BIT);
        }
        DR_TO_PROFILE_MAP.put(DynamicRange.DOLBY_VISION_10_BIT, listI);
        List<Long> listI2 = u96.i(1024L, 2048L, 256L, 512L);
        Iterator<Long> it2 = listI2.iterator();
        while (it2.hasNext()) {
            PROFILE_TO_DR_MAP.put(Long.valueOf(it2.next().longValue()), DynamicRange.DOLBY_VISION_8_BIT);
        }
        DR_TO_PROFILE_MAP.put(DynamicRange.DOLBY_VISION_8_BIT, listI2);
    }

    private DynamicRangeConversions() {
    }

    public final Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange, DynamicRangeProfiles dynamicRangeProfiles) {
        dynamicRange.getClass();
        dynamicRangeProfiles.getClass();
        List<Long> list = DR_TO_PROFILE_MAP.get(dynamicRange);
        if (list == null) {
            return null;
        }
        Set<Long> supportedProfiles = dynamicRangeProfiles.getSupportedProfiles();
        supportedProfiles.getClass();
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if (supportedProfiles.contains(Long.valueOf(jLongValue))) {
                return Long.valueOf(jLongValue);
            }
        }
        return null;
    }

    public final DynamicRange profileToDynamicRange(long j) {
        return PROFILE_TO_DR_MAP.get(Long.valueOf(j));
    }
}
