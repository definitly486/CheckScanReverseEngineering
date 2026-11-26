package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface IntervalList<T> {

    public static final class Interval<T> {
        public static final int $stable = 0;
        private final int size;
        private final int startIndex;
        private final T value;

        public Interval(int i, int i2, T t) {
            this.startIndex = i;
            this.size = i2;
            this.value = t;
            if (!(i >= 0)) {
                InlineClassHelperKt.throwIllegalArgumentException("startIndex should be >= 0");
            }
            if (i2 > 0) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("size should be > 0");
        }

        public final int getSize() {
            return this.size;
        }

        public final int getStartIndex() {
            return this.startIndex;
        }

        public final T getValue() {
            return this.value;
        }
    }

    static /* synthetic */ void forEach$default(IntervalList intervalList, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: forEach");
            return;
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = intervalList.getSize() - 1;
        }
        intervalList.forEach(i, i2, nl3Var);
    }

    void forEach(int i, int i2, nl3<? super Interval<? extends T>, j59> nl3Var);

    Interval<T> get(int i);

    int getSize();
}
