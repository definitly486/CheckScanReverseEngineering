package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.window.PopupPositionProvider;
import defpackage.bm3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface TooltipScope {
    @ul2
    /* synthetic */ Modifier drawCaret(Modifier modifier, bm3 bm3Var);

    LayoutCoordinates obtainAnchorBounds(MeasureScope measureScope);

    PopupPositionProvider obtainPositionProvider();
}
