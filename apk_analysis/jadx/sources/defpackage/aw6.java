package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.queue.view.DisclaimerDialog;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;
import com.warefly.checkscan.presentation.webview.WebViewActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class aw6 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ aw6(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                DisclaimerDialog disclaimerDialog = new DisclaimerDialog();
                ze4<Object>[] ze4VarArr = QueueFragment.k;
                ((QueueFragment) obj2).m(disclaimerDialog);
                new kd.g.d.b("CQ_QUEST_MARK_CLICK").a();
                break;
            default:
                ((View) obj).getClass();
                WebViewActivity webViewActivity = (WebViewActivity) obj2;
                webViewActivity.setResult(1);
                webViewActivity.finish();
                break;
        }
        return j59.a;
    }
}
