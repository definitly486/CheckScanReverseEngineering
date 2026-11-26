package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.yandex.mobile.ads.R$attr;
import com.yandex.mobile.ads.R$color;
import com.yandex.mobile.ads.R$dimen;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public class yu5 extends LinearLayout {
    public final uu5 a;
    public final View b;
    public final pg6 c;
    public final ld5 d;
    public a62 e;

    public yu5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setId(R$id.monetization_ads_divkit_div_tabs_block);
        setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setOrientation(1);
        uu5 uu5Var = new uu5(context, null, R$attr.monetization_ads_divkit_divTabIndicatorLayoutStyle);
        uu5Var.setId(R$id.monetization_ads_divkit_base_tabbed_title_container_scroller);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_title_tab_title_height));
        layoutParams.gravity = GravityCompat.START;
        uu5Var.setLayoutParams(layoutParams);
        int dimensionPixelSize = uu5Var.getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_title_tab_title_margin_vertical);
        int dimensionPixelSize2 = uu5Var.getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_title_tab_title_margin_horizontal);
        uu5Var.setPadding(dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize);
        uu5Var.setClipToPadding(false);
        this.a = uu5Var;
        View view = new View(context);
        view.setId(R$id.monetization_ads_divkit_div_tabs_divider);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_div_separator_delimiter_height));
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_div_horizontal_padding);
        layoutParams2.leftMargin = dimensionPixelSize3;
        layoutParams2.rightMargin = dimensionPixelSize3;
        layoutParams2.topMargin = getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_title_tab_title_separator_margin_top);
        layoutParams2.bottomMargin = getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_title_tab_title_margin_vertical);
        view.setLayoutParams(layoutParams2);
        view.setBackgroundResource(R$color.monetization_ads_divkit_div_separator_color);
        this.b = view;
        ld5 ld5Var = new ld5(context);
        ld5Var.setId(R$id.monetization_ads_divkit_div_tabs_pager_container);
        ld5Var.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ld5Var.setOverScrollMode(2);
        ViewCompat.setNestedScrollingEnabled(ld5Var, true);
        this.d = ld5Var;
        pg6 pg6Var = new pg6(context, null, 6, 0);
        pg6Var.setId(R$id.monetization_ads_divkit_div_tabs_container_helper);
        pg6Var.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        pg6Var.setCollapsiblePaddingBottom(0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        frameLayout.setVisibility(8);
        pg6Var.addView(ld5Var);
        pg6Var.addView(frameLayout);
        this.c = pg6Var;
        addView(uu5Var);
        addView(view);
        addView(pg6Var);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final /* bridge */ /* synthetic */ CharSequence getAccessibilityClassName() {
        return "android.widget.TabWidget";
    }

    public final a62 h() {
        return this.e;
    }

    public final ld5 j() {
        return this.d;
    }

    public void setDivTabsAdapter(a62 a62Var) {
        this.e = a62Var;
    }

    public yu5(Context context) {
        this(context, null);
    }
}
