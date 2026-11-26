package androidx.compose.ui.platform;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.platform.WrappedComposition$setContent$1$2$2$1", f = "Wrapper.android.kt", l = {128}, m = "invokeSuspend", v = 1)
public final class WrappedComposition$setContent$1$2$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ WrappedComposition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrappedComposition$setContent$1$2$2$1(WrappedComposition wrappedComposition, e02<? super WrappedComposition$setContent$1$2$2$1> e02Var) {
        super(2, e02Var);
        this.this$0 = wrappedComposition;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new WrappedComposition$setContent$1$2$2$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((WrappedComposition$setContent$1$2$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            AndroidComposeView owner = this.this$0.getOwner();
            this.label = 1;
            if (owner.boundsUpdatesContentCaptureEventLoop(this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
