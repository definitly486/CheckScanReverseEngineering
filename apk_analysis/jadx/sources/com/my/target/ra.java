package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.my.target.k1;
import com.my.target.n0;
import com.my.target.pa;
import com.my.target.ra;
import defpackage.aw9;
import defpackage.l3a;
import defpackage.rk3;
import defpackage.wfa;

/* JADX INFO: loaded from: classes4.dex */
public final class ra extends aw9 {
    public static final /* synthetic */ int j = 0;
    public final qa b;
    public final oa c;
    public final pa d;
    public final fk e;
    public final e6 f;
    public final e6 g;
    public final e6 h;
    public final FrameLayout i;

    public ra(final k1 k1Var, k1 k1Var2, k1.a aVar, int i, int i2, Context context) {
        super(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.i = frameLayout;
        addView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        this.b = new qa(i, context, i2);
        this.c = new oa(context, k1Var2, aVar);
        this.d = new pa(context);
        fk fkVar = new fk(context);
        this.e = fkVar;
        fkVar.setCircleColor(536870912);
        addView(fkVar);
        l3a l3aVar = new l3a(context);
        e6 e6Var = new e6(context);
        this.g = e6Var;
        e6Var.setPadding(l3aVar.b(3.0f));
        e6Var.setVisibility(8);
        e6Var.setOnClickListener(new View.OnClickListener() { // from class: u7a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = ra.j;
                final k1 k1Var3 = k1Var;
                int i4 = k1Var3.i;
                if (i4 == 0) {
                    k1Var3.d();
                    return;
                }
                if (i4 != 1) {
                    return;
                }
                ra raVar = k1Var3.b;
                j1a j1aVar = k1Var3.d;
                if (i4 != 1) {
                    return;
                }
                k1Var3.i = 2;
                n0 n0Var = k1Var3.h;
                if (n0Var != null) {
                    n0Var.d();
                }
                k6a k6aVar = j1aVar.Y;
                pa postView = raVar.getPostView();
                ImageView iconView = postView.getIconView();
                TextView titleView = postView.getTitleView();
                Button ctaButton = postView.getCtaButton();
                h14 h14Var = k6aVar.d;
                if (h14Var != null) {
                    iconView.setImageBitmap((Bitmap) h14Var.d);
                }
                ev9 ev9Var = j1aVar.Z;
                titleView.setText(k6aVar.e);
                titleView.setMaxLines(5);
                titleView.setTextColor(ev9Var.f);
                titleView.setGravity(17);
                ctaButton.setBackgroundColor(ev9Var.a);
                ctaButton.setTextColor(ev9Var.c);
                String strG = k6aVar.f;
                if (TextUtils.isEmpty(strG)) {
                    strG = j1aVar.g();
                }
                ctaButton.setText(strG);
                ctaButton.setOnClickListener(new View.OnClickListener() { // from class: t7a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        k1Var3.c();
                    }
                });
                pa paVar = raVar.d;
                if (paVar.getParent() == null) {
                    raVar.i.addView(paVar, -1, -1);
                }
                k1Var3.b(k6aVar.c);
                raVar.e.setVisibility(0);
                raVar.g.setVisibility(8);
                n0 n0VarA = n0.a((n4a) k6aVar.b, null);
                k1Var3.h = n0VarA;
                n0VarA.b(postView);
                k1Var3.h.c();
            }
        });
        e6Var.a(wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAACBSURBVHgB7ZfBCYAwEASDlaQES7RTS7CEMw/FX8zGFUVn4H4DO+grKQEAQJWIyOXm7bLbdwROcXA6qvqOwP2LNI2qPpEun0iXT6TL/1XkWG4RIiX/tkiXP6Sv8+pfTNyFuCzGSb4jbhbjmn3ien3ien1H4KSMxYOPpqYx1QcAgDorDzK9kn6/FDUAAAAASUVORK5CYII="), true);
        e6Var.setBackgroundColor(536870912);
        aw9.a(e6Var, l3aVar.b(22.0f));
        addView(e6Var);
        e6 e6Var2 = new e6(context);
        this.h = e6Var2;
        e6Var2.setVisibility(8);
        e6Var2.setPadding(l3aVar.b(3.0f));
        e6Var2.setOnClickListener(new View.OnClickListener() { // from class: v7a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = ra.j;
                k1 k1Var3 = k1Var;
                n0 n0Var = k1Var3.h;
                if (n0Var != null) {
                    n0Var.d();
                }
                k1Var3.c.e(k1Var3.d);
            }
        });
        e6Var2.a(wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAABYlAAAWJQFJUiTwAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAACkSURBVHgB7dVBCoQwEETRYi5ubl4zowiNqMR0pxOh/lKheAtNAKWUUu+P5MKtBc4it+yorXnY4NYQ1W+reJFH3H8TkXmQ3XEeZBquBZmOe4IchqtBDsfdIafB3SDnwe1dIAsC+iAmVj7L7+SbO/1xZsEVBlyL3XDm3VgkK46SYUg+OOfSkWw4hNOQdNwQ3ZEeXArSi7tCIiozXOAscksppdQEfQF8gtJN+jx0ZQAAAABJRU5ErkJggg=="), true);
        e6Var2.setBackgroundColor(536870912);
        aw9.a(e6Var2, l3aVar.b(22.0f));
        addView(e6Var2);
        e6 e6Var3 = new e6(context);
        this.f = e6Var3;
        int iB = l3aVar.b(6.0f);
        int iB2 = l3aVar.b(9.0f);
        e6Var3.f = iB;
        e6Var3.i = iB;
        e6Var3.g = iB2;
        e6Var3.h = iB2;
        e6Var3.a(wfa.a(TypedValues.CycleType.TYPE_EASING, "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"), true);
        e6Var3.setBackgroundColor(536870912);
        aw9.a(e6Var3, l3aVar.b(24.0f));
        addView(e6Var3);
    }

