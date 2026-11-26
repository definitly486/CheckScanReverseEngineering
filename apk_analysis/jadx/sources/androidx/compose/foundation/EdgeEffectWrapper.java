package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class EdgeEffectWrapper {
    private EdgeEffect bottomEffect;
    private EdgeEffect bottomEffectNegation;
    private final Context context;
    private final int glowColor;
    private EdgeEffect leftEffect;
    private EdgeEffect leftEffectNegation;
    private EdgeEffect rightEffect;
    private EdgeEffect rightEffectNegation;
    private long size = IntSize.Companion.m9218getZeroYbymL2g();
    private EdgeEffect topEffect;
    private EdgeEffect topEffectNegation;

    public EdgeEffectWrapper(Context context, int i) {
        this.context = context;
        this.glowColor = i;
    }

    private final EdgeEffect createEdgeEffect(Orientation orientation) {
        EdgeEffect edgeEffectCreate = EdgeEffectCompat.INSTANCE.create(this.context);
        edgeEffectCreate.setColor(this.glowColor);
        if (!IntSize.m9211equalsimpl0(this.size, IntSize.Companion.m9218getZeroYbymL2g())) {
            Orientation orientation2 = Orientation.Vertical;
            long j = this.size;
            if (orientation == orientation2) {
                edgeEffectCreate.setSize((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                return edgeEffectCreate;
            }
            edgeEffectCreate.setSize((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j), (int) (j >> 32));
        }
        return edgeEffectCreate;
    }

    private final boolean isAnimating(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    private final boolean isStretched(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !(EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect) == 0.0f);
    }

    public final void finishAll() {
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            edgeEffect.finish();
        }
        EdgeEffect edgeEffect2 = this.bottomEffect;
        if (edgeEffect2 != null) {
            edgeEffect2.finish();
        }
        EdgeEffect edgeEffect3 = this.leftEffect;
        if (edgeEffect3 != null) {
            edgeEffect3.finish();
        }
        EdgeEffect edgeEffect4 = this.rightEffect;
        if (edgeEffect4 != null) {
            edgeEffect4.finish();
        }
        EdgeEffect edgeEffect5 = this.topEffectNegation;
        if (edgeEffect5 != null) {
            edgeEffect5.finish();
        }
        EdgeEffect edgeEffect6 = this.bottomEffectNegation;
        if (edgeEffect6 != null) {
            edgeEffect6.finish();
        }
        EdgeEffect edgeEffect7 = this.leftEffectNegation;
        if (edgeEffect7 != null) {
            edgeEffect7.finish();
        }
        EdgeEffect edgeEffect8 = this.rightEffectNegation;
        if (edgeEffect8 != null) {
            edgeEffect8.finish();
        }
    }

    public final void forEachEffect(nl3<? super EdgeEffect, j59> nl3Var) {
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            nl3Var.invoke(edgeEffect);
        }
        EdgeEffect edgeEffect2 = this.bottomEffect;
        if (edgeEffect2 != null) {
            nl3Var.invoke(edgeEffect2);
        }
        EdgeEffect edgeEffect3 = this.leftEffect;
        if (edgeEffect3 != null) {
            nl3Var.invoke(edgeEffect3);
        }
        EdgeEffect edgeEffect4 = this.rightEffect;
        if (edgeEffect4 != null) {
            nl3Var.invoke(edgeEffect4);
        }
    }

    public final EdgeEffect getOrCreateBottomEffect() {
        EdgeEffect edgeEffect = this.bottomEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Vertical);
        this.bottomEffect = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateBottomEffectNegation() {
        EdgeEffect edgeEffect = this.bottomEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Vertical);
        this.bottomEffectNegation = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateLeftEffect() {
        EdgeEffect edgeEffect = this.leftEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Horizontal);
        this.leftEffect = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateLeftEffectNegation() {
        EdgeEffect edgeEffect = this.leftEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Horizontal);
        this.leftEffectNegation = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateRightEffect() {
        EdgeEffect edgeEffect = this.rightEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Horizontal);
        this.rightEffect = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateRightEffectNegation() {
        EdgeEffect edgeEffect = this.rightEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Horizontal);
        this.rightEffectNegation = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateTopEffect() {
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Vertical);
        this.topEffect = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final EdgeEffect getOrCreateTopEffectNegation() {
        EdgeEffect edgeEffect = this.topEffectNegation;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectCreateEdgeEffect = createEdgeEffect(Orientation.Vertical);
        this.topEffectNegation = edgeEffectCreateEdgeEffect;
        return edgeEffectCreateEdgeEffect;
    }

    public final boolean isBottomAnimating() {
        return isAnimating(this.bottomEffect);
    }

    public final boolean isBottomNegationStretched() {
        return isStretched(this.bottomEffectNegation);
    }

    public final boolean isBottomStretched() {
        return isStretched(this.bottomEffect);
    }

    public final boolean isLeftAnimating() {
        return isAnimating(this.leftEffect);
    }

    public final boolean isLeftNegationStretched() {
        return isStretched(this.leftEffectNegation);
    }

    public final boolean isLeftStretched() {
        return isStretched(this.leftEffect);
    }

    public final boolean isRightAnimating() {
        return isAnimating(this.rightEffect);
    }

    public final boolean isRightNegationStretched() {
        return isStretched(this.rightEffectNegation);
    }

    public final boolean isRightStretched() {
        return isStretched(this.rightEffect);
    }

    public final boolean isTopAnimating() {
        return isAnimating(this.topEffect);
    }

    public final boolean isTopNegationStretched() {
        return isStretched(this.topEffectNegation);
    }

    public final boolean isTopStretched() {
        return isStretched(this.topEffect);
    }

    /* JADX INFO: renamed from: updateSize-ozmzZPI, reason: not valid java name */
    public final void m1343updateSizeozmzZPI(long j) {
        this.size = j;
        EdgeEffect edgeEffect = this.topEffect;
        if (edgeEffect != null) {
            edgeEffect.setSize((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        EdgeEffect edgeEffect2 = this.bottomEffect;
        if (edgeEffect2 != null) {
            edgeEffect2.setSize((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        EdgeEffect edgeEffect3 = this.leftEffect;
        if (edgeEffect3 != null) {
            edgeEffect3.setSize((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j >> 32));
        }
        EdgeEffect edgeEffect4 = this.rightEffect;
        if (edgeEffect4 != null) {
            edgeEffect4.setSize((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j >> 32));
        }
        EdgeEffect edgeEffect5 = this.topEffectNegation;
        if (edgeEffect5 != null) {
            edgeEffect5.setSize((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        EdgeEffect edgeEffect6 = this.bottomEffectNegation;
        if (edgeEffect6 != null) {
            edgeEffect6.setSize((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        EdgeEffect edgeEffect7 = this.leftEffectNegation;
        if (edgeEffect7 != null) {
            edgeEffect7.setSize((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j >> 32));
        }
        EdgeEffect edgeEffect8 = this.rightEffectNegation;
        if (edgeEffect8 != null) {
            edgeEffect8.setSize((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), (int) (j >> 32));
        }
    }
}
