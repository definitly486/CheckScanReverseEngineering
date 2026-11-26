package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.contentcapture.ContentCaptureSessionWrapper;
import defpackage.ll3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class AndroidComposeView$contentCaptureManager$1 extends qm3 implements ll3<ContentCaptureSessionWrapper> {
    public AndroidComposeView$contentCaptureManager$1(Object obj) {
        super(0, obj, AndroidComposeView_androidKt.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", 1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final ContentCaptureSessionWrapper invoke() {
        return AndroidComposeView_androidKt.getContentCaptureSessionCompat((View) this.receiver);
    }
}
