package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;
import defpackage.ad2;
import defpackage.xy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class QualitySelector {
    public static final QualitySelector NONE = new QualitySelector(Collections.EMPTY_LIST, FallbackStrategy.NONE);
    private static final String TAG = "QualitySelector";
    private final FallbackStrategy mFallbackStrategy;
    private final List<Quality> mPreferredQualityList;

    public QualitySelector(List<Quality> list, FallbackStrategy fallbackStrategy) {
        this.mPreferredQualityList = Collections.unmodifiableList(new ArrayList(list));
        this.mFallbackStrategy = fallbackStrategy;
    }

    private void addByFallbackStrategy(List<Quality> list, Set<Quality> set) {
        if (list.isEmpty() || set.containsAll(list)) {
            return;
        }
        Logger.d(TAG, "Select quality by fallbackStrategy = " + this.mFallbackStrategy);
        FallbackStrategy fallbackStrategy = this.mFallbackStrategy;
        if (fallbackStrategy == FallbackStrategy.NONE) {
            return;
        }
        Preconditions.checkState(fallbackStrategy instanceof FallbackStrategy.RuleStrategy, "Currently only support type RuleStrategy");
        FallbackStrategy.RuleStrategy ruleStrategy = (FallbackStrategy.RuleStrategy) this.mFallbackStrategy;
        List<Quality> sortedQualities = Quality.getSortedQualities();
        Quality fallbackQuality = ruleStrategy.getFallbackQuality() == Quality.HIGHEST ? sortedQualities.get(0) : ruleStrategy.getFallbackQuality() == Quality.LOWEST ? (Quality) xy.d(1, sortedQualities) : ruleStrategy.getFallbackQuality();
        Preconditions.checkState(sortedQualities.indexOf(fallbackQuality) != -1);
        ArrayList arrayList = new ArrayList();
        for (int i = r4 - 1; i >= 0; i--) {
            Quality quality = sortedQualities.get(i);
            if (list.contains(quality)) {
                arrayList.add(quality);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = r4 + 1; i2 < sortedQualities.size(); i2++) {
            Quality quality2 = sortedQualities.get(i2);
            if (list.contains(quality2)) {
                arrayList2.add(quality2);
            }
        }
        Logger.d(TAG, "sizeSortedQualities = " + sortedQualities + ", fallback quality = " + fallbackQuality + ", largerQualities = " + arrayList + ", smallerQualities = " + arrayList2);
        int fallbackRule = ruleStrategy.getFallbackRule();
        if (fallbackRule != 0) {
            if (fallbackRule == 1) {
                set.addAll(arrayList);
                set.addAll(arrayList2);
                return;
            }
            if (fallbackRule == 2) {
                set.addAll(arrayList);
                return;
            }
            if (fallbackRule == 3) {
                set.addAll(arrayList2);
                set.addAll(arrayList);
            } else if (fallbackRule == 4) {
                set.addAll(arrayList2);
            } else {
                ad2.e(this.mFallbackStrategy, "Unhandled fallback strategy: ");
            }
        }
    }

    private static void checkQualityConstantsOrThrow(List<Quality> list) {
        for (Quality quality : list) {
            Preconditions.checkArgument(Quality.containsQuality(quality), "qualities contain invalid quality: " + quality);
        }
    }

    public static QualitySelector from(Quality quality, FallbackStrategy fallbackStrategy) {
        Preconditions.checkNotNull(quality, "quality cannot be null");
        Preconditions.checkNotNull(fallbackStrategy, "fallbackStrategy cannot be null");
        checkQualityConstantsOrThrow(quality);
        return new QualitySelector(Collections.singletonList(quality), fallbackStrategy);
    }

    public static QualitySelector fromOrderedList(List<Quality> list, FallbackStrategy fallbackStrategy) {
        Preconditions.checkNotNull(list, "qualities cannot be null");
        Preconditions.checkNotNull(fallbackStrategy, "fallbackStrategy cannot be null");
        Preconditions.checkArgument(!list.isEmpty(), "qualities cannot be empty");
        checkQualityConstantsOrThrow(list);
        return new QualitySelector(list, fallbackStrategy);
    }

    public static Map<Quality, Size> getQualityToResolutionMap(VideoCapabilities videoCapabilities, DynamicRange dynamicRange) {
        HashMap map = new HashMap();
        for (Quality quality : videoCapabilities.getSupportedQualities(dynamicRange)) {
            Size resolution = videoCapabilities.getResolution(quality, dynamicRange);
            Objects.requireNonNull(resolution);
            map.put(quality, resolution);
        }
        return map;
    }

    public static Size getResolution(CameraInfo cameraInfo, Quality quality) {
        checkQualityConstantsOrThrow(quality);
        return Recorder.getVideoCapabilities(cameraInfo).getResolution(quality, DynamicRange.SDR);
    }

    @Deprecated
    public static List<Quality> getSupportedQualities(CameraInfo cameraInfo) {
        return Recorder.getVideoCapabilities(cameraInfo).getSupportedQualities(DynamicRange.SDR);
    }

    @Deprecated
    public static boolean isQualitySupported(CameraInfo cameraInfo, Quality quality) {
        return Recorder.getVideoCapabilities(cameraInfo).isQualitySupported(quality, DynamicRange.SDR);
    }

    public List<Quality> getPrioritizedQualities(List<Quality> list) {
        if (list.isEmpty()) {
            Logger.w(TAG, "No supported quality on the device.");
            return new ArrayList();
        }
        Logger.d(TAG, "supportedQualities = " + list);
        Set<Quality> linkedHashSet = new LinkedHashSet<>();
        for (Quality quality : this.mPreferredQualityList) {
            if (quality == Quality.HIGHEST) {
                linkedHashSet.addAll(list);
                break;
            }
            if (quality == Quality.LOWEST) {
                ArrayList arrayList = new ArrayList(list);
                Collections.reverse(arrayList);
                linkedHashSet.addAll(arrayList);
                break;
            }
            if (list.contains(quality)) {
                linkedHashSet.add(quality);
            } else {
                Logger.w(TAG, "quality is not supported and will be ignored: " + quality);
            }
        }
        addByFallbackStrategy(list, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    public String toString() {
        return "QualitySelector{preferredQualities=" + this.mPreferredQualityList + ", fallbackStrategy=" + this.mFallbackStrategy + "}";
    }

    public static QualitySelector from(Quality quality) {
        return from(quality, FallbackStrategy.NONE);
    }

    public static QualitySelector fromOrderedList(List<Quality> list) {
        return fromOrderedList(list, FallbackStrategy.NONE);
    }

    private static void checkQualityConstantsOrThrow(Quality quality) {
        Preconditions.checkArgument(Quality.containsQuality(quality), "Invalid quality: " + quality);
    }
}
