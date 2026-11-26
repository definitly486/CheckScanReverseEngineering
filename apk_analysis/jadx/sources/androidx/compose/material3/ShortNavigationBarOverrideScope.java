package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ShortNavigationBarOverrideScope {
    public static final int $stable = 0;
    private final int arrangement;
    private final long containerColor;
    private final bm3<Composer, Integer, j59> content;
    private final long contentColor;
    private final Modifier modifier;
    private final WindowInsets windowInsets;

    /* JADX WARN: Multi-variable type inference failed */
    private ShortNavigationBarOverrideScope(Modifier modifier, long j, long j2, WindowInsets windowInsets, int i, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.modifier = modifier;
        this.containerColor = j;
        this.contentColor = j2;
        this.windowInsets = windowInsets;
        this.arrangement = i;
        this.content = bm3Var;
    }

    /* JADX INFO: renamed from: getArrangement-LnnQw40, reason: not valid java name */
    public final int m3865getArrangementLnnQw40() {
        return this.arrangement;
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3866getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    public final bm3<Composer, Integer, j59> getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m3867getContentColor0d7_KjU() {
        return this.contentColor;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final WindowInsets getWindowInsets() {
        return this.windowInsets;
    }

    public /* synthetic */ ShortNavigationBarOverrideScope(Modifier modifier, long j, long j2, WindowInsets windowInsets, int i, bm3 bm3Var, jh2 jh2Var) {
        this(modifier, j, j2, windowInsets, i, bm3Var);
    }
}
