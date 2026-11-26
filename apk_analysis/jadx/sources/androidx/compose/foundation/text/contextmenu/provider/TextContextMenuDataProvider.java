package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;

/* JADX INFO: loaded from: classes.dex */
public interface TextContextMenuDataProvider {
    Rect contentBounds(LayoutCoordinates layoutCoordinates);

    TextContextMenuData data();

    /* JADX INFO: renamed from: position-tuRUvjQ */
    long mo2650positiontuRUvjQ(LayoutCoordinates layoutCoordinates);
}
