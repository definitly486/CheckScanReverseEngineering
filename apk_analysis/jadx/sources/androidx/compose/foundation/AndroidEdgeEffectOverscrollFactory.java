package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes.dex */
final class AndroidEdgeEffectOverscrollFactory implements OverscrollFactory {
    private final Context context;
    private final Density density;
    private final long glowColor;
    private final PaddingValues glowDrawPadding;

    public /* synthetic */ AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j, PaddingValues paddingValues, int i, jh2 jh2Var) {
        this(context, density, (i & 4) != 0 ? AndroidOverscroll_androidKt.DefaultGlowColor : j, (i & 8) != 0 ? AndroidOverscroll_androidKt.DefaultGlowPaddingValues : paddingValues, null);
    }

    @Override // androidx.compose.foundation.OverscrollFactory
    public OverscrollEffect createOverscrollEffect() {
        return new AndroidEdgeEffectOverscrollEffect(this.context, this.density, this.glowColor, this.glowDrawPadding, null);
    }

    @Override // androidx.compose.foundation.OverscrollFactory
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidEdgeEffectOverscrollFactory.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) obj;
        return aa4.e(this.context, androidEdgeEffectOverscrollFactory.context) && aa4.e(this.density, androidEdgeEffectOverscrollFactory.density) && Color.m6233equalsimpl0(this.glowColor, androidEdgeEffectOverscrollFactory.glowColor) && aa4.e(this.glowDrawPadding, androidEdgeEffectOverscrollFactory.glowDrawPadding);
    }

    @Override // androidx.compose.foundation.OverscrollFactory
    public int hashCode() {
        return this.glowDrawPadding.hashCode() + r01.b((this.density.hashCode() + (this.context.hashCode() * 31)) * 31, 31, this.glowColor);
    }

    private AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j, PaddingValues paddingValues) {
        this.context = context;
        this.density = density;
        this.glowColor = j;
        this.glowDrawPadding = paddingValues;
    }

    public /* synthetic */ AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j, PaddingValues paddingValues, jh2 jh2Var) {
        this(context, density, j, paddingValues);
    }
}
