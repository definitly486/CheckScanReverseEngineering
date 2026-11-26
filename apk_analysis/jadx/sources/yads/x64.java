package yads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yandex.mobile.ads.R$id;
import defpackage.nl3;
import defpackage.ta8;
import yads.x64;

/* JADX INFO: loaded from: classes6.dex */
public final class x64 extends wh0 {
    public final tf0 a;
    public final nl3 b;
    public final nl3 c;
    public cy d;
    public final LinearLayout e;
    public final ImageView f;
    public final TextView g;
    public final ImageView h;
    public final TextView i;
    public final TextView j;
    public final ImageView k;

    public x64(View view, tf0 tf0Var, nl3 nl3Var, nl3 nl3Var2) {
        super(view);
        this.a = tf0Var;
        this.b = nl3Var;
        this.c = nl3Var2;
        this.e = (LinearLayout) view.findViewById(R$id.item_mediation_adapter);
        this.f = (ImageView) view.findViewById(R$id.item_logo);
        this.g = (TextView) view.findViewById(R$id.item_name);
        this.h = (ImageView) view.findViewById(R$id.navigation_icon);
        this.i = (TextView) view.findViewById(R$id.item_info_first);
        this.j = (TextView) view.findViewById(R$id.item_info_second);
        this.k = (ImageView) view.findViewById(R$id.item_warning_button);
    }

    public static final void b(x64 x64Var, rh0 rh0Var, View view) {
        x64Var.b.invoke(rh0Var);
    }

    @Override // yads.wh0
    public final void a(final rh0 rh0Var) {
        Context context = this.itemView.getContext();
        this.g.setText(rh0Var.a);
        rg0 rg0Var = rh0Var.c;
        TextView textView = this.i;
        if (rg0Var != null) {
            textView.setVisibility(0);
            this.i.setText(rg0Var.a);
            this.i.setTextAppearance(context, rg0Var.d);
            this.i.setTextColor(wl.a(this.itemView.getContext(), rg0Var.b));
            TextView textView2 = this.i;
            Integer num = rg0Var.c;
            textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, num != null ? num.intValue() : 0, 0);
        } else {
            textView.setVisibility(8);
        }
        af0 af0Var = rh0Var.d;
        this.j.setText(af0Var.a);
        this.j.setTextAppearance(context, af0Var.c);
        this.j.setTextColor(wl.a(this.itemView.getContext(), af0Var.b));
        LinearLayout linearLayout = this.e;
        String str = rh0Var.e;
        linearLayout.setClickable(((str == null || ta8.M(str)) && rh0Var.g == null) ? false : true);
        String str2 = rh0Var.e;
        if (str2 == null || ta8.M(str2)) {
            this.k.setVisibility(8);
        } else {
            this.k.setVisibility(0);
            this.e.setOnClickListener(new defpackage.mv0(2, this, rh0Var));
        }
        this.f.setImageResource(0);
        cy cyVar = this.d;
        if (cyVar != null) {
            cyVar.cancel();
        }
        tf0 tf0Var = this.a;
        String str3 = rh0Var.b;
        if (str3 == null) {
            str3 = "";
        }
        this.d = tf0Var.a(str3, this.f);
        String str4 = rh0Var.g;
        ImageView imageView = this.h;
        if (str4 == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            this.e.setOnClickListener(new View.OnClickListener() { // from class: fha
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    x64.b(this.b, rh0Var, view);
                }
            });
        }
    }

    public static final void a(x64 x64Var, rh0 rh0Var, View view) {
        x64Var.c.invoke(rh0Var.e);
    }
}
