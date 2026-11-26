package androidx.compose.foundation.pager;

import androidx.compose.foundation.internal.InlineClassHelperKt;

/* JADX INFO: loaded from: classes.dex */
public interface PagerSnapDistance {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final PagerSnapDistance atMost(int i) {
            if (i < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("pages should be greater than or equal to 0. You have used " + i + '.');
            }
            return new PagerSnapDistanceMaxPages(i);
        }
    }

    int calculateTargetPage(int i, int i2, float f, int i3, int i4);
}
