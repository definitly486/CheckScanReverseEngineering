package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
public final class NearestRangeKeyIndexMap implements LazyLayoutKeyIndexMap {
    public static final int $stable = 8;
    private final Object[] keys;
    private final int keysStartIndex;
    private final ObjectIntMap<Object> map;

    public NearestRangeKeyIndexMap(y74 y74Var, LazyLayoutIntervalContent<?> lazyLayoutIntervalContent) {
        IntervalList<Interval> intervals = lazyLayoutIntervalContent.getIntervals();
        final int i = y74Var.b;
        if (i < 0) {
            InlineClassHelperKt.throwIllegalStateException("negative nearestRange.first");
        }
        final int iMin = Math.min(y74Var.c, intervals.getSize() - 1);
        if (iMin < i) {
            this.map = ObjectIntMapKt.emptyObjectIntMap();
            this.keys = new Object[0];
            this.keysStartIndex = 0;
        } else {
            int i2 = (iMin - i) + 1;
            this.keys = new Object[i2];
            this.keysStartIndex = i;
            final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(i2);
            intervals.forEach(i, iMin, new nl3() { // from class: bm5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return NearestRangeKeyIndexMap.lambda$1$0(i, iMin, mutableObjectIntMap, this, (IntervalList.Interval) obj);
                }
            });
            this.map = mutableObjectIntMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0035  */
    public static final j59 lambda$1$0(int i, int i2, MutableObjectIntMap mutableObjectIntMap, NearestRangeKeyIndexMap nearestRangeKeyIndexMap, IntervalList.Interval interval) {
        Object defaultLazyLayoutKey;
        nl3<Integer, Object> key = ((LazyLayoutIntervalContent.Interval) interval.getValue()).getKey();
        int iMax = Math.max(i, interval.getStartIndex());
        int iMin = Math.min(i2, (interval.getSize() + interval.getStartIndex()) - 1);
        if (iMax <= iMin) {
            while (true) {
                if (key == null) {
                    defaultLazyLayoutKey = Lazy_androidKt.getDefaultLazyLayoutKey(iMax);
                } else {
                    defaultLazyLayoutKey = key.invoke(Integer.valueOf(iMax - interval.getStartIndex()));
                    if (defaultLazyLayoutKey == null) {
                        defaultLazyLayoutKey = Lazy_androidKt.getDefaultLazyLayoutKey(iMax);
                    }
                }
                mutableObjectIntMap.set(defaultLazyLayoutKey, iMax);
                nearestRangeKeyIndexMap.keys[iMax - nearestRangeKeyIndexMap.keysStartIndex] = defaultLazyLayoutKey;
                if (iMax == iMin) {
                    break;
                }
                iMax++;
            }
        }
        return j59.a;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap
    public int getIndex(Object obj) {
        ObjectIntMap<Object> objectIntMap = this.map;
        int iFindKeyIndex = objectIntMap.findKeyIndex(obj);
        if (iFindKeyIndex >= 0) {
            return objectIntMap.values[iFindKeyIndex];
        }
        return -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap
    public Object getKey(int i) {
        Object[] objArr = this.keys;
        int i2 = i - this.keysStartIndex;
        if (i2 < 0 || i2 >= objArr.length) {
            return null;
        }
        return objArr[i2];
    }
}
