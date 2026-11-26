package androidx.compose.ui.spatial;

import android.os.Trace;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class RectManager$dispatchLambda$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ RectManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RectManager$dispatchLambda$1(RectManager rectManager) {
        super(0);
        this.this$0 = rectManager;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.dispatchToken = null;
        RectManager rectManager = this.this$0;
        Trace.beginSection("OnPositionedDispatch");
        try {
            rectManager.dispatchCallbacks();
            j59 j59Var = j59.a;
        } finally {
            Trace.endSection();
        }
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
