package yads;

import android.view.View;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import defpackage.nl3;
import yads.v0;

/* JADX INFO: loaded from: classes6.dex */
public final class v0 extends wh0 {
    public final nl3 a;
    public final TextView b;

    public v0(nl3 nl3Var, View view) {
        super(view);
        this.a = nl3Var;
        this.b = (TextView) view.findViewById(R$id.item_button);
    }

    @Override // yads.wh0
    public final void a(final nh0 nh0Var) {
        TextView textView = this.b;
        nh0Var.getClass();
        textView.setText("Enable Test mode");
        this.b.setOnClickListener(new View.OnClickListener() { // from class: vea
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v0.a(this.b, nh0Var, view);
            }
        });
    }

    public static final void a(v0 v0Var, nh0 nh0Var, View view) {
        nl3 nl3Var = v0Var.a;
        nh0Var.getClass();
        nl3Var.invoke(mh0.TEST_MODE);
    }
}
