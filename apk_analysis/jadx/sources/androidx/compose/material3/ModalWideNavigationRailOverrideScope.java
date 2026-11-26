package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalWideNavigationRailOverrideScope {
    public static final int $stable = 8;
    private final Arrangement.Vertical arrangement;
    private final Shape collapsedShape;
    private final WideNavigationRailColors colors;
    private final bm3<Composer, Integer, j59> content;
    private final float expandedHeaderTopPadding;
    private final ModalWideNavigationRailProperties expandedProperties;
    private final Shape expandedShape;
    private final bm3<Composer, Integer, j59> header;
    private final Modifier modifier;
    private final boolean shouldHideOnCollapse;
    private final WideNavigationRailState state;
    private final WindowInsets windowInsets;

    /* JADX WARN: Multi-variable type inference failed */
    private ModalWideNavigationRailOverrideScope(Modifier modifier, WideNavigationRailState wideNavigationRailState, boolean z, Shape shape, Shape shape2, WideNavigationRailColors wideNavigationRailColors, bm3<? super Composer, ? super Integer, j59> bm3Var, float f, WindowInsets windowInsets, Arrangement.Vertical vertical, ModalWideNavigationRailProperties modalWideNavigationRailProperties, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
        this.modifier = modifier;
        this.state = wideNavigationRailState;
        this.shouldHideOnCollapse = z;
        this.collapsedShape = shape;
        this.expandedShape = shape2;
        this.colors = wideNavigationRailColors;
        this.header = bm3Var;
        this.expandedHeaderTopPadding = f;
        this.windowInsets = windowInsets;
        this.arrangement = vertical;
        this.expandedProperties = modalWideNavigationRailProperties;
        this.content = bm3Var2;
    }

    public final Arrangement.Vertical getArrangement() {
        return this.arrangement;
    }

    public final Shape getCollapsedShape() {
        return this.collapsedShape;
    }

    public final WideNavigationRailColors getColors() {
        return this.colors;
    }

    public final bm3<Composer, Integer, j59> getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: getExpandedHeaderTopPadding-D9Ej5fM, reason: not valid java name */
    public final float m3631getExpandedHeaderTopPaddingD9Ej5fM() {
        return this.expandedHeaderTopPadding;
    }

    public final ModalWideNavigationRailProperties getExpandedProperties() {
        return this.expandedProperties;
    }

    public final Shape getExpandedShape() {
        return this.expandedShape;
    }

    public final bm3<Composer, Integer, j59> getHeader() {
        return this.header;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final boolean getShouldHideOnCollapse() {
        return this.shouldHideOnCollapse;
    }

    public final WideNavigationRailState getState() {
        return this.state;
    }

    public final WindowInsets getWindowInsets() {
        return this.windowInsets;
    }

    public /* synthetic */ ModalWideNavigationRailOverrideScope(Modifier modifier, WideNavigationRailState wideNavigationRailState, boolean z, Shape shape, Shape shape2, WideNavigationRailColors wideNavigationRailColors, bm3 bm3Var, float f, WindowInsets windowInsets, Arrangement.Vertical vertical, ModalWideNavigationRailProperties modalWideNavigationRailProperties, bm3 bm3Var2, jh2 jh2Var) {
        this(modifier, wideNavigationRailState, z, shape, shape2, wideNavigationRailColors, bm3Var, f, windowInsets, vertical, modalWideNavigationRailProperties, bm3Var2);
    }
}
