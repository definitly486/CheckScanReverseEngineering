package yads;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import defpackage.nl3;
import yads.ua;

/* JADX INFO: loaded from: classes6.dex */
public final class ua extends wh0 {
    public final nl3 a;
    public final TextView b;
    public final TextView c;
    public final TextView d;

    public ua(nl3 nl3Var, View view) {
        super(view);
        this.a = nl3Var;
        this.b = (TextView) view.findViewById(R$id.item_name);
        this.c = (TextView) view.findViewById(R$id.item_ad_unit_format);
        this.d = (TextView) view.findViewById(R$id.item_ad_unit_id);
    }

    @Override // yads.wh0
    public final void a(final kh0 kh0Var) {
        this.b.setText(kh0Var.a);
        this.c.setText(kh0Var.b);
        this.d.setText(kh0Var.c);
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: zda
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ua.a(this.b, kh0Var, view);
            }
        });
    }

    public static final void a(ua uaVar, kh0 kh0Var, View view) {
        uaVar.a.invoke(kh0Var.c);
    }
}
