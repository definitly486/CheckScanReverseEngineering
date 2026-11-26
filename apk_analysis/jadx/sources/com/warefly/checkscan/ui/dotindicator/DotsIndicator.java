package com.warefly.checkscan.ui.dotindicator;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;
import com.warefly.checkscan.ui.dotindicator.DotsIndicator;
import defpackage.aa4;
import defpackage.gq2;
import defpackage.ie9;
import defpackage.ul2;
import defpackage.yw6;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class DotsIndicator extends BaseDotsIndicator {
    public static final /* synthetic */ int q = 0;
    public final LinearLayout j;
    public final float k;
    public final boolean l;
    public final float m;
    public final int n;
    public int o;
    public final ArgbEvaluator p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DotsIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.p = new ArgbEvaluator();
        this.k = 2.5f;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, yw6.b);
            typedArrayObtainStyledAttributes.getClass();
            this.n = typedArrayObtainStyledAttributes.getInteger(7, 0);
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.j = linearLayout;
            linearLayout.setOrientation(this.n);
            LinearLayout linearLayout2 = this.j;
            if (linearLayout2 == null) {
                aa4.j("linearLayout");
                throw null;
            }
            addView(linearLayout2, -2, -2);
            setSelectedDotColor(typedArrayObtainStyledAttributes.getColor(9, -16711681));
            float f = typedArrayObtainStyledAttributes.getFloat(6, 2.5f);
            this.k = f;
            if (f < 1.0f) {
                this.k = 1.0f;
            }
            this.l = typedArrayObtainStyledAttributes.getBoolean(8, false);
            this.m = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
        if (isInEditMode()) {
            for (int i2 = 0; i2 < 5; i2++) {
                a(i2);
            }
            d();
        }
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator
    public final void a(final int i) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dot_layout, (ViewGroup) this, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.dot);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.getClass();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        viewInflate.setLayoutDirection(0);
        int dotsSize = (int) getDotsSize();
        layoutParams2.height = dotsSize;
        layoutParams2.width = dotsSize;
        if (this.n == 1) {
            layoutParams2.setMargins(0, (int) getDotsSpacing(), 0, (int) getDotsSpacing());
        } else {
            layoutParams2.setMargins((int) getDotsSpacing(), 0, (int) getDotsSpacing(), 0);
        }
        gq2 gq2Var = new gq2();
        gq2Var.setCornerRadius(getDotsCornerRadius());
        if (isInEditMode()) {
            gq2Var.setColor(i == 0 ? this.o : getDotsColor());
        } else {
            BaseDotsIndicator.a pager = getPager();
            gq2Var.setColor((pager == null || pager.a() != i) ? getDotsColor() : this.o);
        }
        imageView.setBackground(gq2Var);
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: hq2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseDotsIndicator.a pager2;
                int i2 = DotsIndicator.q;
                DotsIndicator dotsIndicator = this.b;
                if (dotsIndicator.getDotsClickable()) {
                    BaseDotsIndicator.a pager3 = dotsIndicator.getPager();
                    int count = pager3 != null ? pager3.getCount() : 0;
                    int i3 = i;
                    if (i3 >= count || (pager2 = dotsIndicator.getPager()) == null) {
                        return;
                    }
                    pager2.b(i3);
                }
            }
        });
        float f = this.m;
        ie9.a((int) (0.8f * f), viewInflate);
        int i2 = (int) (2.0f * f);
        viewInflate.setPadding(viewInflate.getPaddingLeft(), i2, viewInflate.getPaddingRight(), i2);
        imageView.setElevation(f);
        this.b.add(imageView);
        LinearLayout linearLayout = this.j;
        if (linearLayout != null) {
            linearLayout.addView(viewInflate);
        } else {
            aa4.j("linearLayout");
            throw null;
        }
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator
    public final a c() {
        return new a(this);
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator
    public final void f() {
        LinearLayout linearLayout = this.j;
        if (linearLayout == null) {
            aa4.j("linearLayout");
            throw null;
        }
        if (linearLayout == null) {
            aa4.j("linearLayout");
            throw null;
        }
        linearLayout.removeViewAt(linearLayout.getChildCount() - 1);
        ArrayList<ImageView> arrayList = this.b;
        arrayList.remove(arrayList.size() - 1);
    }

    public final int getSelectedDotColor() {
        return this.o;
    }

    @Override // com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator
    public BaseDotsIndicator.b getType() {
        return BaseDotsIndicator.b.DEFAULT;
    }

    public final void setSelectedDotColor(int i) {
        this.o = i;
        e();
    }

    @ul2
    public final void setSelectedPointColor(int i) {
        setSelectedDotColor(i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
        context.getClass();
    }

    public /* synthetic */ DotsIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DotsIndicator(Context context) {
        this(context, null, 6, 0);
        context.getClass();
    }
}
