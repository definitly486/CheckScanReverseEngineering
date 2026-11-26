package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.b36;
import defpackage.bm3;

/* JADX INFO: loaded from: classes2.dex */
public final class DraggableAnchorsKt {
    public static final String ConfirmValueChangeDeprecated = "confirmValueChange is deprecated without replacement. Rather than relying on a callback to veto state changes, the anchor set should not include disallowed anchors. See androidx.compose.foundation.samples.AnchoredDraggableDynamicAnchorsSample for an example of using dynamic anchors over confirmValueChange.";

    public static final <T> Modifier draggableAnchorsV2(Modifier modifier, androidx.compose.foundation.gestures.AnchoredDraggableState<T> anchoredDraggableState, Orientation orientation, bm3<? super IntSize, ? super Constraints, ? extends b36<? extends androidx.compose.foundation.gestures.DraggableAnchors<T>, ? extends T>> bm3Var) {
        return modifier.then(new DraggableAnchorsElementV2(anchoredDraggableState, bm3Var, orientation));
    }
}
