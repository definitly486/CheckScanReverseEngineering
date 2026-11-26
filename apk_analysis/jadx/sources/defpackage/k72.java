package defpackage;

import android.view.ViewTreeObserver;
import com.monetization.ads.nativeads.CustomizableMediaView;
import yads.q0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class k72 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k72(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                CustomizableMediaView.a((CustomizableMediaView) obj);
                break;
            default:
                q0.a((q0) obj);
                break;
        }
    }
}
