package yads;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.yandex.mobile.ads.R$dimen;
import com.yandex.mobile.ads.R$style;
import com.yandex.mobile.ads.R$styleable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class nr extends HorizontalScrollView {
    public static final FastOutSlowInInterpolator G = new FastOutSlowInInterpolator();
    public static final Pools.SynchronizedPool H = new Pools.SynchronizedPool(16);
    public PagerAdapter A;
    public jr B;
    public lr C;
    public final qu5 D;
    public sg3 E;
    public final Pools.SimplePool F;
    public final ArrayList a;
    public kr b;
    public final ir c;
    public int d;
    public int e;
    public int f;
    public int g;
    public long h;
    public final int i;
    public cf2 j;
    public ColorStateList k;
    public final boolean l;
    public int m;
    public final int n;
    public final int o;
    public final int p;
    public final boolean q;
    public final boolean r;
    public final int s;
    public final an4 t;
    public final int u;
    public final int v;
    public int w;
    public fr x;
    public ValueAnimator y;
    public ViewPager z;

    public nr(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new ArrayList();
        this.h = 300L;
        this.j = cf2.a;
        this.m = Integer.MAX_VALUE;
        this.t = new an4(this, ViewConfiguration.get(getContext()).getScaledTouchSlop());
        this.F = new Pools.SimplePool(12);
        setHorizontalScrollBarEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.monetization_ads_divkit_TabLayout, i, R$style.monetization_ads_divkit_Div_Tabs_IndicatorTabLayout);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout, 0, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabIndicatorPaddingTop, 0);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabIndicatorPaddingBottom, 0);
        this.l = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabTextBoldOnSelection, false);
        this.v = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabContentEnd, 0);
        this.q = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabEllipsizeEnabled, true);
        this.r = typedArrayObtainStyledAttributes2.getBoolean(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabScrollPaddingEnabled, false);
        this.s = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R$styleable.monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabScrollPadding, 0);
        typedArrayObtainStyledAttributes2.recycle();
        ir irVar = new ir(context, dimensionPixelSize, dimensionPixelSize2);
        this.c = irVar;
        super.addView(irVar, 0, new FrameLayout.LayoutParams(-2, -1));
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabIndicatorHeight, 0);
        if (irVar.a != dimensionPixelSize3) {
            irVar.a = dimensionPixelSize3;
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabIndicatorColor, 0);
        if (irVar.b != color) {
            if ((color >> 24) == 0) {
                irVar.b = -1;
            } else {
                irVar.b = color;
            }
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
        int color2 = typedArrayObtainStyledAttributes.getColor(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabBackground, 0);
        if (irVar.c != color2) {
            if ((color2 >> 24) == 0) {
                irVar.c = -1;
            } else {
                irVar.c = color2;
            }
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
        this.D = new qu5(getContext(), irVar);
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPadding, 0);
        this.g = dimensionPixelSize4;
        this.f = dimensionPixelSize4;
        this.e = dimensionPixelSize4;
        this.d = dimensionPixelSize4;
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingStart, dimensionPixelSize4);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingTop, this.e);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingEnd, this.f);
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingBottom, this.g);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabTextAppearance, R$style.monetization_ads_divkit_Div_Tabs_IndicatorTabLayout_Text);
        this.i = resourceId;
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(resourceId, R.styleable.TextAppearance);
        try {
            this.k = typedArrayObtainStyledAttributes3.getColorStateList(R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes3.recycle();
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabTextColor)) {
                this.k = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabTextColor);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabSelectedTextColor)) {
                this.k = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{typedArrayObtainStyledAttributes.getColor(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabSelectedTextColor, 0), this.k.getDefaultColor()});
            }
            this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabMinWidth, -1);
            this.o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabMaxWidth, -1);
            this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabContentStart, 0);
            this.w = typedArrayObtainStyledAttributes.getInt(R$styleable.monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabMode, 1);
            typedArrayObtainStyledAttributes.recycle();
            this.p = getResources().getDimensionPixelSize(R$dimen.monetization_ads_divkit_tab_scrollable_min_width);
            a();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes3.recycle();
            throw th;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(kr krVar, boolean z) {
        if (krVar.c != this) {
            defpackage.fg.c("Tab belongs to a different TabLayout.");
            return;
        }
        xu5 xu5Var = krVar.d;
        ir irVar = this.c;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
        irVar.addView(xu5Var, layoutParams);
        qu5 qu5Var = this.D;
        int childCount = this.c.getChildCount() - 1;
        if (qu5Var.c != null && qu5Var.b.getChildCount() != 1) {
            ir irVar2 = qu5Var.b;
            if (childCount == 0) {
                ImageView imageView = new ImageView(qu5Var.a);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(qu5Var.e, qu5Var.d);
                layoutParams2.gravity = 17;
                imageView.setLayoutParams(layoutParams2);
                imageView.setImageBitmap(qu5Var.c);
                irVar2.addView(imageView, 1);
            } else {
                ImageView imageView2 = new ImageView(qu5Var.a);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(qu5Var.e, qu5Var.d);
                layoutParams3.gravity = 17;
                imageView2.setLayoutParams(layoutParams3);
                imageView2.setImageBitmap(qu5Var.c);
                irVar2.addView(imageView2, childCount);
            }
        }
        if (z) {
            xu5Var.setSelected(true);
        }
        int size = this.a.size();
        krVar.b = size;
        this.a.add(size, krVar);
        int size2 = this.a.size();
        for (int i = size + 1; i < size2; i++) {
            ((kr) this.a.get(i)).b = i;
        }
        if (z) {
            nr nrVar = krVar.c;
            if (nrVar != null) {
                nrVar.b(krVar, true);
            } else {
                defpackage.fg.c("Tab not attached to a TabLayout");
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void b(kr krVar, boolean z) {
        fr frVar;
        kr krVar2 = this.b;
        if (krVar2 == krVar) {
            if (krVar2 != null) {
                fr frVar2 = this.x;
                if (frVar2 != null) {
                    frVar2.b(krVar2);
                }
                a(krVar.b);
                return;
            }
            return;
        }
        if (z) {
            int i = krVar != null ? krVar.b : -1;
            if (i != -1) {
                b(i);
            }
            kr krVar3 = this.b;
            if ((krVar3 == null || krVar3.b == -1) && i != -1) {
                setScrollPosition(i, 0.0f, true);
            } else {
                a(i);
            }
        }
        this.b = krVar;
        if (krVar == null || (frVar = this.x) == null) {
            return;
        }
        frVar.a(krVar);
    }

    public final kr c() {
        kr krVar = (kr) H.acquire();
        if (krVar == null) {
            krVar = new kr();
        }
        krVar.c = this;
        xu5 xu5VarA = (xu5) this.F.acquire();
        if (xu5VarA == null) {
            xu5VarA = a(getContext());
            a(xu5VarA);
        }
        if (krVar != xu5VarA.j) {
            xu5VarA.j = krVar;
            xu5VarA.setText(krVar.a);
            wu5 wu5Var = xu5VarA.i;
            if (wu5Var != null) {
                ((defpackage.y3) wu5Var).b(xu5VarA);
            }
        }
        xu5VarA.setFocusable(true);
        int i = this.n;
        if (i == -1) {
            i = this.w == 0 ? this.p : 0;
        }
        xu5VarA.setMinimumWidth(i);
        krVar.d = xu5VarA;
        return krVar;
    }

    public final void d() {
        e();
        PagerAdapter pagerAdapter = this.A;
        if (pagerAdapter == null) {
            e();
            return;
        }
        int count = pagerAdapter.getCount();
        for (int i = 0; i < count; i++) {
            kr krVarC = c();
            krVarC.a = this.A.getPageTitle(i);
            xu5 xu5Var = krVarC.d;
            if (xu5Var != null) {
                kr krVar = xu5Var.j;
                xu5Var.setText(krVar == null ? null : krVar.a);
                wu5 wu5Var = xu5Var.i;
                if (wu5Var != null) {
                    ((defpackage.y3) wu5Var).b(xu5Var);
                }
            }
            a(krVarC, false);
        }
        ViewPager viewPager = this.z;
        if (viewPager == null || count <= 0) {
            return;
        }
        int currentItem = viewPager.getCurrentItem();
        kr krVar2 = this.b;
        if (currentItem == (krVar2 != null ? krVar2.b : -1) || currentItem >= this.a.size()) {
            return;
        }
        b((kr) this.a.get(currentItem), true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        this.t.a(motionEvent);
        return zDispatchTouchEvent;
    }

    public final void e() {
        int size = this.a.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            xu5 xu5Var = (xu5) this.c.getChildAt(size);
            int iA = this.c.a(size);
            this.c.removeViewAt(iA);
            qu5 qu5Var = this.D;
            if (qu5Var.c != null && qu5Var.b.getChildCount() != 0) {
                ir irVar = qu5Var.b;
                if (iA == 0) {
                    irVar.removeViewAt(0);
                } else {
                    irVar.removeViewAt(iA - 1);
                }
            }
            if (xu5Var != null) {
                if (xu5Var.j != null) {
                    xu5Var.j = null;
                    xu5Var.setText((CharSequence) null);
                    wu5 wu5Var = xu5Var.i;
                    if (wu5Var != null) {
                        ((defpackage.y3) wu5Var).b(xu5Var);
                    }
                }
                xu5Var.setSelected(false);
                this.F.release(xu5Var);
            }
            requestLayout();
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            kr krVar = (kr) it.next();
            it.remove();
            krVar.c = null;
            krVar.d = null;
            krVar.a = null;
            krVar.b = -1;
            H.release(krVar);
        }
        this.b = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingBottom = getPaddingBottom() + getPaddingTop() + defpackage.w65.b(pq.a((Number) 44, getResources().getDisplayMetrics()));
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(paddingBottom, View.MeasureSpec.getSize(i2)), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int iB = this.o;
            if (iB <= 0) {
                iB = size - defpackage.w65.b(pq.a((Number) 56, getResources().getDisplayMetrics()));
            }
            this.m = iB;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            if (this.w != 1) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.onOverScrolled(i, i2, z, z2);
        an4 an4Var = this.t;
        if (an4Var.b && z) {
            ViewCompat.dispatchNestedScroll(an4Var.a, 0, 0, 1, 0, null);
        }
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.t.b = false;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        kr krVar;
        int i5;
        super.onSizeChanged(i, i2, i3, i4);
        if (i3 == 0 || i3 == i || (krVar = this.b) == null || (i5 = krVar.b) == -1) {
            return;
        }
        setScrollPosition(i5, 0.0f, true);
    }

    public void setAnimationDuration(long j) {
        this.h = j;
    }

    public void setAnimationType(er erVar) {
        this.c.a(erVar);
    }

    public void setFocusTracker(sg3 sg3Var) {
        this.E = sg3Var;
    }

    public void setOnTabSelectedListener(fr frVar) {
        this.x = frVar;
    }

    public void setScrollPosition(int i, float f, boolean z) {
        a(i, f, z);
    }

    public void setSelectedTabIndicatorColor(int i) {
        ir irVar = this.c;
        if (irVar.b != i) {
            if ((i >> 24) == 0) {
                irVar.b = -1;
            } else {
                irVar.b = i;
            }
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
    }

    public void setTabBackgroundColor(int i) {
        ir irVar = this.c;
        if (irVar.c != i) {
            if ((i >> 24) == 0) {
                irVar.c = -1;
            } else {
                irVar.c = i;
            }
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setTabDelimiter(Bitmap bitmap, int i, int i2) {
        ir irVar;
        qu5 qu5Var = this.D;
        qu5Var.c = bitmap;
        qu5Var.d = i2;
        qu5Var.e = i;
        ir irVar2 = qu5Var.b;
        if (irVar2.s) {
            for (int childCount = irVar2.getChildCount() - 1; childCount > 0; childCount -= 2) {
                qu5Var.b.removeViewAt(childCount);
            }
        }
        ir irVar3 = qu5Var.b;
        if (irVar3.s) {
            irVar3.s = false;
            float f = 1.0f - irVar3.e;
            if (f != irVar3.t) {
                irVar3.t = f;
                int i3 = irVar3.d + 1;
                if (i3 >= irVar3.l) {
                    i3 = -1;
                }
                irVar3.u = i3;
                ViewCompat.postInvalidateOnAnimation(irVar3);
            }
            irVar3.a();
        }
        if (qu5Var.c != null) {
            int childCount2 = qu5Var.b.getChildCount();
            int i4 = 1;
            while (true) {
                irVar = qu5Var.b;
                if (i4 >= childCount2) {
                    break;
                }
                ImageView imageView = new ImageView(qu5Var.a);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(qu5Var.e, qu5Var.d);
                layoutParams.gravity = 17;
                imageView.setLayoutParams(layoutParams);
                imageView.setImageBitmap(qu5Var.c);
                irVar.addView(imageView, (i4 * 2) - 1);
                i4++;
            }
            if (!irVar.s) {
                irVar.s = true;
                float f2 = 1.0f - irVar.e;
                if (f2 != irVar.t) {
                    irVar.t = f2;
                    int i5 = irVar.d + 1;
                    irVar.u = i5 < irVar.l ? i5 : -1;
                    ViewCompat.postInvalidateOnAnimation(irVar);
                }
                irVar.a();
            }
        }
    }

    public void setTabIndicatorCornersRadii(float[] fArr) {
        ir irVar = this.c;
        if (Arrays.equals(irVar.i, fArr)) {
            return;
        }
        irVar.i = fArr;
        ViewCompat.postInvalidateOnAnimation(irVar);
    }

    public void setTabIndicatorHeight(int i) {
        ir irVar = this.c;
        if (irVar.a != i) {
            irVar.a = i;
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setTabItemSpacing(int i) {
        ir irVar = this.c;
        if (i != irVar.f) {
            irVar.f = i;
            int childCount = irVar.getChildCount();
            for (int i2 = 1; i2 < childCount; i2++) {
                View childAt = irVar.getChildAt(i2);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                marginLayoutParams.leftMargin = irVar.f;
                irVar.updateViewLayout(childAt, marginLayoutParams);
            }
        }
    }

    public void setTabMode(int i) {
        if (i != this.w) {
            this.w = i;
            a();
        }
    }

    public void setTabPaddings(int i, int i2, int i3, int i4) {
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        requestLayout();
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        ColorStateList colorStateList2;
        if (this.k != colorStateList) {
            this.k = colorStateList;
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                xu5 xu5Var = ((kr) this.a.get(i)).d;
                if (xu5Var != null && (colorStateList2 = this.k) != null) {
                    xu5Var.setTextColor(colorStateList2);
                }
            }
        }
    }

    public void setTabsEnabled(boolean z) {
        for (int i = 0; i < this.a.size(); i++) {
            ((kr) this.a.get(i)).d.setEnabled(z);
        }
    }

    public void setupWithViewPager(ViewPager viewPager) {
        jr jrVar;
        jr jrVar2;
        lr lrVar;
        ViewPager viewPager2 = this.z;
        if (viewPager2 != null && (lrVar = this.C) != null) {
            viewPager2.removeOnPageChangeListener(lrVar);
        }
        if (viewPager == null) {
            this.z = null;
            setOnTabSelectedListener(null);
            PagerAdapter pagerAdapter = this.A;
            if (pagerAdapter != null && (jrVar = this.B) != null) {
                pagerAdapter.unregisterDataSetObserver(jrVar);
            }
            this.A = null;
            d();
            return;
        }
        PagerAdapter adapter = viewPager.getAdapter();
        if (adapter == null) {
            defpackage.fg.c("ViewPager does not have a PagerAdapter set");
            return;
        }
        this.z = viewPager;
        lr lrVar2 = this.C;
        if (lrVar2 == null) {
            lrVar2 = new lr(this);
            this.C = lrVar2;
        }
        lrVar2.c = 0;
        lrVar2.b = 0;
        viewPager.addOnPageChangeListener(lrVar2);
        setOnTabSelectedListener(new mr(viewPager));
        PagerAdapter pagerAdapter2 = this.A;
        if (pagerAdapter2 != null && (jrVar2 = this.B) != null) {
            pagerAdapter2.unregisterDataSetObserver(jrVar2);
        }
        this.A = adapter;
        jr jrVar3 = this.B;
        if (jrVar3 == null) {
            jrVar3 = new jr(this);
            this.B = jrVar3;
        }
        adapter.registerDataSetObserver(jrVar3);
        d();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return Math.max(0, ((this.c.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i}));
    }

    public final void b(int i) {
        int childCount = this.c.getChildCount();
        int iA = this.c.a(i);
        if (iA >= childCount || this.c.getChildAt(iA).isSelected()) {
            return;
        }
        int i2 = 0;
        while (i2 < childCount) {
            this.c.getChildAt(i2).setSelected(i2 == iA);
            i2++;
        }
    }

    public final int b() {
        return this.m;
    }

    public final void a(int i, float f, boolean z) {
        int iRound = Math.round(i + f);
        if (iRound < 0 || iRound >= this.c.getChildCount()) {
            return;
        }
        ir irVar = this.c;
        ValueAnimator valueAnimator = irVar.m;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            irVar.m.cancel();
        }
        irVar.d = i;
        irVar.e = f;
        irVar.a();
        float f2 = 1.0f - irVar.e;
        if (f2 != irVar.t) {
            irVar.t = f2;
            int i2 = irVar.d + 1;
            if (i2 >= irVar.l) {
                i2 = -1;
            }
            irVar.u = i2;
            ViewCompat.postInvalidateOnAnimation(irVar);
        }
        ValueAnimator valueAnimator2 = this.y;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.y.cancel();
        }
        scrollTo(a(i, f), 0);
        if (z) {
            b(iRound);
        }
    }

    public final void a(TextView textView) {
    }

    public xu5 a(Context context) {
        return new xu5(context);
    }

    public final void a(xu5 xu5Var) {
        xu5Var.setTabPadding(this.d, this.e, this.f, this.g);
        cf2 cf2Var = this.j;
        int i = this.i;
        xu5Var.c = cf2Var;
        xu5Var.e = i;
        if (!xu5Var.isSelected()) {
            xu5Var.setTextAppearance(xu5Var.getContext(), xu5Var.e);
        }
        xu5Var.d = this.E;
        ColorStateList colorStateList = this.k;
        if (colorStateList != null) {
            xu5Var.setTextColor(colorStateList);
        }
        xu5Var.f = this.l;
        boolean z = this.q;
        xu5Var.g = z;
        xu5Var.setEllipsize(z ? TextUtils.TruncateAt.END : null);
        int i2 = 7;
        xu5Var.setMaxWidthProvider(new defpackage.x3(this, i2));
        xu5Var.i = new defpackage.y3(this, i2);
    }

    public final void a(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && oh6.a(this)) {
            ir irVar = this.c;
            int childCount = irVar.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (irVar.getChildAt(i2).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iA = a(i, 0.0f);
            if (scrollX != iA) {
                if (this.y == null) {
                    ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(new int[0]);
                    this.y = valueAnimatorOfInt;
                    valueAnimatorOfInt.setInterpolator(G);
                    this.y.setDuration(this.h);
                    this.y.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: d4a
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.a.a(valueAnimator);
                        }
                    });
                }
                this.y.setIntValues(scrollX, iA);
                this.y.start();
            }
            this.c.a(i, this.h);
            return;
        }
        setScrollPosition(i, 0.0f, true);
    }

    public final /* synthetic */ void a(ValueAnimator valueAnimator) {
        scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }

    public final int a(int i, float f) {
        if (this.w != 0) {
            return 0;
        }
        ir irVar = this.c;
        View childAt = irVar.getChildAt(irVar.a(i));
        if (childAt == null) {
            return 0;
        }
        int width = childAt.getWidth();
        if (this.r) {
            return childAt.getLeft() - this.s;
        }
        int i2 = i + 1;
        View childAt2 = i2 < this.c.getChildCount() ? this.c.getChildAt(i2) : null;
        return ((childAt.getWidth() / 2) + (childAt.getLeft() + ((int) (((width + (childAt2 != null ? childAt2.getWidth() : 0)) * f) * 0.5f)))) - (getWidth() / 2);
    }

    public final void a() {
        int iMax;
        int iMax2;
        if (this.w == 0) {
            iMax = Math.max(0, this.u - this.d);
            iMax2 = Math.max(0, this.v - this.f);
        } else {
            iMax = 0;
            iMax2 = 0;
        }
        ViewCompat.setPaddingRelative(this.c, iMax, 0, iMax2, 0);
        int i = this.w;
        ir irVar = this.c;
        if (i != 1) {
            irVar.setGravity(GravityCompat.START);
        } else {
            irVar.setGravity(1);
        }
        for (int i2 = 0; i2 < this.c.getChildCount(); i2++) {
            View childAt = this.c.getChildAt(i2);
            if (childAt instanceof xu5) {
                int i3 = this.n;
                if (i3 == -1) {
                    i3 = this.w == 0 ? this.p : 0;
                }
                childAt.setMinimumWidth(i3);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
                childAt.requestLayout();
            }
        }
    }

    public nr(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public nr(Context context) {
        this(context, null);
    }
}
