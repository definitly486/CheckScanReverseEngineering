package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Anchor;
import defpackage.av;

/* JADX INFO: loaded from: classes2.dex */
public final class GapAnchorKt {
    public static final GapAnchor asGapAnchor(Anchor anchor) {
        GapAnchor gapAnchor = anchor instanceof GapAnchor ? (GapAnchor) anchor : null;
        if (gapAnchor != null) {
            return gapAnchor;
        }
        throw av.b("Inconsistent composition");
    }
}
