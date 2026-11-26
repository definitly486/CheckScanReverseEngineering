package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.MuxerUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SharedElementKt {
    private static final SpringSpec<Offset> DefaultMomentumSpring = AnimationSpecKt.spring$default(0.0f, 400.0f, Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(3.0f)) << 32) | (((long) Float.floatToRawIntBits(3.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasVisibleContent(List<SharedElementEntry> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).getBoundsAnimation().getTarget()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: toOffset-TH1AsA0, reason: not valid java name */
    public static final long m1149toOffsetTH1AsA0(long j) {
        float fM9280getXimpl = Velocity.m9280getXimpl(j);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(Velocity.m9281getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM9280getXimpl) << 32));
    }
}
