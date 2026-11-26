package androidx.compose.ui.platform;

import androidx.compose.ui.node.RootForTest;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$snapshotObserver$1$command$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ ll3<j59> $command;
    final /* synthetic */ RootForTest.UncaughtExceptionHandler $exceptionHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$snapshotObserver$1$command$1(ll3<j59> ll3Var, RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
        super(0);
        this.$command = ll3Var;
        this.$exceptionHandler = uncaughtExceptionHandler;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        try {
            this.$command.invoke();
        } catch (Exception e) {
            this.$exceptionHandler.onUncaughtException(e);
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
