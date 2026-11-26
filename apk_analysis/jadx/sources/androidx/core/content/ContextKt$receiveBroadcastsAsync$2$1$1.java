package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.Intent;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.core.content.ContextKt$receiveBroadcastsAsync$2$1$1", f = "Context.kt", l = {WebmConstants.MkvEbmlElement.CUE_TRACK}, m = "invokeSuspend", v = 1)
public final class ContextKt$receiveBroadcastsAsync$2$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Intent $intent;
    final /* synthetic */ dm3<BroadcastReceiver.PendingResult, Intent, e02<? super j59>, Object> $onReceive;
    final /* synthetic */ BroadcastReceiver.PendingResult $pendingResult;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContextKt$receiveBroadcastsAsync$2$1$1(dm3<? super BroadcastReceiver.PendingResult, ? super Intent, ? super e02<? super j59>, ? extends Object> dm3Var, BroadcastReceiver.PendingResult pendingResult, Intent intent, e02<? super ContextKt$receiveBroadcastsAsync$2$1$1> e02Var) {
        super(2, e02Var);
        this.$onReceive = dm3Var;
        this.$pendingResult = pendingResult;
        this.$intent = intent;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ContextKt$receiveBroadcastsAsync$2$1$1 contextKt$receiveBroadcastsAsync$2$1$1 = new ContextKt$receiveBroadcastsAsync$2$1$1(this.$onReceive, this.$pendingResult, this.$intent, e02Var);
        contextKt$receiveBroadcastsAsync$2$1$1.L$0 = obj;
        return contextKt$receiveBroadcastsAsync$2$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ContextKt$receiveBroadcastsAsync$2$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [j59, java.lang.Object] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                z22.d((y22) this.L$0);
                dm3<BroadcastReceiver.PendingResult, Intent, e02<? super j59>, Object> dm3Var = this.$onReceive;
                BroadcastReceiver.PendingResult pendingResult = this.$pendingResult;
                Intent intent = this.$intent;
                this.label = 1;
                if (dm3Var.invoke(pendingResult, intent, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.$pendingResult.finish();
            this = j59.a;
            return this;
        } catch (Throwable th) {
            this.$pendingResult.finish();
            throw th;
        }
    }
}
