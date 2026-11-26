package androidx.compose.ui.platform;

import android.view.Choreographer;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidUiFrameClock$withFrameNanos$2$2 extends gh4 implements nl3<Throwable, j59> {
    final /* synthetic */ Choreographer.FrameCallback $callback;
    final /* synthetic */ AndroidUiFrameClock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidUiFrameClock$withFrameNanos$2$2(AndroidUiFrameClock androidUiFrameClock, Choreographer.FrameCallback frameCallback) {
        super(1);
        this.this$0 = androidUiFrameClock;
        this.$callback = frameCallback;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.this$0.getChoreographer().removeFrameCallback(this.$callback);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
        invoke2(th);
        return j59.a;
    }
}
