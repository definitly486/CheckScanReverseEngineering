package com.my.target.nativeads.views;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.my.target.common.views.StarsRatingView;
import com.my.target.zh;
import defpackage.ci5;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public class AppwallAdTeaserView extends RelativeLayout {
    public final l3a b;
    public final zh c;
    public final zh d;
    public final zh e;
    public final TextView f;
    public final LinearLayout g;
    public final TextView h;
    public final StarsRatingView i;
    public final TextView j;
    public final zh k;
    public final TextView l;
    public final zh m;
    public ci5 n;

    public AppwallAdTeaserView(Context context) {
        super(context);
        int iRgb = Color.rgb(36, 36, 36);
        zh zhVar = new zh(context);
        this.e = zhVar;
        LinearLayout linearLayout = new LinearLayout(context);
        this.g = linearLayout;
        TextView textView = new TextView(context);
        this.f = textView;
        zh zhVar2 = new zh(context);
        this.m = zhVar2;
        zh zhVar3 = new zh(context);
        this.d = zhVar3;
        zh zhVar4 = new zh(context);
        this.k = zhVar4;
        TextView textView2 = new TextView(context);
        this.l = textView2;
        TextView textView3 = new TextView(context);
        this.h = textView3;
        StarsRatingView starsRatingView = new StarsRatingView(context);
        this.i = starsRatingView;
        TextView textView4 = new TextView(context);
        this.j = textView4;
        zh zhVar5 = new zh(context);
        this.c = zhVar5;
        l3a l3aVar = new l3a(context);
        this.b = l3aVar;
        float fB = l3aVar.b(6.0f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{fB, fB, fB, fB, fB, fB, fB, fB}, null, null));
        int iB = l3aVar.b(18.0f);
        int iB2 = l3aVar.b(14.0f);
        int iB3 = l3aVar.b(53.0f);
        int iGenerateViewId = View.generateViewId();
        int iGenerateViewId2 = View.generateViewId();
        int iGenerateViewId3 = View.generateViewId();
        setBackgroundColor(-1);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iB3 + iB2 + iB2, iB3 + iB + iB);
        zhVar.setPadding(iB2, iB, iB2, iB);
        addView(zhVar, layoutParams);
        int iB4 = l3aVar.b(20.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iB4, iB4);
        layoutParams2.leftMargin = l3aVar.b(57.0f);
        layoutParams2.topMargin = l3aVar.b(10.0f);
        zhVar5.setLayoutParams(layoutParams2);
        addView(zhVar5);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iB3, iB3);
        layoutParams3.addRule(11);
        layoutParams3.rightMargin = iB2;
        layoutParams3.topMargin = iB;
        linearLayout.setBackgroundDrawable(shapeDrawable);
        linearLayout.setOrientation(1);
        addView(linearLayout, layoutParams3);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        Typeface typeface = Typeface.SANS_SERIF;
        textView.setTypeface(typeface);
        textView.setPadding(0, l3aVar.b(10.0f), 0, l3aVar.b(2.0f));
        textView.setTextSize(2, 13.0f);
        textView.setGravity(49);
        linearLayout.addView(textView, layoutParams4);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(l3aVar.b(20.0f), l3aVar.b(20.0f));
        layoutParams5.gravity = 1;
        linearLayout.addView(zhVar2, layoutParams5);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(l3aVar.b(19.0f), -2);
        layoutParams6.addRule(15);
        layoutParams6.addRule(11);
        layoutParams6.rightMargin = l3aVar.b(30.0f);
        addView(zhVar3, layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(iB3, iB3);
        layoutParams7.addRule(10);
        layoutParams7.addRule(11);
        addView(zhVar4, layoutParams7);
        textView2.setTypeface(typeface);
        textView2.setTextSize(2, 18.0f);
        textView2.setTextColor(iRgb);
        textView2.setPadding(0, 0, l3aVar.b(67.0f), 0);
        textView2.setId(iGenerateViewId3);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams8.leftMargin = l3aVar.b(91.0f);
        layoutParams8.rightMargin = l3aVar.b(15.0f);
        layoutParams8.topMargin = l3aVar.b(13.0f);
        textView2.setLayoutParams(layoutParams8);
        addView(textView2);
        textView3.setTypeface(typeface);
        textView3.setTextSize(2, 13.0f);
        textView3.setTextColor(iRgb);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams9.leftMargin = l3aVar.b(91.0f);
        layoutParams9.addRule(3, iGenerateViewId3);
        textView3.setId(iGenerateViewId);
        textView3.setLayoutParams(layoutParams9);
        addView(textView3);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams10.addRule(3, iGenerateViewId);
        layoutParams10.leftMargin = l3aVar.b(91.0f);
        layoutParams10.topMargin = l3aVar.b(5.0f);
        starsRatingView.setPadding(0, 0, 0, l3aVar.b(20.0f));
        starsRatingView.setStarsPadding(l3aVar.b(2.0f));
        starsRatingView.setStarSize(l3aVar.b(12.0f));
        starsRatingView.setId(iGenerateViewId2);
        addView(starsRatingView, layoutParams10);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams11.addRule(1, iGenerateViewId2);
        layoutParams11.addRule(3, iGenerateViewId);
        layoutParams11.leftMargin = l3aVar.b(9.0f);
        textView4.setTypeface(typeface);
        textView4.setPadding(0, l3aVar.b(2.0f), 0, 0);
        textView4.setTextSize(2, 13.0f);
        textView4.setTextColor(iRgb);
        textView4.setGravity(16);
        addView(textView4, layoutParams11);
    }

    public ci5 getBanner() {
        return this.n;
    }

    public ImageView getBannerIconImageView() {
        return this.e;
    }

    public TextView getCoinsCountTextView() {
        return this.f;
    }

    public ImageView getCoinsIconImageView() {
        return this.m;
    }

    public TextView getDescriptionTextView() {
        return this.h;
    }

    public ImageView getNotificationImageView() {
        return this.c;
    }

    public ImageView getOpenImageView() {
        return this.d;
    }

    public StarsRatingView getStarsRatingView() {
        return this.i;
    }

    public ImageView getStatusIconImageView() {
        return this.k;
    }

    public TextView getTitleTextView() {
        return this.l;
    }

    public TextView getVotesCountTextView() {
        return this.j;
    }

    public void setNativeAppwallBanner(ci5 ci5Var) {
        this.n = ci5Var;
        ci5Var.getClass();
        this.e.setImageData(null);
        zh zhVar = this.c;
        zhVar.setImageData(null);
        this.l.setText((CharSequence) null);
        TextView textView = this.h;
        textView.setText((CharSequence) null);
        zhVar.setVisibility(8);
        this.g.setVisibility(8);
        this.d.setVisibility(8);
        this.k.setVisibility(8);
        this.i.setVisibility(8);
        this.j.setVisibility(8);
        textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), this.b.b(20.0f));
    }

    public void setViewed(boolean z) {
    }
}
