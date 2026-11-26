package androidx.compose.ui.scrollcapture;

import android.os.CancellationSignal;
import defpackage.av0;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.s68;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeScrollCaptureCallback_androidKt {
    private static final boolean DEBUG = false;
    private static final String TAG = "ScrollCapture";

    /* JADX INFO: Access modifiers changed from: private */
    public static final mb4 launchWithCancellationSignal(y22 y22Var, CancellationSignal cancellationSignal, bm3<? super y22, ? super e02<? super j59>, ? extends Object> bm3Var) {
        final s68 s68VarC = av0.c(y22Var, null, null, bm3Var, 3);
        s68VarC.g(new AnonymousClass1(cancellationSignal));
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: zt1
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                s68VarC.cancel(null);
            }
        });
        return s68VarC;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback_androidKt$launchWithCancellationSignal$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Throwable, j59> {
        final /* synthetic */ CancellationSignal $signal;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CancellationSignal cancellationSignal) {
            super(1);
            this.$signal = cancellationSignal;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
            invoke2(th);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            if (th != null) {
                this.$signal.cancel();
            }
        }
    }
}
