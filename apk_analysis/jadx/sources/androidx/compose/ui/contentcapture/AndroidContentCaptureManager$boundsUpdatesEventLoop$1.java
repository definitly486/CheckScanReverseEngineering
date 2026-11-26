package androidx.compose.ui.contentcapture;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.contentcapture.AndroidContentCaptureManager", f = "AndroidContentCaptureManager.android.kt", l = {205, WebmConstants.MkvEbmlElement.TRACK_NUMBER}, m = "boundsUpdatesEventLoop$ui", v = 1)
public final class AndroidContentCaptureManager$boundsUpdatesEventLoop$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidContentCaptureManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidContentCaptureManager$boundsUpdatesEventLoop$1(AndroidContentCaptureManager androidContentCaptureManager, e02<? super AndroidContentCaptureManager$boundsUpdatesEventLoop$1> e02Var) {
        super(e02Var);
        this.this$0 = androidContentCaptureManager;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.boundsUpdatesEventLoop$ui(this);
    }
}
