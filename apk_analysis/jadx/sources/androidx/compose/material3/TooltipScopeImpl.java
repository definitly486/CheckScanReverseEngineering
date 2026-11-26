package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.window.PopupPositionProvider;
import defpackage.bm3;
import defpackage.ll3;
import defpackage.ul2;
import defpackage.ux8;

/* JADX INFO: loaded from: classes2.dex */
public final class TooltipScopeImpl implements TooltipScope {
    public static final int $stable = 0;
    private final ll3<LayoutCoordinates> getAnchorBounds;
    private final PopupPositionProvider positionProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public TooltipScopeImpl(ll3<? extends LayoutCoordinates> ll3Var, PopupPositionProvider popupPositionProvider) {
        this.getAnchorBounds = ll3Var;
        this.positionProvider = popupPositionProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawCaret$lambda$0(bm3 bm3Var, TooltipScopeImpl tooltipScopeImpl, CacheDrawScope cacheDrawScope) {
        return (DrawResult) bm3Var.invoke(cacheDrawScope, tooltipScopeImpl.getAnchorBounds.invoke());
    }

    @Override // androidx.compose.material3.TooltipScope
    @ul2
    public /* synthetic */ Modifier drawCaret(Modifier modifier, bm3 bm3Var) {
        return DrawModifierKt.drawWithCache(modifier, new ux8(0, bm3Var, this));
    }

    public final ll3<LayoutCoordinates> getGetAnchorBounds() {
        return this.getAnchorBounds;
    }

    public final PopupPositionProvider getPositionProvider() {
        return this.positionProvider;
    }

    @Override // androidx.compose.material3.TooltipScope
    public LayoutCoordinates obtainAnchorBounds(MeasureScope measureScope) {
        return this.getAnchorBounds.invoke();
    }

    @Override // androidx.compose.material3.TooltipScope
    public PopupPositionProvider obtainPositionProvider() {
        return this.positionProvider;
    }
}
