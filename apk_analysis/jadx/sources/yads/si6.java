package yads;

import androidx.core.content.ContextCompat;
import com.monetization.ads.instream.view.InstreamMuteView;

/* JADX INFO: loaded from: classes6.dex */
public final class si6 {
    public final ld4 a;

    public si6(ld4 ld4Var) {
        this.a = ld4Var;
    }

    public final void a(InstreamMuteView instreamMuteView, boolean z) {
        int i;
        ld4 ld4Var = this.a;
        int i2 = z ? ld4Var.a : ld4Var.b;
        if (z) {
            i = ld4Var.c;
        } else {
            if (z) {
                defpackage.me0.e();
                return;
            }
            i = ld4Var.d;
        }
        instreamMuteView.setBackground(ContextCompat.getDrawable(instreamMuteView.getContext(), i2));
        instreamMuteView.setContentDescription(ContextCompat.getString(instreamMuteView.getContext(), i));
    }
}