    public e6 getAdChoicesButton() {
        return this.f;
    }

    public oa getInteractiveView() {
        return this.c;
    }

    public pa getPostView() {
        return this.d;
    }

    public fk getProgressView() {
        return this.e;
    }

    public qa getVideoView() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        l3a l3aVar = new l3a(getContext());
        FrameLayout frameLayout = this.i;
        frameLayout.layout(0, 0, i5, i6);
        if (frameLayout.getChildCount() > 0) {
            frameLayout.getChildAt(0).layout(0, 0, i5, i6);
        }
        int iB = l3aVar.b(28.0f);
        int iB2 = i5 - l3aVar.b(10.0f);
        int iB3 = l3aVar.b(8.0f);
        this.e.layout(iB2 - iB, iB3, iB2, iB + iB3);
        int iB4 = l3aVar.b(28.0f);
        int iB5 = i5 - l3aVar.b(10.0f);
        int iB6 = l3aVar.b(8.0f);
        this.g.layout(iB5 - iB4, iB6, iB5, iB4 + iB6);
        int iB7 = l3aVar.b(28.0f);
        int iB8 = i5 - l3aVar.b(10.0f);
        int iB9 = l3aVar.b(8.0f);
        this.h.layout(iB8 - iB7, iB9, iB8, iB7 + iB9);
        int iB10 = l3aVar.b(90.0f);
        int iB11 = l3aVar.b(28.0f);
        int iB12 = l3aVar.b(8.0f);
        int iB13 = l3aVar.b(7.0f);
        this.f.layout(iB12, iB13, iB10 + iB12, iB11 + iB13);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        Context context = getContext();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        FrameLayout frameLayout = this.i;
        frameLayout.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        if (frameLayout.getChildCount() > 0) {
            frameLayout.getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
        }
        int iB = (int) rk3.b(context, 1, 28.0f);
        this.e.measure(View.MeasureSpec.makeMeasureSpec(iB, 1073741824), View.MeasureSpec.makeMeasureSpec(iB, 1073741824));
        int iApplyDimension = (int) TypedValue.applyDimension(1, 28.0f, context.getResources().getDisplayMetrics());
        this.g.measure(View.MeasureSpec.makeMeasureSpec(iApplyDimension, 1073741824), View.MeasureSpec.makeMeasureSpec(iApplyDimension, 1073741824));
        this.h.measure(View.MeasureSpec.makeMeasureSpec(iApplyDimension, 1073741824), View.MeasureSpec.makeMeasureSpec(iApplyDimension, 1073741824));
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 90.0f, context.getResources().getDisplayMetrics());
        int iB2 = (int) rk3.b(context, 1, 28.0f);
        this.f.measure(View.MeasureSpec.makeMeasureSpec(iApplyDimension2, 1073741824), View.MeasureSpec.makeMeasureSpec(iB2, 1073741824));
        setMeasuredDimension(size, size2);
    }
}
