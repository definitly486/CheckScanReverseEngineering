package com.warefly.checkscan.ui.dotindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;
import defpackage.ah;
import defpackage.ed0;
import defpackage.ge9;
import defpackage.gw5;
import defpackage.he9;
import defpackage.jq2;
import defpackage.lh;
import defpackage.ul2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseDotsIndicator extends FrameLayout {
    public static final /* synthetic */ int i = 0;
    public final ArrayList<ImageView> b;
    public boolean c;
    public int d;
    public float e;
    public float f;
    public float g;
    public a h;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        int a();

        void b(int i);

        void c(gw5 gw5Var);

        void d();

        boolean e();

        int getCount();
    }

    public enum b {
        DEFAULT;

        private final int[] styleableId;
        private final float defaultSize = 16.0f;
        private final float defaultSpacing = 4.0f;
        private final int dotsColorId = 1;
        private final int dotsSizeId = 4;
        private final int dotsSpacingId = 5;
        private final int dotsCornerRadiusId = 2;
        private final int dotsClickableId = 0;

        b() {
            this.styleableId = iArr;
        }

        public final float a() {
            return this.defaultSize;
        }

        public final float d() {
            return this.defaultSpacing;
        }

        public final int e() {
            return this.dotsClickableId;
        }

        public final int f() {
            return this.dotsColorId;
        }

        public final int g() {
            return this.dotsCornerRadiusId;
        }

        public final int i() {
            return this.dotsSizeId;
        }

        public final int j() {
            return this.dotsSpacingId;
        }

        public final int[] k() {
            return this.styleableId;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDotsIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        context.getClass();
        this.b = new ArrayList<>();
        this.c = true;
        this.d = -16711681;
        float fA = getContext().getResources().getDisplayMetrics().density * getType().a();
        this.e = fA;
        this.f = fA / 2.0f;
        this.g = getContext().getResources().getDisplayMetrics().density * getType().d();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, getType().k());
            typedArrayObtainStyledAttributes.getClass();
            setDotsColor(typedArrayObtainStyledAttributes.getColor(getType().f(), -16711681));
            this.e = typedArrayObtainStyledAttributes.getDimension(getType().i(), this.e);
            this.f = typedArrayObtainStyledAttributes.getDimension(getType().g(), this.f);
            this.g = typedArrayObtainStyledAttributes.getDimension(getType().j(), this.g);
            this.c = typedArrayObtainStyledAttributes.getBoolean(getType().e(), true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public abstract void a(int i2);

    public final void b(ViewPager2 viewPager2) {
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter == null) {
            ah.f("Please set an adapter to the view pager before initializing the dots indicator");
            return;
        }
        adapter.registerAdapterDataObserver(new he9(new jq2(this)));
        setPager(new ge9(viewPager2));
        d();
    }

    public abstract com.warefly.checkscan.ui.dotindicator.a c();

    public final void d() {
        if (this.h == null) {
            return;
        }
        post(new lh(this, 2));
    }

    public final void e() {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
        }
    }

    public abstract void f();

    public final boolean getDotsClickable() {
        return this.c;
    }

    public final int getDotsColor() {
        return this.d;
    }

    public final float getDotsCornerRadius() {
        return this.f;
    }

    public final float getDotsSize() {
        return this.e;
    }

    public final float getDotsSpacing() {
        return this.g;
    }

    public final a getPager() {
        return this.h;
    }

    public abstract b getType();

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new ed0(this, 0));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (getLayoutDirection() == 1) {
            setLayoutDirection(0);
            setRotation(180.0f);
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        post(new Runnable() { // from class: dd0
            @Override // java.lang.Runnable
            public final void run() {
                int i2 = BaseDotsIndicator.i;
                this.b.d();
            }
        });
    }

    public final void setDotsClickable(boolean z) {
        this.c = z;
    }

    public final void setDotsColor(int i2) {
        this.d = i2;
        e();
    }

    public final void setDotsCornerRadius(float f) {
        this.f = f;
    }

    public final void setDotsSize(float f) {
        this.e = f;
    }

    public final void setDotsSpacing(float f) {
        this.g = f;
    }

    public final void setPager(a aVar) {
        this.h = aVar;
    }

    @ul2
    public final void setPointsColor(int i2) {
        setDotsColor(i2);
        e();
    }

    @ul2
    public final void setViewPager2(ViewPager2 viewPager2) {
        viewPager2.getClass();
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter == null) {
            ah.f("Please set an adapter to the view pager before initializing the dots indicator");
            return;
        }
        adapter.registerAdapterDataObserver(new he9(new jq2(this)));
        setPager(new ge9(viewPager2));
        d();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseDotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
        context.getClass();
    }

    public /* synthetic */ BaseDotsIndicator(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseDotsIndicator(Context context) {
        this(context, null, 6, 0);
        context.getClass();
    }
}
