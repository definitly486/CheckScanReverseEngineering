package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class OffsetEffect extends RenderEffect {
    public static final int $stable = 0;
    private final long offset;
    private final RenderEffect renderEffect;

    private OffsetEffect(RenderEffect renderEffect, long j) {
        super(null);
        this.renderEffect = renderEffect;
        this.offset = j;
    }

    @Override // androidx.compose.ui.graphics.RenderEffect
    public android.graphics.RenderEffect createRenderEffect() {
        return RenderEffectVerificationHelper.INSTANCE.m6559createOffsetEffectUv8p0NA(this.renderEffect, this.offset);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OffsetEffect)) {
            return false;
        }
        OffsetEffect offsetEffect = (OffsetEffect) obj;
        return aa4.e(this.renderEffect, offsetEffect.renderEffect) && Offset.m5984equalsimpl0(this.offset, offsetEffect.offset);
    }

    public int hashCode() {
        RenderEffect renderEffect = this.renderEffect;
        return Offset.m5989hashCodeimpl(this.offset) + ((renderEffect != null ? renderEffect.hashCode() : 0) * 31);
    }

    public String toString() {
        return "OffsetEffect(renderEffect=" + this.renderEffect + ", offset=" + ((Object) Offset.m5995toStringimpl(this.offset)) + ')';
    }

    public /* synthetic */ OffsetEffect(RenderEffect renderEffect, long j, jh2 jh2Var) {
        this(renderEffect, j);
    }
}
