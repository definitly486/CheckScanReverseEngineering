package androidx.compose.ui.node;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes2.dex */
public enum Invalidation {
    LookaheadMeasurement,
    LookaheadPlacement,
    Measurement,
    Placement;

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

    public static g03<Invalidation> getEntries() {
        return $ENTRIES;
    }
}
