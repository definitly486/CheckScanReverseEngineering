package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval;
import defpackage.bm3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyLayoutIntervalContent<Interval extends Interval> {
    public static final int $stable = 0;

    public interface Interval {
        default nl3<Integer, Object> getKey() {
            return null;
        }

        default nl3<Integer, Object> getType() {
            return new nl3() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval$type$1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke(((Number) obj).intValue());
                }

                public final Void invoke(int i) {
                    return null;
                }
            };
        }
    }

    public final Object getContentType(int i) {
        IntervalList.Interval<Interval> interval = getIntervals().get(i);
        return interval.getValue().getType().invoke(Integer.valueOf(i - interval.getStartIndex()));
    }

    public abstract IntervalList<Interval> getIntervals();

    public final int getItemCount() {
        return getIntervals().getSize();
    }

    public final Object getKey(int i) {
        Object objInvoke;
        IntervalList.Interval<Interval> interval = getIntervals().get(i);
        int startIndex = i - interval.getStartIndex();
        nl3<Integer, Object> key = interval.getValue().getKey();
        return (key == null || (objInvoke = key.invoke(Integer.valueOf(startIndex))) == null) ? Lazy_androidKt.getDefaultLazyLayoutKey(i) : objInvoke;
    }

    public final <T> T withInterval(int i, bm3<? super Integer, ? super Interval, ? extends T> bm3Var) {
        IntervalList.Interval<Interval> interval = getIntervals().get(i);
        return bm3Var.invoke(Integer.valueOf(i - interval.getStartIndex()), interval.getValue());
    }
}
