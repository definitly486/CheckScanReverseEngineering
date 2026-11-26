package com.monetization.ads.nativeads.view.pager;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.monetization.ads.nativeads.view.pager.MultiBannerControlsContainer;
import com.yandex.mobile.ads.R$id;
import defpackage.j59;
import defpackage.l68;
import defpackage.w65;
import java.util.ArrayList;
import yads.ip0;
import yads.mc4;
import yads.tj2;
import yads.un2;

/* JADX INFO: loaded from: classes6.dex */
public final class MultiBannerControlsContainer extends FrameLayout {
    private final tj2 a;
    private final un2 b;
    private boolean c;

    public MultiBannerControlsContainer(Context context) {
        super(context);
        this.a = new tj2();
        this.b = new un2();
        this.c = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i, int i2) {
        View viewFindViewById = findViewById(R$id.left_scroll_control_button);
        ImageView imageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        View viewFindViewById2 = findViewById(R$id.right_scroll_control_button);
        ImageView imageView2 = viewFindViewById2 instanceof ImageView ? (ImageView) viewFindViewById2 : null;
        View viewFindViewById3 = findViewById(R$id.dot_indicator);
        ImageView imageView3 = viewFindViewById3 instanceof ImageView ? (ImageView) viewFindViewById3 : null;
        if (!this.c) {
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            if (imageView3 == null) {
                return;
            }
            imageView3.setVisibility(8);
            return;
        }
        View viewFindViewById4 = findViewById(R$id.dot_indicator);
        ImageView imageView4 = viewFindViewById4 instanceof ImageView ? (ImageView) viewFindViewById4 : null;
        if (imageView4 != null) {
            imageView4.setVisibility(0);
            tj2 tj2Var = this.a;
            Context context = getContext();
            ip0 ip0Var = tj2Var.a;
            int iA = ip0.a(context, 6.0f);
            int iB = w65.b(TypedValue.applyDimension(1, 4.0f, context.getResources().getDisplayMetrics()));
            int iB2 = w65.b(TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics()));
            int iB3 = w65.b(TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics()));
            int i3 = (iA * i2) + ((i2 + 1) * iB);
            float f = iB3;
            RectF rectF = new RectF(0.0f, 0.0f, i3, f);
            float[] fArr = new float[8];
            for (int i4 = 0; i4 < 8; i4++) {
                fArr[i4] = f;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, rectF, null));
            shapeDrawable.setIntrinsicWidth(i3);
            shapeDrawable.setIntrinsicHeight(iB3);
            shapeDrawable.getPaint().setColor(-16777216);
            shapeDrawable.setAlpha(102);
            ShapeDrawable[] shapeDrawableArr = new ShapeDrawable[i2];
            for (int i5 = 0; i5 < i2; i5++) {
                ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
                shapeDrawable2.setIntrinsicHeight(iA);
                shapeDrawable2.setIntrinsicWidth(iA);
                shapeDrawable2.getPaint().setColor(-1);
                if (i5 != i) {
                    shapeDrawable2.setAlpha(102);
                }
                j59 j59Var = j59.a;
                shapeDrawableArr[i5] = shapeDrawable2;
            }
            l68 l68Var = new l68(2);
            l68Var.a(shapeDrawable);
            l68Var.b(shapeDrawableArr);
            ArrayList<Object> arrayList = l68Var.a;
            LayerDrawable layerDrawable = new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[arrayList.size()]));
            int i6 = 0;
            while (i6 < i2) {
                int i7 = iB + iA;
                int i8 = i6 + 1;
                layerDrawable.setLayerInset(i8, (i7 * i6) + iB, iB2, i3 - (i7 * i8), iB2);
                i6 = i8;
            }
            imageView4.setImageDrawable(layerDrawable);
        }
        View viewFindViewById5 = findViewById(R$id.left_scroll_control_button);
        ImageView imageView5 = viewFindViewById5 instanceof ImageView ? (ImageView) viewFindViewById5 : null;
        View viewFindViewById6 = findViewById(R$id.right_scroll_control_button);
        ImageView imageView6 = viewFindViewById6 instanceof ImageView ? (ImageView) viewFindViewById6 : null;
        if (imageView5 == null || imageView6 == null) {
            if (imageView5 != null) {
                imageView5.setVisibility(8);
            }
            if (imageView6 == null) {
                return;
            }
            imageView6.setVisibility(8);
            return;
        }
        if (i == 0) {
            imageView5.setVisibility(8);
            imageView6.setVisibility(0);
        } else if (i == i2 - 1) {
            imageView5.setVisibility(0);
            imageView6.setVisibility(8);
        } else {
            imageView5.setVisibility(0);
            imageView6.setVisibility(0);
        }
    }

    public final void setOnClickLeftButtonListener(View.OnClickListener onClickListener) {
        View viewFindViewById = findViewById(R$id.left_scroll_control_button);
        ImageView imageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public final void setOnClickRightButtonListener(View.OnClickListener onClickListener) {
        View viewFindViewById = findViewById(R$id.right_scroll_control_button);
        ImageView imageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public MultiBannerControlsContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new tj2();
        this.b = new un2();
        this.c = true;
    }

    public MultiBannerControlsContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new tj2();
        this.b = new un2();
        this.c = true;
    }

    public final void a(ViewPager2 viewPager2) {
        viewPager2.registerOnPageChangeCallback(new mc4(viewPager2, this));
        viewPager2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: ef5
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                MultiBannerControlsContainer.a(this.b, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(MultiBannerControlsContainer multiBannerControlsContainer, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (view instanceof ViewPager2) {
            boolean z = multiBannerControlsContainer.c;
            int i9 = i3 - i;
            int i10 = i4 - i2;
            ip0 ip0Var = multiBannerControlsContainer.b.a;
            boolean z2 = i9 >= ip0.a(view.getContext(), 144.0f) && i10 >= ip0.a(view.getContext(), 96.0f);
            multiBannerControlsContainer.c = z2;
            if (z2 != z) {
                ViewPager2 viewPager2 = (ViewPager2) view;
                int currentItem = viewPager2.getCurrentItem();
                RecyclerView.Adapter adapter = viewPager2.getAdapter();
                multiBannerControlsContainer.a(currentItem, adapter != null ? adapter.getItemCount() : 0);
            }
        }
    }
}
