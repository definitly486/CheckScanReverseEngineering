package yads;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public final class er3 extends wh0 {
    public final TextView a;
    public final TextView b;
    public final TextView c;

    public er3(View view) {
        super(view);
        this.a = (TextView) view.findViewById(R$id.item_title);
        this.b = (TextView) view.findViewById(R$id.item_subtitle);
        this.c = (TextView) view.findViewById(R$id.item_text);
    }

    @Override // yads.wh0
    public final void a(uh0 uh0Var) {
        qh0 qh0Var = (qh0) uh0Var;
        String str = qh0Var.a;
        rg0 rg0Var = qh0Var.b;
        af0 af0Var = qh0Var.c;
        Context context = this.itemView.getContext();
        TextView textView = this.a;
        if (str != null) {
            textView.setVisibility(0);
            this.a.setText(str);
        } else {
            textView.setVisibility(8);
        }
        if (rg0Var == null || ta8.M(rg0Var.a)) {
            this.b.setVisibility(8);
        } else {
            this.b.setVisibility(0);
            this.b.setText(rg0Var.a);
            this.b.setTextColor(wl.a(context, rg0Var.b));
            Integer num = rg0Var.c;
            this.b.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, num != null ? num.intValue() : 0, 0);
        }
        if (af0Var == null || ta8.M(af0Var.a)) {
            this.c.setVisibility(8);
            return;
        }
        this.c.setVisibility(0);
        this.c.setText(af0Var.a);
        this.c.setTextColor(wl.a(context, af0Var.b));
    }
}
