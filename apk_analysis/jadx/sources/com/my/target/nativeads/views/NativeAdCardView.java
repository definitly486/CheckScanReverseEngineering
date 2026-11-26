package com.my.target.nativeads.views;

import android.R;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import defpackage.l3a;
import defpackage.yn6;

/* JADX INFO: loaded from: classes4.dex */
public class NativeAdCardView extends LinearLayout {
    public static final int h = View.generateViewId();
    public final MediaAdView b;
    public final TextView c;
    public final TextView d;
    public final Button e;
    public View.OnClickListener f;
    public final a g;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NativeAdCardView nativeAdCardView = NativeAdCardView.this;
            View.OnClickListener onClickListener = nativeAdCardView.f;
            if (onClickListener != null) {
                onClickListener.onClick(nativeAdCardView);
            }
        }
    }

    public NativeAdCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new a();
        MediaAdView mediaAdView = new MediaAdView(context);
        this.b = mediaAdView;
        TextView textView = new TextView(context);
        this.c = textView;
        TextView textView2 = new TextView(context);
        this.d = textView2;
        RelativeLayout relativeLayout = new RelativeLayout(context);
        Button button = new Button(context);
        this.e = button;
        l3a l3aVar = new l3a(context);
        LinearLayout linearLayout = new LinearLayout(context);
        l3a.n(this, "card_view");
        l3a.n(mediaAdView, "card_media_view");
        l3a.n(textView, "card_title_text");
        l3a.n(textView2, "card_description_text");
        l3a.n(button, "card_cta_text");
        setOrientation(1);
        setPadding(0, l3aVar.b(8.0f), 0, l3aVar.b(8.0f));
        setClickable(true);
        l3a.h(this, 0, -3806472);
        l3a.k(relativeLayout, 0, -3806472, -3355444, l3aVar.b(1.0f), 0);
        int i2 = h;
        button.setId(i2);
        button.setMaxEms(10);
        button.setLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        button.setEllipsize(truncateAt);
        button.setPadding(l3aVar.b(10.0f), 0, l3aVar.b(10.0f), 0);
        button.setTextSize(2, 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, l3aVar.b(30.0f));
        layoutParams.addRule(11, -1);
        layoutParams.addRule(15, -1);
        layoutParams.setMargins(l3aVar.b(12.0f), l3aVar.b(12.0f), l3aVar.b(12.0f), l3aVar.b(12.0f));
        button.setLayoutParams(layoutParams);
        button.setTransformationMethod(null);
        button.setStateListAnimator(null);
        button.setTextColor(-16748844);
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{0, 0});
        gradientDrawable.setStroke(l3aVar.b(1.0f), -16748844);
        gradientDrawable.setCornerRadius(l3aVar.b(1.0f));
        GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{-3806472, -3806472});
        gradientDrawable2.setStroke(l3aVar.b(1.0f), -16748844);
        gradientDrawable2.setCornerRadius(l3aVar.b(1.0f));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        button.setBackgroundDrawable(stateListDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(0, i2);
        linearLayout.setLayoutParams(layoutParams2);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(1);
        textView.setTextColor(-16777216);
        textView.setTextSize(2, 14.0f);
        textView.setTypeface(null, 1);
        textView.setLines(2);
        textView.setEllipsize(truncateAt);
        textView.setPadding(l3aVar.b(12.0f), l3aVar.b(6.0f), l3aVar.b(1.0f), l3aVar.b(1.0f));
        textView2.setTextColor(-16777216);
        textView2.setTextSize(2, 12.0f);
        textView2.setLines(1);
        textView2.setEllipsize(truncateAt);
        textView2.setPadding(l3aVar.b(12.0f), l3aVar.b(1.0f), l3aVar.b(1.0f), l3aVar.b(12.0f));
        addView(mediaAdView);
        addView(relativeLayout);
        relativeLayout.addView(button);
        relativeLayout.addView(linearLayout);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
    }

    public MediaAdView getMediaAdView() {
        return this.b;
    }

    public View getView() {
        return this;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        MediaAdView mediaAdView = this.b;
        return x > ((float) mediaAdView.getLeft()) && x < ((float) mediaAdView.getRight()) && y > ((float) mediaAdView.getTop()) && y < ((float) mediaAdView.getBottom());
    }

    public void setCard(yn6 yn6Var) {
        yn6Var.c();
        this.c.setText((CharSequence) null);
        yn6Var.b();
        this.d.setText((CharSequence) null);
        yn6Var.a();
        Button button = this.e;
        button.setText((CharSequence) null);
        yn6Var.a();
        button.setContentDescription(null);
    }

    public void setCtaOnClickListener(View.OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f = onClickListener;
        super.setOnClickListener(onClickListener);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setOnClickListener(this.g);
        }
    }

    public NativeAdCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdCardView(Context context) {
        this(context, null);
    }
}
