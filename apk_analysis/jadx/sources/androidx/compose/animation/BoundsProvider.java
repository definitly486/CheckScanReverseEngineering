package androidx.compose.animation;

import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes.dex */
public interface BoundsProvider {
    Rect calculateAlternativeTargetBounds(Rect rect);

    Rect getLastBoundsInSharedTransitionScope();
}
