package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.SessionMutex;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.h8;
import defpackage.j59;
import defpackage.o22;
import defpackage.r57;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 implements PlatformTextInputSessionScope {
    private final /* synthetic */ PlatformTextInputSessionScope $$delegate_0;
    final /* synthetic */ AtomicReference<SessionMutex.Session<j59>> $inputMethodMutex;
    final /* synthetic */ PlatformTextInputSessionScope $parentSession;
    final /* synthetic */ ChainedPlatformTextInputInterceptor this$0;

    public ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1(PlatformTextInputSessionScope platformTextInputSessionScope, AtomicReference<SessionMutex.Session<j59>> atomicReference, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor) {
        this.$parentSession = platformTextInputSessionScope;
        this.$inputMethodMutex = atomicReference;
        this.this$0 = chainedPlatformTextInputInterceptor;
        this.$$delegate_0 = platformTextInputSessionScope;
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputSessionScope, defpackage.y22
    public o22 getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputSession
    public View getView() {
        return this.$$delegate_0.getView();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.platform.PlatformTextInputSession
    public Object startInputMethod(PlatformTextInputMethodRequest platformTextInputMethodRequest, e02<?> e02Var) {
        ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1;
        if (e02Var instanceof ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) {
            chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = (ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) e02Var;
            int i = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label = i - Integer.MIN_VALUE;
            } else {
                chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(this, e02Var);
            }
        } else {
            chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(this, e02Var);
        }
        Object obj = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label;
        if (i2 == 0) {
            r57.b(obj);
            AtomicReference<SessionMutex.Session<j59>> atomicReference = this.$inputMethodMutex;
            ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 = ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2.INSTANCE;
            ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3(this.this$0, platformTextInputMethodRequest, this.$parentSession, null);
            chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label = 1;
            if (SessionMutex.m5676withSessionCancellingPreviousimpl(atomicReference, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }
}
