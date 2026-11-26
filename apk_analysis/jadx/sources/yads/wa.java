package yads;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import com.yandex.mobile.ads.R$string;
import defpackage.an9;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class wa extends wh0 {
    public final ll3 a;
    public final TextView b;

    public wa(View view, ll3 ll3Var) {
        super(view);
        this.a = ll3Var;
        this.b = (TextView) view.findViewById(R$id.item_text);
    }

    public final void a() {
        this.b.setText(this.itemView.getContext().getString(R$string.debug_panel_ad_units));
        this.b.setOnClickListener(new an9(this, 1));
    }

    @Override // yads.wh0
    public final /* bridge */ /* synthetic */ void a(uh0 uh0Var) {
        a();
    }

    public static final void a(wa waVar, View view) {
        waVar.a.invoke();
    }
}
