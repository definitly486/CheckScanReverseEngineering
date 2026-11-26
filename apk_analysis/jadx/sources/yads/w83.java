package yads;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class w83 extends wh0 {
    public final TextView a;

    public w83(View view) {
        super(view);
        this.a = (TextView) view.findViewById(R$id.item_text);
    }

    @Override // yads.wh0
    public final void a(uh0 uh0Var) {
        this.a.setText(((ph0) uh0Var).a);
    }
}
