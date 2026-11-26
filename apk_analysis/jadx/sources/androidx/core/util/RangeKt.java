package androidx.core.util;

import android.util.Range;
import defpackage.om1;

/* JADX INFO: loaded from: classes2.dex */
public final class RangeKt {
    public static final <T extends Comparable<? super T>> Range<T> and(Range<T> range, Range<T> range2) {
        return range.intersect(range2);
    }

    public static final <T extends Comparable<? super T>> Range<T> plus(Range<T> range, T t) {
        return range.extend(t);
    }

    public static final <T extends Comparable<? super T>> Range<T> rangeTo(T t, T t2) {
        return new Range<>(t, t2);
    }

    public static final <T extends Comparable<? super T>> om1<T> toClosedRange(final Range<T> range) {
        return (om1<T>) new om1<T>() { // from class: androidx.core.util.RangeKt.toClosedRange.1
            /* JADX WARN: Incorrect types in method signature: (TT;)Z */
            public boolean contains(Comparable comparable) {
                comparable.getClass();
                return comparable.compareTo(getStart()) >= 0 && comparable.compareTo(getEndInclusive()) <= 0;
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // defpackage.om1
            public Comparable getEndInclusive() {
                return range.getUpper();
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // defpackage.om1
            public Comparable getStart() {
                return range.getLower();
            }

            @Override // defpackage.om1
            public /* bridge */ boolean isEmpty() {
                return om1.a.a(this);
            }
        };
    }

    public static final <T extends Comparable<? super T>> Range<T> toRange(om1<T> om1Var) {
        return new Range<>(om1Var.getStart(), om1Var.getEndInclusive());
    }

    public static final <T extends Comparable<? super T>> Range<T> plus(Range<T> range, Range<T> range2) {
        return range.extend(range2);
    }
}
