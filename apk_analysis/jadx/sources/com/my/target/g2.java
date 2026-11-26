package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearSnapHelper;
import com.my.target.g2;
import com.my.target.l;
import com.my.target.w2;
import com.tapjoy.TJAdUnitConstants;
import defpackage.bj;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.gia;
import defpackage.h14;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.mu8;
import defpackage.o6a;
import defpackage.rk3;
import defpackage.s0a;
import defpackage.t2a;
import defpackage.up9;
import defpackage.xda;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class g2 extends ViewGroup implements View.OnTouchListener, l {
    public static final /* synthetic */ int s = 0;
    public final TextView b;
    public final TextView c;
    public final TextView d;
    public final f6 e;
    public final l3a f;
    public final zh g;
    public final f2 h;
    public final HashMap i;
    public final m j;
    public final Button k;
    public final int l;
    public final int m;
    public final int n;
    public final boolean o;
    public final double p;
    public boolean q;
    public l.a r;

    public interface a {
    }

    public g2(Context context) {
        super(context);
        this.q = false;
        l3a.h(this, -1, -3806472);
        boolean z = (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        this.o = z;
        this.p = z ? 0.5d : 0.7d;
        f6 f6Var = new f6(context);
        this.e = f6Var;
        l3a l3aVar = new l3a(context);
        this.f = l3aVar;
        TextView textView = new TextView(context);
        this.b = textView;
        TextView textView2 = new TextView(context);
        this.c = textView2;
        TextView textView3 = new TextView(context);
        this.d = textView3;
        zh zhVar = new zh(context);
        this.g = zhVar;
        Button button = new Button(context);
        this.k = button;
        f2 f2Var = new f2(context);
        this.h = f2Var;
        f6Var.setContentDescription(TJAdUnitConstants.String.CLOSE);
        f6Var.setVisibility(4);
        zhVar.setContentDescription("icon");
        textView.setLines(1);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView2.setLines(1);
        textView2.setEllipsize(truncateAt);
        textView3.setTextColor(-16777216);
        boolean z2 = z;
        button.setPadding(l3aVar.b(15.0f), l3aVar.b(10.0f), l3aVar.b(15.0f), l3aVar.b(10.0f));
        button.setMinimumWidth(l3aVar.b(100.0f));
        button.setMaxEms(12);
        button.setTransformationMethod(null);
        button.setSingleLine();
        button.setTextSize(18.0f);
        button.setEllipsize(truncateAt);
        button.setElevation(l3aVar.b(2.0f));
        l3a.o(button, -16733198, -16746839, l3aVar.b(2.0f));
        button.setTextColor(-1);
        f2Var.setPadding(0, 0, 0, l3aVar.b(8.0f));
        f2Var.setSideSlidesMargins(l3aVar.b(10.0f));
        if (z2) {
            int iB = l3aVar.b(18.0f);
            this.m = iB;
            this.l = iB;
            textView.setTextSize((int) rk3.b(context, 2, 24.0f));
            textView3.setTextSize((int) TypedValue.applyDimension(2, 20.0f, context.getResources().getDisplayMetrics()));
            textView2.setTextSize((int) TypedValue.applyDimension(2, 20.0f, context.getResources().getDisplayMetrics()));
            this.n = l3aVar.b(96.0f);
            textView.setTypeface(null, 1);
        } else {
            this.l = l3aVar.b(12.0f);
            this.m = l3aVar.b(10.0f);
            textView.setTextSize(22.0f);
            textView3.setTextSize(18.0f);
            textView2.setTextSize(18.0f);
            this.n = l3aVar.b(64.0f);
        }
        m mVar = new m(context);
        this.j = mVar;
        l3a.n(this, "ad_view");
        l3a.n(textView, "title_text");
        l3a.n(textView3, "description_text");
        l3a.n(zhVar, "icon_image");
        l3a.n(f6Var, "close_button");
        l3a.n(textView2, "category_text");
        addView(f2Var);
        addView(zhVar);
        addView(textView);
        addView(textView2);
        addView(mVar);
        addView(textView3);
        addView(f6Var);
        addView(button);
        this.i = new HashMap();
    }

    private void setClickAreaActual(t2a t2aVar) {
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.l;
        boolean z3 = t2aVar.m;
        if (z) {
            l3a.h(this, -1, -3806472);
        }
        boolean z4 = true;
        Boolean boolValueOf = Boolean.valueOf(t2aVar.a || z3);
        HashMap map = this.i;
        TextView textView = this.b;
        map.put(textView, boolValueOf);
        Boolean boolValueOf2 = Boolean.valueOf(t2aVar.k || z3);
        TextView textView2 = this.c;
        map.put(textView2, boolValueOf2);
        Boolean boolValueOf3 = Boolean.valueOf(t2aVar.c || z3);
        zh zhVar = this.g;
        map.put(zhVar, boolValueOf3);
        Boolean boolValueOf4 = Boolean.valueOf(t2aVar.b || z3);
        TextView textView3 = this.d;
        map.put(textView3, boolValueOf4);
        Boolean boolValueOf5 = Boolean.valueOf(z2 || t2aVar.g || z3);
        Button button = this.k;
        map.put(button, boolValueOf5);
        if (!z2 && !z3) {
            z4 = false;
        }
        map.put(this, Boolean.valueOf(z4));
        textView.setOnTouchListener(this);
        textView2.setOnTouchListener(this);
        zhVar.setOnTouchListener(this);
        textView3.setOnTouchListener(this);
        button.setOnTouchListener(this);
        setOnTouchListener(this);
    }

    private void setClickAreaLegacy(t2a t2aVar) {
        boolean z = t2aVar.m;
        boolean z2 = t2aVar.l;
        boolean z3 = true;
        z3 = true;
        Button button = this.k;
        if (z) {
            setOnClickListener(new mu8(this, z3 ? 1 : 0));
            l3a.h(this, -1, -3806472);
            setClickable(true);
            button.setOnClickListener(new View.OnClickListener() { // from class: lv9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i = g2.s;
                    l.a aVar = this.b.r;
                    if (aVar != null) {
                        ((w2.b) aVar).b(2, new gia());
                    }
                }
            });
            return;
        }
        TextView textView = this.b;
        textView.setOnTouchListener(this);
        TextView textView2 = this.c;
        textView2.setOnTouchListener(this);
        zh zhVar = this.g;
        zhVar.setOnTouchListener(this);
        TextView textView3 = this.d;
        textView3.setOnTouchListener(this);
        button.setOnTouchListener(this);
        setOnTouchListener(this);
        Boolean boolValueOf = Boolean.valueOf(t2aVar.a);
        HashMap map = this.i;
        map.put(textView, boolValueOf);
        map.put(textView2, Boolean.valueOf(t2aVar.k));
        map.put(zhVar, Boolean.valueOf(t2aVar.c));
        map.put(textView3, Boolean.valueOf(t2aVar.b));
        if (!z2 && !t2aVar.g) {
            z3 = false;
        }
        map.put(button, Boolean.valueOf(z3));
        map.put(this, Boolean.valueOf(z2));
    }

    @Override // com.my.target.l
    public final void c() {
        this.e.setVisibility(0);
    }

    @Override // com.my.target.l
    public View getCloseButton() {
        return this.e;
    }

    public int[] getNumbersOfCurrentShowingCards() {
        f2 f2Var = this.h;
        int iFindFirstVisibleItemPosition = f2Var.getCardLayoutManager().findFirstVisibleItemPosition();
        int iFindLastCompletelyVisibleItemPosition = f2Var.getCardLayoutManager().findLastCompletelyVisibleItemPosition();
        int i = 0;
        if (iFindFirstVisibleItemPosition == -1 || iFindLastCompletelyVisibleItemPosition == -1) {
            return new int[0];
        }
        int i2 = (iFindLastCompletelyVisibleItemPosition - iFindFirstVisibleItemPosition) + 1;
        int[] iArr = new int[i2];
        while (i < i2) {
            iArr[i] = iFindFirstVisibleItemPosition;
            i++;
            iFindFirstVisibleItemPosition++;
        }
        return iArr;
    }

    @Override // com.my.target.l
    public View getView() {
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i3 - i;
        int i7 = i4 - i2;
        f6 f6Var = this.e;
        f6Var.layout(i3 - f6Var.getMeasuredWidth(), i2, i3, f6Var.getMeasuredHeight() + i2);
        int left = f6Var.getLeft();
        m mVar = this.j;
        l3a.j(mVar, left - mVar.getMeasuredWidth(), f6Var.getTop(), f6Var.getLeft(), f6Var.getBottom());
        boolean z2 = this.o;
        TextView textView = this.d;
        f2 f2Var = this.h;
        TextView textView2 = this.c;
        TextView textView3 = this.b;
        int i8 = this.m;
        zh zhVar = this.g;
        if (i7 > i6 || z2) {
            int bottom = f6Var.getBottom();
            int measuredHeight = (i8 * 2) + textView.getMeasuredHeight() + Math.max(textView2.getMeasuredHeight() + textView3.getMeasuredHeight(), zhVar.getMeasuredHeight()) + f2Var.getMeasuredHeight();
            if (measuredHeight < i7 && (i5 = (i7 - measuredHeight) / 2) > bottom) {
                bottom = i5;
            }
            int i9 = i + i8;
            zhVar.layout(i9, bottom, zhVar.getMeasuredWidth() + i + i8, zhVar.getMeasuredHeight() + i2 + bottom);
            textView3.layout(zhVar.getRight(), bottom, textView3.getMeasuredWidth() + zhVar.getRight(), textView3.getMeasuredHeight() + bottom);
            textView2.layout(zhVar.getRight(), textView3.getBottom(), textView2.getMeasuredWidth() + zhVar.getRight(), textView2.getMeasuredHeight() + textView3.getBottom());
            int iMax = Math.max(Math.max(zhVar.getBottom(), textView2.getBottom()), textView3.getBottom());
            textView.layout(i9, iMax, textView.getMeasuredWidth() + i9, textView.getMeasuredHeight() + iMax);
            int iMax2 = Math.max(iMax, textView.getBottom()) + i8;
            f2Var.layout(i9, iMax2, i3, f2Var.getMeasuredHeight() + iMax2);
            LinearSnapHelper linearSnapHelper = f2Var.m;
            if (z2) {
                linearSnapHelper.attachToRecyclerView(null);
                return;
            } else {
                linearSnapHelper.attachToRecyclerView(f2Var);
                return;
            }
        }
        f2Var.m.attachToRecyclerView(null);
        int i10 = i4 - i8;
        zhVar.layout(i8, i10 - zhVar.getMeasuredHeight(), zhVar.getMeasuredWidth() + i8, i10);
        int measuredHeight2 = zhVar.getMeasuredHeight();
        Button button = this.k;
        int iMax3 = ((Math.max(measuredHeight2, button.getMeasuredHeight()) - textView3.getMeasuredHeight()) - textView2.getMeasuredHeight()) / 2;
        if (iMax3 < 0) {
            iMax3 = 0;
        }
        int i11 = i10 - iMax3;
        textView2.layout(zhVar.getRight(), i11 - textView2.getMeasuredHeight(), textView2.getMeasuredWidth() + zhVar.getRight(), i11);
        textView3.layout(zhVar.getRight(), textView2.getTop() - textView3.getMeasuredHeight(), textView3.getMeasuredWidth() + zhVar.getRight(), textView2.getTop());
        int iMax4 = (Math.max(zhVar.getMeasuredHeight(), textView2.getMeasuredHeight() + textView3.getMeasuredHeight()) - button.getMeasuredHeight()) / 2;
        if (iMax4 < 0) {
            iMax4 = 0;
        }
        int i12 = i3 - i8;
        int i13 = i10 - iMax4;
        button.layout(i12 - button.getMeasuredWidth(), i13 - button.getMeasuredHeight(), i12, i13);
        f2Var.layout(i8, i8, i3, f2Var.getMeasuredHeight() + i8);
        textView.layout(0, 0, 0, 0);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
        f6 f6Var = this.e;
        f6Var.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int i3 = this.n;
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        zh zhVar = this.g;
        zhVar.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
        this.j.measure(i, i2);
        boolean z = this.o;
        f2 f2Var = this.h;
        TextView textView = this.c;
        TextView textView2 = this.b;
        Button button = this.k;
        int i4 = this.m;
        if (size2 > size || z) {
            button.setVisibility(8);
            int measuredHeight = f6Var.getMeasuredHeight();
            if (z) {
                measuredHeight = i4;
            }
            textView2.measure(View.MeasureSpec.makeMeasureSpec((size - (i4 * 2)) - zhVar.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            textView.measure(View.MeasureSpec.makeMeasureSpec((size - (i4 * 2)) - zhVar.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            int iMakeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(size - (i4 * 2), Integer.MIN_VALUE);
            int iMakeMeasureSpec6 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
            TextView textView3 = this.d;
            textView3.measure(iMakeMeasureSpec5, iMakeMeasureSpec6);
            int iMax = ((size2 - measuredHeight) - Math.max(textView.getMeasuredHeight() + textView2.getMeasuredHeight(), zhVar.getMeasuredHeight() - (i4 * 2))) - textView3.getMeasuredHeight();
            int i5 = size - i4;
            if (size2 > size) {
                double d = iMax / size2;
                double d2 = this.p;
                if (d > d2) {
                    iMax = (int) (((double) size2) * d2);
                }
            }
            if (z) {
                f2Var.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(iMax - (i4 * 2), Integer.MIN_VALUE));
            } else {
                f2Var.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(iMax - (i4 * 2), 1073741824));
            }
        } else {
            button.setVisibility(0);
            button.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            int measuredWidth = button.getMeasuredWidth();
            int i6 = (size / 2) - (i4 * 2);
            if (measuredWidth > i6) {
                button.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            }
            int measuredWidth2 = (size - zhVar.getMeasuredWidth()) - measuredWidth;
            int i7 = this.l;
            textView2.measure(View.MeasureSpec.makeMeasureSpec((measuredWidth2 - i7) - i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            textView.measure(View.MeasureSpec.makeMeasureSpec((((size - zhVar.getMeasuredWidth()) - measuredWidth) - i7) - i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
            f2Var.measure(View.MeasureSpec.makeMeasureSpec(size - i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec((((size2 - Math.max(zhVar.getMeasuredHeight(), Math.max(button.getMeasuredHeight(), textView.getMeasuredHeight() + textView2.getMeasuredHeight()))) - (i4 * 2)) - f2Var.getPaddingBottom()) - f2Var.getPaddingTop(), Integer.MIN_VALUE));
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        e6a d6aVar;
        boolean z = this.q;
        HashMap map = this.i;
        int i = 2;
        Button button = this.k;
        if (!z) {
            if (!map.containsKey(view)) {
                return false;
            }
            if (((Boolean) map.get(view)).booleanValue()) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    setBackgroundColor(-3806472);
                    return true;
                }
                if (action == 1) {
                    setBackgroundColor(-1);
                    if (this.r != null) {
                        ((w2.b) this.r).b((view == button && Boolean.TRUE.equals(map.get(button))) ? 2 : 1, new gia());
                    }
                } else if (action == 3) {
                    setBackgroundColor(-1);
                    return true;
                }
            }
            return true;
        }
        if (!map.containsKey(view)) {
            return false;
        }
        if (((Boolean) map.get(view)).booleanValue()) {
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                setBackgroundColor(-3806472);
                return true;
            }
            if (action2 == 1) {
                setBackgroundColor(-1);
                if (this.r != null) {
                    int i2 = (view == button && Boolean.TRUE.equals(map.get(button))) ? 2 : 1;
                    if (motionEvent.getAction() == 1) {
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        float f = view.getContext().getResources().getDisplayMetrics().widthPixels;
                        float f2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
                        int[] iArr = new int[2];
                        view.getLocationOnScreen(iArr);
                        d6aVar = new o6a((iArr[0] + x) / f, (iArr[1] + y) / f2);
                    } else {
                        d6aVar = null;
                    }
                    if (d6aVar == null) {
                        d6aVar = new d6a();
                    }
                    if (view == button && Boolean.TRUE.equals(map.get(button))) {
                        i = 64;
                    } else if (view == this.b) {
                        i = 1;
                    } else if (view == this.c) {
                        i = 1024;
                    } else if (view == this.g) {
                        i = 4;
                    } else if (view != this.d) {
                        i = 2048;
                    }
                    ((w2.b) this.r).b(i2, new up9(i, d6aVar));
                }
            } else if (action2 == 3) {
                setBackgroundColor(-1);
                return true;
            }
        }
        return true;
    }

    @Override // com.my.target.l
    public void setBanner(xda xdaVar) {
        Bitmap bitmap;
        this.q = xdaVar.Q.c;
        h14 h14Var = xdaVar.R;
        f6 f6Var = this.e;
        if (h14Var == null || (bitmap = (Bitmap) h14Var.d) == null) {
            Bitmap bitmapA = kv9.a(this.f.b(28.0f));
            if (bitmapA != null) {
                f6Var.a(bitmapA, false);
            }
        } else {
            f6Var.a(bitmap, true);
        }
        this.k.setText(xdaVar.g());
        h14 h14Var2 = xdaVar.q;
        if (h14Var2 != null) {
            int i = h14Var2.b;
            int i2 = h14Var2.c;
            zh zhVar = this.g;
            zhVar.setPlaceholderDimensions(i, i2);
            s0a.c(h14Var2, zhVar);
        }
        TextView textView = this.b;
        textView.setTextColor(-16777216);
        textView.setText(xdaVar.e);
        String str = xdaVar.j;
        String str2 = xdaVar.k;
        String strC = TextUtils.isEmpty(str) ? "" : bj.c("", str);
        if (!TextUtils.isEmpty(strC) && !TextUtils.isEmpty(str2)) {
            strC = strC.concat(", ");
        }
        if (!TextUtils.isEmpty(str2)) {
            strC = bj.c(strC, str2);
        }
        boolean zIsEmpty = TextUtils.isEmpty(strC);
        TextView textView2 = this.c;
        if (zIsEmpty) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(strC);
            textView2.setVisibility(0);
        }
        this.d.setText(xdaVar.c);
        this.h.a(xdaVar.Y);
        q qVar = xdaVar.H;
        m mVar = this.j;
        if (qVar == null) {
            mVar.setVisibility(8);
        } else {
            mVar.setImageBitmap((Bitmap) qVar.a.d);
            mVar.setOnClickListener(new y(this));
        }
    }

    public void setCarouselListener(a aVar) {
        this.h.setCarouselListener(aVar);
    }

    @Override // com.my.target.l
    public void setClickArea(t2a t2aVar) {
        if (this.q) {
            setClickAreaActual(t2aVar);
        } else {
            setClickAreaLegacy(t2aVar);
        }
    }

    @Override // com.my.target.l
    public void setInterstitialPromoViewListener(l.a aVar) {
        this.r = aVar;
    }
}
