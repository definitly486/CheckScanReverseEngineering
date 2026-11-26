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
import defpackage.ai5;
import defpackage.fi5;
import defpackage.l3a;
import defpackage.mu9;

/* JADX INFO: loaded from: classes4.dex */
public class NativeAdView extends ViewGroup {
    public final q1 b;
    public final TextView c;
    public final IconAdView d;
    public final TextView e;
    public final TextView f;
    public final TextView g;
    public final StarsRatingView h;
    public final TextView i;
    public final Button j;
    public final TextView k;
    public final LinearLayout l;
    public final LinearLayout m;
    public final a n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final MediaAdView t;

    public static final class a implements ai5 {
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
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
        TextView textView4 = new TextView(context);
        this.g = textView4;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.h = starsRatingView;
        TextView textView5 = new TextView(context);
        this.i = textView5;
        TextView textView6 = new TextView(context);
        this.k = textView6;
        Button button = new Button(context);
        this.j = button;
        l3a l3aVar = new l3a(context);
        LinearLayout linearLayout = new LinearLayout(context);
        this.l = linearLayout;
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.m = linearLayout2;
        LinearLayout linearLayout3 = new LinearLayout(context);
        setId(R.id.nativeads_ad_view);
        textView.setId(R.id.nativeads_advertising);
        textView2.setId(R.id.nativeads_title);
        textView4.setId(R.id.nativeads_description);
        starsRatingView.setId(R.id.nativeads_rating);
        textView3.setId(R.id.nativeads_domain);
        textView6.setId(R.id.nativeads_disclaimer);
        button.setId(R.id.nativeads_call_to_action);
        iconAdView.setId(R.id.nativeads_icon);
        q1Var.setId(R.id.nativeads_age_restrictions);
        textView5.setId(R.id.nativeads_votes);
        starsRatingView.setId(R.id.nativeads_rating);
        l3a.n(textView5, "votes_text");
        int iB = l3aVar.b(4.0f);
        setPadding(iB, iB, iB, l3aVar.b(8.0f));
        this.p = l3aVar.b(8.0f);
        int iB2 = l3aVar.b(9.0f);
        this.r = iB2;
        this.q = l3aVar.b(54.0f);
        int iB3 = l3aVar.b(12.0f);
        int iB4 = l3aVar.b(10.0f);
        this.o = l3aVar.b(40.0f);
        int iB5 = l3aVar.b(4.0f);
        this.s = iB5;
        q1Var.setId(R.id.nativeads_age_restrictions);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        gradientDrawable.setStroke(1, -13421773);
        int iB6 = l3aVar.b(2.0f);
        q1Var.setBackgroundDrawable(gradientDrawable);
        q1Var.setGravity(17);
        q1Var.setPadding(iB6, 0, 0, 0);
        button.setPadding(iB4, 0, iB4, 0);
        button.setMaxEms(8);
        button.setLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button.setEllipsize(truncateAt);
        button.setTransformationMethod(null);
        l3a.h(this, -1, -3806472);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{0, 0});
        gradientDrawable2.setStroke(l3aVar.b(1.5f), -16748844);
        gradientDrawable2.setCornerRadius(l3aVar.b(1.0f));
        GradientDrawable gradientDrawable3 = new GradientDrawable(orientation, new int[]{-3806472, -3806472});
        gradientDrawable3.setStroke(l3aVar.b(1.5f), -16748844);
        gradientDrawable3.setCornerRadius(l3aVar.b(1.0f));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable3);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable2);
        button.setBackgroundDrawable(stateListDrawable);
        setClickable(true);
        MediaAdView mediaAdView = new MediaAdView(getContext());
        this.t = mediaAdView;
        mediaAdView.setId(R.id.nativeads_media_view);
        addView(mediaAdView);
        addView(iconAdView);
        addView(button);
        addView(linearLayout);
        addView(linearLayout2);
        linearLayout2.addView(q1Var);
        linearLayout2.addView(textView);
        linearLayout.addView(textView2);
        linearLayout.addView(textView3);
        linearLayout.addView(linearLayout3);
        linearLayout3.addView(starsRatingView);
        linearLayout3.addView(textView5);
        addView(textView4);
        addView(textView6);
        q1Var.setTextColor(-6710887);
        q1Var.setBackgroundColor(0);
        q1Var.setLines(1);
        q1Var.setEllipsize(truncateAt);
        q1Var.setTextSize(2, 10.0f);
        textView.setTextSize(2, 12.0f);
        textView.setTextColor(-6710887);
        textView.setLines(1);
        textView.setEllipsize(truncateAt);
        textView.setPadding(iB2, 0, 0, 0);
        textView2.setTextColor(-16777216);
        textView2.setTextSize(2, 16.0f);
        textView2.setTypeface(null, 1);
        textView2.setLines(1);
        textView2.setEllipsize(truncateAt);
        textView3.setTextColor(-6710887);
        textView3.setTextSize(2, 14.0f);
        textView3.setLines(1);
        textView3.setIncludeFontPadding(false);
        textView3.setEllipsize(truncateAt);
        textView4.setTextColor(-16777216);
        textView4.setTextSize(2, 15.0f);
        textView4.setMaxLines(3);
        textView4.setEllipsize(truncateAt);
        textView5.setTextColor(-6710887);
        textView5.setTextSize(2, 12.0f);
        textView5.setLines(1);
        textView5.setEllipsize(truncateAt);
        textView5.setPadding(iB5, 0, 0, 0);
        textView6.setTextColor(-6710887);
        textView6.setTextSize(2, 12.0f);
        textView6.setMaxLines(2);
        textView6.setEllipsize(truncateAt);
        button.setTextColor(-16748844);
        button.setLines(1);
        button.setTextSize(2, 16.0f);
        button.setEllipsize(truncateAt);
        starsRatingView.setStarSize(iB3);
        linearLayout.setOrientation(1);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        this.n = new a();
        mu9.a |= 64;
    }

    public TextView getAdvertisingTextView() {
        return this.c;
    }

    public TextView getAgeRestrictionTextView() {
        return this.b;
    }

    public Button getCtaButtonView() {
        return this.j;
    }

    public TextView getDescriptionTextView() {
        return this.g;
    }

    public TextView getDisclaimerTextView() {
        return this.k;
    }

    public TextView getDomainOrCategoryTextView() {
        return this.f;
    }

    @Deprecated
    public IconAdView getIconImageView() {
        return this.d;
    }

    public IconAdView getIconView() {
        return this.d;
    }

    public MediaAdView getMediaAdView() {
        return this.t;
    }

    public ai5 getNativeAdViewBinder() {
        return this.n;
    }

    public PromoCardRecyclerView getPromoCardRecyclerView() {
        return null;
    }

    public StarsRatingView getStarsRatingView() {
        return this.h;
    }

    public TextView getTitleTextView() {
        return this.e;
    }

    public TextView getVotesTextView() {
        return this.i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        LinearLayout linearLayout = this.m;
        l3a.r(linearLayout, paddingTop, paddingLeft);
        IconAdView iconAdView = this.d;
        int measuredHeight = iconAdView.getMeasuredHeight();
        LinearLayout linearLayout2 = this.l;
        int iE = l3a.e(measuredHeight, linearLayout2.getMeasuredHeight());
        int bottom = linearLayout.getBottom();
        int i5 = this.s;
        int i6 = bottom + i5;
        l3a.r(iconAdView, ((iE - iconAdView.getMeasuredHeight()) / 2) + i6, paddingLeft);
        l3a.r(linearLayout2, ((iE - linearLayout2.getMeasuredHeight()) / 2) + i6, l3a.e(iconAdView.getRight() + i5, paddingLeft));
        int i7 = this.p;
        int bottom2 = i6 + iE + i7;
        MediaAdView mediaAdView = this.t;
        l3a.r(mediaAdView, bottom2, paddingLeft);
        TextView textView = this.g;
        int measuredHeight2 = textView.getMeasuredHeight();
        Button button = this.j;
        int iE2 = l3a.e(measuredHeight2, button.getMeasuredHeight());
        if (mediaAdView != null) {
            bottom2 = mediaAdView.getBottom();
        }
        int paddingBottom = getPaddingBottom() + bottom2;
        int measuredHeight3 = ((iE2 - textView.getMeasuredHeight()) / 2) + paddingBottom;
        int measuredHeight4 = ((iE2 - button.getMeasuredHeight()) / 2) + paddingBottom;
        l3a.r(textView, measuredHeight3, paddingLeft);
        l3a.m(button, measuredHeight4, getMeasuredWidth() - getPaddingRight());
        l3a.r(this.k, paddingBottom + iE2 + i7, paddingLeft);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int i3 = paddingLeft - this.r;
        LinearLayout linearLayout = this.m;
        l3a.i(linearLayout, i3, paddingTop, Integer.MIN_VALUE);
        int i4 = this.q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        IconAdView iconAdView = this.d;
        iconAdView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredWidth = paddingLeft - iconAdView.getMeasuredWidth();
        int i5 = this.s;
        int measuredHeight = paddingTop - linearLayout.getMeasuredHeight();
        int i6 = this.p;
        LinearLayout linearLayout2 = this.l;
        l3a.i(linearLayout2, measuredWidth - i5, measuredHeight - i6, Integer.MIN_VALUE);
        MediaAdView mediaAdView = this.t;
        if (mediaAdView != null) {
            mediaAdView.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824), View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE));
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(paddingLeft, Integer.MIN_VALUE);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(this.o, 1073741824);
            Button button = this.j;
            button.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            int measuredWidth2 = (paddingLeft - button.getMeasuredWidth()) - i5;
            TextView textView = this.g;
            l3a.i(textView, measuredWidth2, paddingTop, Integer.MIN_VALUE);
            TextView textView2 = this.k;
            l3a.i(textView2, paddingLeft, paddingTop, Integer.MIN_VALUE);
            int paddingBottom = getPaddingBottom() + getPaddingTop() + l3a.e(textView.getMeasuredHeight(), button.getMeasuredHeight()) + getPaddingBottom() + mediaAdView.getMeasuredHeight() + l3a.e(linearLayout2.getMeasuredHeight(), iconAdView.getMeasuredHeight()) + linearLayout.getMeasuredHeight() + i5 + i6;
            int measuredHeight2 = textView2.getVisibility() == 0 ? textView2.getMeasuredHeight() : 0;
            size2 = measuredHeight2 > 0 ? paddingBottom + measuredHeight2 + i6 : paddingBottom;
        }
        setMeasuredDimension(size, size2);
    }

    public void setupView(fi5 fi5Var) {
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdView(Context context) {
        this(context, null);
    }
}
