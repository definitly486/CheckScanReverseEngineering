package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
public interface BoxScope {
    Modifier align(Modifier modifier, Alignment alignment);

    Modifier matchParentSize(Modifier modifier);
}
