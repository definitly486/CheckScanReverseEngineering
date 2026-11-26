package com.my.target;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import defpackage.fg;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class f5 extends RelativeLayout {
    public final RelativeLayout b;
    public final ImageView c;
    public final ImageView d;
    public final l3a e;
    public final boolean f;
    public final a g;

    public static class a implements View.OnClickListener {
        public final Context b;

        public a(Context context) {
            this.b = context;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context context = this.b;
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://target.my.com/"));
                if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                context.startActivity(intent);
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("FooterView$GoToMyTargetClickListener: Error - "), th);
            }
        }
    }

    public f5(Context context, l3a l3aVar, boolean z) {
        super(context);
        this.b = new RelativeLayout(context);
        ImageView imageView = new ImageView(context);
        this.c = imageView;
        l3a.n(imageView, "logo_image");
        ImageView imageView2 = new ImageView(context);
        this.d = imageView2;
        l3a.n(imageView2, "store_image");
        this.e = l3aVar;
        this.f = z;
        this.g = new a(context);
    }
}
