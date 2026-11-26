package defpackage;

import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutput;
import java.util.List;
import yads.iu1;
import yads.l66;
import yads.st3;
import yads.te1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xu implements ListenerSet.Event, Interpolator, l66, st3 {
    public static /* synthetic */ void b(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException(str + obj + obj2 + obj3 + obj4);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return iu1.a(((Double) obj).doubleValue());
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$5(f);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AudioOutput.Listener) obj).onUnderrun();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return te1.a(list);
    }
}
