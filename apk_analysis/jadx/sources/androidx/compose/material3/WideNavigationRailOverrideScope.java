package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailOverrideScope {
    public static final int $stable = 8;
    private final Arrangement.Vertical arrangement;
    private final WideNavigationRailColors colors;
    private final bm3<Composer, Integer, j59> content;
    private final bm3<Composer, Integer, j59> header;
    private final Modifier modifier;
    private final Shape shape;
    private final WideNavigationRailState state;
    private final WindowInsets windowInsets;

    /* JADX WARN: Multi-variable type inference failed */
    public WideNavigationRailOverrideScope(Modifier modifier, WideNavigationRailState wideNavigationRailState, Shape shape, WideNavigationRailColors wideNavigationRailColors, bm3<? super Composer, ? super Integer, j59> bm3Var, WindowInsets windowInsets, Arrangement.Vertical vertical, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
        this.modifier = modifier;
        this.state = wideNavigationRailState;
        this.shape = shape;
        this.colors = wideNavigationRailColors;
        this.header = bm3Var;
        this.windowInsets = windowInsets;
        this.arrangement = vertical;
        this.content = bm3Var2;
    }

    public final Arrangement.Vertical getArrangement() {
        return this.arrangement;
    }

    public final WideNavigationRailColors getColors() {
        return this.colors;
    }

    public final bm3<Composer, Integer, j59> getContent() {
        return this.content;
    }

    public final bm3<Composer, Integer, j59> getHeader() {
        return this.header;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final Shape getShape() {
        return this.shape;
    }

    public final WideNavigationRailState getState() {
        return this.state;
    }

    public final WindowInsets getWindowInsets() {
        return this.windowInsets;
    }
}
