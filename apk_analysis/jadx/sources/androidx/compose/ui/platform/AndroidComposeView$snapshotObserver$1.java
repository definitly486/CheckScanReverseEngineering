package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.ui.node.RootForTest;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$snapshotObserver$1 extends gh4 implements nl3<ll3<? extends j59>, j59> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$snapshotObserver$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final ll3<j59> ll3Var) {
        RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler$ui = this.this$0.getUncaughtExceptionHandler$ui();
        if (uncaughtExceptionHandler$ui != null) {
            ll3Var = new AndroidComposeView$snapshotObserver$1$command$1(ll3Var, uncaughtExceptionHandler$ui);
        }
        Handler handler = this.this$0.getHandler();
        if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
            ll3Var.invoke();
            return;
        }
        Handler handler2 = this.this$0.getHandler();
        if (handler2 != null) {
            handler2.post(new Runnable() { // from class: androidx.compose.ui.platform.a
                @Override // java.lang.Runnable
                public final void run() {
                    ll3Var.invoke();
                }
            });
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(ll3<? extends j59> ll3Var) {
        invoke2((ll3<j59>) ll3Var);
        return j59.a;
    }
}
