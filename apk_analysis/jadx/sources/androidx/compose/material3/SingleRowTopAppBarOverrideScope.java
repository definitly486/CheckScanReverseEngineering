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
public final class SingleRowTopAppBarOverrideScope {
    public static final int $stable = 0;
    private final dm3<RowScope, Composer, Integer, j59> actions;
    private final TopAppBarColors colors;
    private final float expandedHeight;
    private final Modifier modifier;
    private final bm3<Composer, Integer, j59> navigationIcon;
    private final TopAppBarScrollBehavior scrollBehavior;
    private final bm3<Composer, Integer, j59> subtitle;
    private final TextStyle subtitleTextStyle;
    private final bm3<Composer, Integer, j59> title;
    private final Alignment.Horizontal titleHorizontalAlignment;
    private final TextStyle titleTextStyle;
    private final WindowInsets windowInsets;

    /* JADX WARN: Multi-variable type inference failed */
    private SingleRowTopAppBarOverrideScope(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, TextStyle textStyle, bm3<? super Composer, ? super Integer, j59> bm3Var2, TextStyle textStyle2, Alignment.Horizontal horizontal, bm3<? super Composer, ? super Integer, j59> bm3Var3, dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var, float f, WindowInsets windowInsets, TopAppBarColors topAppBarColors, TopAppBarScrollBehavior topAppBarScrollBehavior) {
        this.modifier = modifier;
        this.title = bm3Var;
        this.titleTextStyle = textStyle;
        this.subtitle = bm3Var2;
        this.subtitleTextStyle = textStyle2;
        this.titleHorizontalAlignment = horizontal;
        this.navigationIcon = bm3Var3;
        this.actions = dm3Var;
        this.expandedHeight = f;
        this.windowInsets = windowInsets;
        this.colors = topAppBarColors;
        this.scrollBehavior = topAppBarScrollBehavior;
    }

    public final dm3<RowScope, Composer, Integer, j59> getActions() {
        return this.actions;
    }

    public final TopAppBarColors getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: getExpandedHeight-D9Ej5fM, reason: not valid java name */
    public final float m3868getExpandedHeightD9Ej5fM() {
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

    public final bm3<Composer, Integer, j59> getSubtitle() {
        return this.subtitle;
    }

    public final TextStyle getSubtitleTextStyle() {
        return this.subtitleTextStyle;
    }

    public final bm3<Composer, Integer, j59> getTitle() {
        return this.title;
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

    public /* synthetic */ SingleRowTopAppBarOverrideScope(Modifier modifier, bm3 bm3Var, TextStyle textStyle, bm3 bm3Var2, TextStyle textStyle2, Alignment.Horizontal horizontal, bm3 bm3Var3, dm3 dm3Var, float f, WindowInsets windowInsets, TopAppBarColors topAppBarColors, TopAppBarScrollBehavior topAppBarScrollBehavior, jh2 jh2Var) {
        this(modifier, bm3Var, textStyle, bm3Var2, textStyle2, horizontal, bm3Var3, dm3Var, f, windowInsets, topAppBarColors, topAppBarScrollBehavior);
    }
}
