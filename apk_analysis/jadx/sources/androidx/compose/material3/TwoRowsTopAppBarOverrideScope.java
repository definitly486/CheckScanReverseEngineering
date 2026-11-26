package androidx.compose.material3;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TwoRowsTopAppBarOverrideScope {
    public static final int $stable = 0;
    private final dm3<RowScope, Composer, Integer, j59> actions;
    private final float collapsedHeight;
    private final TopAppBarColors colors;
    private final float expandedHeight;
    private final Modifier modifier;
    private final bm3<Composer, Integer, j59> navigationIcon;
    private final TopAppBarScrollBehavior scrollBehavior;
    private final bm3<Composer, Integer, j59> smallSubtitle;
    private final TextStyle smallSubtitleTextStyle;
    private final bm3<Composer, Integer, j59> smallTitle;
    private final TextStyle smallTitleTextStyle;
    private final bm3<Composer, Integer, j59> subtitle;
    private final TextStyle subtitleTextStyle;
    private final bm3<Composer, Integer, j59> title;
    private final float titleBottomPadding;
    private final Alignment.Horizontal titleHorizontalAlignment;
    private final TextStyle titleTextStyle;
    private final WindowInsets windowInsets;

    /* JADX WARN: Multi-variable type inference failed */
    private TwoRowsTopAppBarOverrideScope(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, TextStyle textStyle, float f, bm3<? super Composer, ? super Integer, j59> bm3Var2, TextStyle textStyle2, bm3<? super Composer, ? super Integer, j59> bm3Var3, TextStyle textStyle3, bm3<? super Composer, ? super Integer, j59> bm3Var4, TextStyle textStyle4, Alignment.Horizontal horizontal, bm3<? super Composer, ? super Integer, j59> bm3Var5, dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var, float f2, float f3, WindowInsets windowInsets, TopAppBarColors topAppBarColors, TopAppBarScrollBehavior topAppBarScrollBehavior) {
        this.modifier = modifier;
        this.title = bm3Var;
        this.titleTextStyle = textStyle;
        this.titleBottomPadding = f;
        this.smallTitle = bm3Var2;
        this.smallTitleTextStyle = textStyle2;
        this.subtitle = bm3Var3;
        this.subtitleTextStyle = textStyle3;
        this.smallSubtitle = bm3Var4;
        this.smallSubtitleTextStyle = textStyle4;
        this.titleHorizontalAlignment = horizontal;
        this.navigationIcon = bm3Var5;
        this.actions = dm3Var;
        this.collapsedHeight = f2;
        this.expandedHeight = f3;
        this.windowInsets = windowInsets;
        this.colors = topAppBarColors;
        this.scrollBehavior = topAppBarScrollBehavior;
    }

    public final dm3<RowScope, Composer, Integer, j59> getActions() {
        return this.actions;
    }

    /* JADX INFO: renamed from: getCollapsedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4308getCollapsedHeightD9Ej5fM() {
        return this.collapsedHeight;
    }

    public final TopAppBarColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: getExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4309getExpandedHeightD9Ej5fM() {
        return this.expandedHeight;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final bm3<Composer, Integer, j59> getNavigationIcon() {
        return this.navigationIcon;
    }

    public final TopAppBarScrollBehavior getScrollBehavior() {
        return this.scrollBehavior;
    }

    public final bm3<Composer, Integer, j59> getSmallSubtitle() {
        return this.smallSubtitle;
    }

    public final TextStyle getSmallSubtitleTextStyle() {
        return this.smallSubtitleTextStyle;
    }

    public final bm3<Composer, Integer, j59> getSmallTitle() {
        return this.smallTitle;
    }

    public final TextStyle getSmallTitleTextStyle() {
        return this.smallTitleTextStyle;
    }

    public final bm3<Composer, Integer, j59> getSubtitle() {
        return this.subtitle;
    }

    public final TextStyle getSubtitleTextStyle() {
        return this.subtitleTextStyle;
    }

    public final bm3<Composer, Integer, j59> getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: getTitleBottomPadding-D9Ej5fM, reason: not valid java name */
    public final float m4310getTitleBottomPaddingD9Ej5fM() {
        return this.titleBottomPadding;
    }

    public final Alignment.Horizontal getTitleHorizontalAlignment() {
        return this.titleHorizontalAlignment;
    }

    public final TextStyle getTitleTextStyle() {
        return this.titleTextStyle;
    }

    public final WindowInsets getWindowInsets() {
        return this.windowInsets;
    }

    public /* synthetic */ TwoRowsTopAppBarOverrideScope(Modifier modifier, bm3 bm3Var, TextStyle textStyle, float f, bm3 bm3Var2, TextStyle textStyle2, bm3 bm3Var3, TextStyle textStyle3, bm3 bm3Var4, TextStyle textStyle4, Alignment.Horizontal horizontal, bm3 bm3Var5, dm3 dm3Var, float f2, float f3, WindowInsets windowInsets, TopAppBarColors topAppBarColors, TopAppBarScrollBehavior topAppBarScrollBehavior, jh2 jh2Var) {
        this(modifier, bm3Var, textStyle, f, bm3Var2, textStyle2, bm3Var3, textStyle3, bm3Var4, textStyle4, horizontal, bm3Var5, dm3Var, f2, f3, windowInsets, topAppBarColors, topAppBarScrollBehavior);
    }
}
