package androidx.camera.core.impl;

import android.util.Size;
import defpackage.qn1;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SizeFilteredEncoderProfilesProvider implements EncoderProfilesProvider {
    private final Map<Integer, EncoderProfilesProxy> encoderProfilesCache;
    private final EncoderProfilesProvider provider;
    private final List<Size> supportedSizes;

    public SizeFilteredEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, List<Size> list) {
        encoderProfilesProvider.getClass();
        list.getClass();
        this.provider = encoderProfilesProvider;
        this.supportedSizes = list;
        this.encoderProfilesCache = new LinkedHashMap();
    }

    private final EncoderProfilesProxy findFirstAvailableProfile(List<Integer> list) {
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            EncoderProfilesProxy all = getAll(it.next().intValue());
            if (all != null) {
                return all;
            }
        }
        return null;
    }

    private final boolean isResolutionSupported(EncoderProfilesProxy encoderProfilesProxy) {
        if (this.supportedSizes.isEmpty() || encoderProfilesProxy.getVideoProfiles().isEmpty()) {
            return false;
        }
        return this.supportedSizes.contains(encoderProfilesProxy.getVideoProfiles().get(0).getResolution());
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        EncoderProfilesProxy encoderProfilesProxyFindFirstAvailableProfile = null;
        if (!this.provider.hasProfile(i)) {
            return null;
        }
        if (this.encoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return this.encoderProfilesCache.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy all = this.provider.getAll(i);
        if (all != null && !isResolutionSupported(all)) {
            if (i == 0) {
                List<Integer> list = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW;
                list.getClass();
                encoderProfilesProxyFindFirstAvailableProfile = findFirstAvailableProfile(qn1.j0(list));
            } else if (i == 1) {
                List<Integer> list2 = EncoderProfilesProvider.QUALITY_HIGH_TO_LOW;
                list2.getClass();
                encoderProfilesProxyFindFirstAvailableProfile = findFirstAvailableProfile(list2);
            }
            all = encoderProfilesProxyFindFirstAvailableProfile;
        }
        this.encoderProfilesCache.put(Integer.valueOf(i), all);
        return all;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return getAll(i) != null;
    }
}
