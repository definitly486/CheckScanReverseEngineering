package com.my.target.nativeads.views;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.my.target.common.views.StarsRatingView;
import com.my.target.q1;
import com.warefly.checkscan.R;
import defpackage.di5;
import defpackage.ei5;
import defpackage.l3a;
import defpackage.mu9;

/* JADX INFO: loaded from: classes4.dex */
public class NativeBannerAdView extends ViewGroup {
    public final q1 b;
    public final TextView c;
    public final IconAdView d;
    public final TextView e;
    public final TextView f;
    public final StarsRatingView g;
    public final TextView h;
    public final Button i;
    public final TextView j;
    public final LinearLayout k;
    public final LinearLayout l;
    public final a m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;

    public static final class a implements ei5 {
    }

    public NativeBannerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        q1 q1Var = new q1(context);
        this.b = q1Var;
        TextView textView = new TextView(context);
        this.c = textView;
        IconAdView iconAdView = new IconAdView(context);
        this.d = iconAdView;
        TextView textView2 = new TextView(context);
        this.e = textView2;
        TextView textView3 = new TextView(context);
        this.f = textView3;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.g = starsRatingView;
        TextView textView4 = new TextView(context);
        this.h = textView4;
        TextView textView5 = new TextView(context);
        this.j = textView5;
        Button button = new Button(context);
        this.i = button;
        LinearLayout linearLayout = new LinearLayout(context);
        this.k = linearLayout;
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.l = linearLayout2;
        LinearLayout linearLayout3 = new LinearLayout(context);
        l3a l3aVar = new l3a(context);
        setId(R.id.nativeads_ad_view);
        q1Var.setId(R.id.nativeads_age_restrictions);
        textView.setId(R.id.nativeads_advertising);
        iconAdView.setId(R.id.nativeads_icon);
        textView2.setId(R.id.nativeads_title);
        textView3.setId(R.id.nativeads_domain);
        starsRatingView.setId(R.id.nativeads_rating);
        textView4.setId(R.id.nativeads_votes);
        textView5.setId(R.id.nativeads_disclaimer);
        button.setId(R.id.nativeads_call_to_action);
        l3a.n(textView4, "votes_text");
        int iB = l3aVar.b(4.0f);
        setPadding(iB, iB, iB, iB);
        this.o = l3aVar.b(2.0f);
        int iB2 = l3aVar.b(4.0f);
        this.r = iB2;
        this.q = l3aVar.b(54.0f);
        this.s = l3aVar.b(20.0f);
        int iB3 = l3aVar.b(12.0f);
        int iB4 = l3aVar.b(10.0f);
        this.n = l3aVar.b(40.0f);
        this.p = l3aVar.b(4.0f);
        button.setPadding(iB4, 0, iB4, 0);
        button.setTransformationMethod(null);
        button.setMaxEms(8);
        button.setLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button.setEllipsize(truncateAt);
        button.setTextColor(-16748844);
        button.setTextSize(2, 16.0f);
        l3a.h(this, -1, -3806472);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{0, 0});
        gradientDrawable.setStroke(l3aVar.b(1.5f), -16748844);
        gradientDrawable.setCornerRadius(l3aVar.b(2.0f));
        GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{-3806472, -3806472});
        gradientDrawable2.setStroke(l3aVar.b(1.5f), -16748844);
        gradientDrawable2.setCornerRadius(l3aVar.b(2.0f));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        button.setBackground(stateListDrawable);
        setClickable(true);
        q1Var.setTextColor(-6710887);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(0);
        gradientDrawable3.setStroke(1, -13421773);
        int iB5 = l3aVar.b(2.0f);
        q1Var.setBackgroundDrawable(gradientDrawable3);
        q1Var.setGravity(17);
        q1Var.setPadding(iB5, 0, 0, 0);
        q1Var.setBackgroundColor(0);
        q1Var.setMaxEms(10);
        q1Var.setLines(1);
        q1Var.setTextSize(2, 10.0f);
        textView.setTextSize(2, 10.0f);
        textView.setTextColor(-6710887);
        textView.setLines(1);
        textView.setEllipsize(truncateAt);
        textView.setPadding(iB2, 0, 0, 0);
        textView2.setTextColor(-16777216);
        textView2.setTextSize(2, 16.0f);
        textView2.setTypeface(null, 1);
        textView2.setMaxLines(2);
        textView2.setEllipsize(truncateAt);
        textView3.setTextColor(-6710887);
        textView3.setTextSize(2, 14.0f);
        textView3.setLines(1);
        textView3.setEllipsize(truncateAt);
        textView3.setIncludeFontPadding(false);
        textView4.setTextColor(-6710887);
        textView4.setTextSize(2, 12.0f);
        textView4.setLines(1);
        textView4.setEllipsize(truncateAt);
        textView4.setPadding(l3aVar.b(4.0f), 0, 0, 0);
        textView5.setTextColor(-6710887);
        textView5.setTextSize(2, 12.0f);
        textView5.setMaxLines(2);
        textView5.setEllipsize(truncateAt);
        starsRatingView.setStarSize(iB3);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout.setOrientation(1);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        addView(iconAdView);
        addView(button);
        addView(linearLayout);
        addView(linearLayout2);
        linearLayout2.addView(q1Var);
        linearLayout2.addView(textView);
        linearLayout.addView(textView2);
        linearLayout.addView(linearLayout3);
        linearLayout.addView(textView5);
        linearLayout3.addView(textView3);
        linearLayout3.addView(starsRatingView);
        linearLayout3.addView(textView4);
        this.m = new a();
        mu9.a |= 128;
    }

    public TextView getAdvertisingTextView() {
        return this.c;
    }

    public TextView getAgeRestrictionTextView() {
        return this.b;
    }

    public Button getCtaButtonView() {
        return this.i;
    }

    public TextView getDisclaimerTextView() {
        return this.j;
    }

    public TextView getDomainTextView() {
        return this.f;
    }

    @Deprecated
    public IconAdView getIconImageView() {
        return this.d;
    }

    public IconAdView getIconView() {
        return this.d;
    }

    public ei5 getNativeBannerAdViewBinder() {
        return this.m;
    }

    public StarsRatingView getStarsRatingView() {
        return this.g;
    }

    public TextView getTitleTextView() {
        return this.e;
    }

    public TextView getVotesTextView() {
        return this.h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        LinearLayout linearLayout = this.l;
        l3a.r(linearLayout, paddingTop, paddingLeft);
        IconAdView iconAdView = this.d;
        int measuredHeight = iconAdView.getMeasuredHeight();
        LinearLayout linearLayout2 = this.k;
        int measuredHeight2 = linearLayout2.getMeasuredHeight();
        Button button = this.i;
        int iE = l3a.e(measuredHeight, measuredHeight2, button.getMeasuredHeight());
        int bottom = linearLayout.getBottom();
        int i5 = this.p;
        int i6 = bottom + i5;
        int measuredHeight3 = linearLayout.getMeasuredHeight() + ((l3a.e(iconAdView.getMeasuredHeight(), linearLayout2.getMeasuredHeight()) - button.getMeasuredHeight()) / 2);
        int i7 = this.s;
        if (measuredHeight3 < i7) {
            i6 = paddingTop + i7;
        }
        l3a.r(iconAdView, ((iE - iconAdView.getMeasuredHeight()) / 2) + i6, paddingLeft);
        l3a.m(button, ((iE - button.getMeasuredHeight()) / 2) + i6, getMeasuredWidth() - getPaddingRight());
        l3a.r(linearLayout2, ((iE - linearLayout2.getMeasuredHeight()) / 2) + i6, l3a.e(iconAdView.getRight() + i5, paddingLeft));
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int i3 = paddingLeft - this.r;
        LinearLayout linearLayout = this.l;
        l3a.i(linearLayout, i3, paddingTop, Integer.MIN_VALUE);
        int i4 = this.q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        IconAdView iconAdView = this.d;
        iconAdView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft, Integer.MIN_VALUE);
        int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(this.n, 1073741824);
        Button button = this.i;
        button.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
        int measuredWidth = (paddingLeft - iconAdView.getMeasuredWidth()) - button.getMeasuredWidth();
        int i5 = this.p;
        int measuredHeight = (paddingTop - linearLayout.getMeasuredHeight()) - this.o;
        LinearLayout linearLayout2 = this.k;
        l3a.i(linearLayout2, measuredWidth - (i5 * 2), measuredHeight, Integer.MIN_VALUE);
        int measuredHeight2 = linearLayout.getMeasuredHeight() + i5;
        int measuredHeight3 = linearLayout.getMeasuredHeight() + ((l3a.e(iconAdView.getMeasuredHeight(), linearLayout2.getMeasuredHeight()) - button.getMeasuredHeight()) / 2);
        int i6 = this.s;
        if (measuredHeight3 < i6) {
            measuredHeight2 = i6;
        }
        setMeasuredDimension(size, getPaddingBottom() + getPaddingTop() + l3a.e(linearLayout2.getMeasuredHeight(), iconAdView.getMeasuredHeight(), button.getMeasuredHeight()) + measuredHeight2);
    }

    public void setupView(di5 di5Var) {
    }

    public NativeBannerAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeBannerAdView(Context context) {
        this(context, null);
    }
}
