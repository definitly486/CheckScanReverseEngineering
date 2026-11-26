package yads;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media3.muxer.WebmConstants;
import com.yandex.mobile.ads.R$dimen;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class vn0 extends LinearLayout {
    public final ll3 a;
    public final ll3 b;
    public final g76 c;
    public final AppCompatTextView d;

    public vn0(Context context, co2 co2Var, ll3 ll3Var, ll3 ll3Var2) {
        super(context);
        this.a = ll3Var;
        this.b = ll3Var2;
        g76 g76Var = new g76(co2Var);
        this.c = g76Var;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setGravity(3);
        this.d = appCompatTextView;
        View j76Var = new j76(context, g76Var);
        int iB = defpackage.w65.b(pq.a((Number) 8, getResources().getDisplayMetrics()));
        setPadding(iB, iB, iB, iB);
        setOrientation(1);
        setBackgroundColor(Color.argb(WebmConstants.MkvEbmlElement.PIXEL_HEIGHT, 0, 0, 0));
        setElevation(getResources().getDimension(R$dimen.monetization_ads_divkit_div_shadow_elevation));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(a(), new LinearLayout.LayoutParams(defpackage.w65.b(pq.a((Number) 32, linearLayout.getResources().getDisplayMetrics())), -2));
        linearLayout.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        addView(linearLayout, new LinearLayout.LayoutParams(-2, -2));
        addView(j76Var, new LinearLayout.LayoutParams(-1, -2));
    }

    public static final void b(vn0 vn0Var, View view) {
        vn0Var.b.invoke();
    }

    public final LinearLayout a() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setPadding(0, 0, defpackage.w65.b(pq.a((Number) 8, linearLayout.getResources().getDisplayMetrics())), 0);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(linearLayout.getContext());
        imageView.setImageResource(R.drawable.ic_menu_close_clear_cancel);
        imageView.setOnClickListener(new defpackage.v92(this, 1));
        ImageView imageView2 = new ImageView(linearLayout.getContext());
        imageView2.setImageResource(R.drawable.ic_menu_save);
        imageView2.setOnClickListener(new defpackage.w92(this, 1));
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(imageView2, new LinearLayout.LayoutParams(-2, -2));
        return linearLayout;
    }

    public static final void a(vn0 vn0Var, View view) {
        vn0Var.a.invoke();
    }
}
