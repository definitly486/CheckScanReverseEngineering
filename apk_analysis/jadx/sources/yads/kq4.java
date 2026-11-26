package yads;

import android.window.OnBackInvokedCallback;
import com.yandex.mobile.ads.common.AdActivity;
import yads.kq4;

/* JADX INFO: loaded from: classes6.dex */
public final class kq4 implements iq4 {
    public final AdActivity a;
    public final d2 b;
    public final OnBackInvokedCallback c = new OnBackInvokedCallback() { // from class: b1a
        public final void onBackInvoked() {
            kq4.a(this.a);
        }
    };

    public kq4(AdActivity adActivity, d2 d2Var) {
        this.a = adActivity;
        this.b = d2Var;
    }

    public static final void a(kq4 kq4Var) {
        d2 d2Var = kq4Var.b;
        if (d2Var == null || !d2Var.c.d()) {
            return;
        }
        kq4Var.a.finish();
    }

    @Override // yads.iq4
    public final void destroy() {
        this.a.getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.c);
    }

    @Override // yads.iq4
    public final void a() {
        this.a.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.c);
    }
}
