package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.media3.muxer.MuxerUtil;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {
    public static final int $stable = 0;
    public static final PlatformMagnifierFactoryApi29Impl INSTANCE = new PlatformMagnifierFactoryApi29Impl();
    private static final boolean canUpdateZoom = true;

    public static final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl {
        public static final int $stable = 8;

        public PlatformMagnifierImpl(Magnifier magnifier) {
            super(magnifier);
        }

        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        /* JADX INFO: renamed from: update-Wko1d7g */
        public void mo1378updateWko1d7g(long j, long j2, float f) {
            if (!Float.isNaN(f)) {
                getMagnifier().setZoom(f);
            }
            if ((9223372034707292159L & j2) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                getMagnifier().show(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            } else {
                getMagnifier().show(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            }
        }
    }

    private PlatformMagnifierFactoryApi29Impl() {
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    /* JADX INFO: renamed from: create-nHHXs2Y */
    public PlatformMagnifierImpl mo1379createnHHXs2Y(View view, boolean z, long j, float f, float f2, boolean z2, Density density, float f3) {
        if (z) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long jMo1435toSizeXkaWNTQ = density.mo1435toSizeXkaWNTQ(j);
        float fMo1434toPx0680j_4 = density.mo1434toPx0680j_4(f);
        float fMo1434toPx0680j_5 = density.mo1434toPx0680j_4(f2);
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (jMo1435toSizeXkaWNTQ != InlineClassHelperKt.UnspecifiedPackedFloats) {
            builder.setSize(w65.b(Float.intBitsToFloat((int) (jMo1435toSizeXkaWNTQ >> 32))), w65.b(Float.intBitsToFloat((int) (jMo1435toSizeXkaWNTQ & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
        }
        if (!Float.isNaN(fMo1434toPx0680j_4)) {
            builder.setCornerRadius(fMo1434toPx0680j_4);
        }
        if (!Float.isNaN(fMo1434toPx0680j_5)) {
            builder.setElevation(fMo1434toPx0680j_5);
        }
        if (!Float.isNaN(f3)) {
            builder.setInitialZoom(f3);
        }
        builder.setClippingEnabled(z2);
        return new PlatformMagnifierImpl(builder.build());
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public boolean getCanUpdateZoom() {
        return canUpdateZoom;
    }
}
