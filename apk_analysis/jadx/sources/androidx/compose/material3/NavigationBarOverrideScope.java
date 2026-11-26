package androidx.compose.material3;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationBarOverrideScope {
    public static final int $stable = 0;
    private final long containerColor;
    private final dm3<RowScope, Composer, Integer, j59> content;
    private final long contentColor;
    private final Modifier modifier;
    private final float tonalElevation;
    private final WindowInsets windowInsets;

    public /* synthetic */ NavigationBarOverrideScope(Modifier modifier, long j, long j2, float f, WindowInsets windowInsets, dm3 dm3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Modifier.Companion : modifier, j, j2, f, windowInsets, dm3Var, null);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3652getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    public final dm3<RowScope, Composer, Integer, j59> getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m3653getContentColor0d7_KjU() {
        return this.contentColor;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    /* JADX INFO: renamed from: getTonalElevation-D9Ej5fM, reason: not valid java name */
    public final float m3654getTonalElevationD9Ej5fM() {
        return this.tonalElevation;
    }

    public final WindowInsets getWindowInsets() {
        return this.windowInsets;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private NavigationBarOverrideScope(Modifier modifier, long j, long j2, float f, WindowInsets windowInsets, dm3<? super RowScope, ? super Composer, ? super Integer, j59> dm3Var) {
        this.modifier = modifier;
        this.containerColor = j;
        this.contentColor = j2;
        this.tonalElevation = f;
        this.windowInsets = windowInsets;
        this.content = dm3Var;
    }

    public /* synthetic */ NavigationBarOverrideScope(Modifier modifier, long j, long j2, float f, WindowInsets windowInsets, dm3 dm3Var, jh2 jh2Var) {
        this(modifier, j, j2, f, windowInsets, dm3Var);
    }
}
