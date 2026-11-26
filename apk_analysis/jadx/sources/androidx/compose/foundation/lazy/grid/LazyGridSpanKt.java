package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridSpanKt {
    public static final long GridItemSpan(int i) {
        if (!(i > 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("The span value should be higher than 0");
        }
        return GridItemSpan.m2172constructorimpl(i);
    }
}
