package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.IntSize;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInViewNodeKt {
    private static final boolean DEBUG = false;
    private static final float MinScrollThreshold = 0.5f;
    private static final String TAG = "ContentInViewModifier";
    private static final long UnspecifiedIntSize = IntSize.m9208constructorimpl(-1);

    /* JADX INFO: renamed from: takeOrElse-viCIZxY, reason: not valid java name */
    private static final long m1470takeOrElseviCIZxY(long j, ll3<IntSize> ll3Var) {
        return IntSize.m9211equalsimpl0(j, UnspecifiedIntSize) ? ll3Var.invoke().m9217unboximpl() : j;
    }
}
