package com.warefly.checkscan.ui.rating;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import defpackage.b36;
import defpackage.is2;
import defpackage.j59;
import defpackage.kn1;
import defpackage.nl3;
import defpackage.ox6;
import defpackage.p05;
import defpackage.rx6;
import defpackage.u96;
import defpackage.v38;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SmilerRatingBar extends View {
    public static final Bitmap.Config i = Bitmap.Config.ARGB_8888;
    public final Canvas b;
    public final HashMap<rx6, ox6> c;
    public final RectF d;
    public float e;
    public float f;
    public List<v38> g;
    public nl3<? super rx6, j59> h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmilerRatingBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2, 0);
        context.getClass();
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.ic_icon_perfect);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable != null ? drawable.getIntrinsicWidth() : 56, drawable != null ? drawable.getIntrinsicHeight() : 56, i);
        bitmapCreateBitmap.getClass();
        this.b = new Canvas(bitmapCreateBitmap);
        this.c = new HashMap<>();
        this.d = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.g = u96.i(new v38(a(R.drawable.ic_icon_review_very_bad), a(R.drawable.ic_icon_very_bad), true, rx6.VeryBad), new v38(a(R.drawable.ic_icon_review_bad), a(R.drawable.ic_icon_bad), true, rx6.Bad), new v38(a(R.drawable.ic_icon_review_middle), a(R.drawable.ic_icon_middle), true, rx6.Middle), new v38(a(R.drawable.ic_icon_review_good), a(R.drawable.ic_icon_good), true, rx6.Good), new v38(a(R.drawable.ic_icon_review_perfect), a(R.drawable.ic_icon_perfect), true, rx6.Perfect));
    }

    public final Drawable a(int i2) throws is2 {
        Drawable drawable = ContextCompat.getDrawable(getContext(), i2);
        if (drawable != null) {
            return drawable;
        }
        throw new is2(i2);
    }

    public final List<v38> getCurrentSelectedRating() {
        return this.g;
    }

    public final nl3<rx6, j59> getRatingListener() {
        return this.h;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        int i2 = 0;
        for (Object obj : this.g) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                u96.o();
                throw null;
            }
            v38 v38Var = (v38) obj;
            float f = i2;
            float f2 = this.f * f;
            RectF rectF = this.d;
            float f3 = i2 == 0 ? rectF.left : (this.e * f) + rectF.left + f2;
            this.c.put(v38Var.d, new ox6(rectF.top, rectF.bottom, f3, this.e + f3));
            Drawable drawable = v38Var.c ? v38Var.b : v38Var.a;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), i);
            bitmapCreateBitmap.getClass();
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas2.getWidth(), canvas2.getHeight());
            drawable.draw(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f3, rectF.top, (Paint) null);
            i2 = i3;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int paddingEnd = getPaddingEnd() + getPaddingStart() + getSuggestedMinimumWidth();
        Canvas canvas = this.b;
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        setMeasuredDimension(View.resolveSize(Integer.max(paddingEnd, getPaddingStart() + getPaddingEnd() + (this.g.size() * width)), i2), View.resolveSize(height, i3));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        List<v38> list = this.g;
        if (list == null || list.isEmpty()) {
            return;
        }
        float width = (getWidth() - getPaddingEnd()) - getPaddingStart();
        float size = (width / this.g.size()) * this.g.size();
        float width2 = width - (this.b.getWidth() * this.g.size());
        float size2 = width2 / (this.g.size() - 1);
        this.e = (width / this.g.size()) - (width2 / this.g.size());
        this.f = size2;
        float paddingStart = ((width - size) / 2.0f) + getPaddingStart();
        RectF rectF = this.d;
        rectF.left = paddingStart;
        float paddingTop = getPaddingTop();
        rectF.top = paddingTop;
        rectF.right = rectF.left + size;
        rectF.bottom = paddingTop + this.e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Object next;
        v38 v38Var;
        boolean z;
        nl3<? super rx6, j59> nl3Var;
        motionEvent.getClass();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                float x = motionEvent.getX();
                RectF rectF = this.d;
                float f = x - rectF.left;
                float y = motionEvent.getY() - rectF.top;
                Iterator it = p05.o(this.c).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    ox6 ox6Var = (ox6) ((b36) next).c;
                    float f2 = ox6Var.c;
                    if (f <= ox6Var.d && f2 <= f) {
                        float f3 = ox6Var.a;
                        if (y <= ox6Var.b && f3 <= y) {
                            break;
                        }
                    }
                }
                b36 b36Var = (b36) next;
                rx6 rx6Var = b36Var != null ? (rx6) b36Var.b : null;
                if (rx6Var != null) {
                    List<v38> list = this.g;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator<T> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (!((v38) it2.next()).c) {
                                Iterator<v38> it3 = this.g.iterator();
                                int i2 = 0;
                                while (true) {
                                    if (!it3.hasNext()) {
                                        i2 = -1;
                                        break;
                                    }
                                    if (it3.next().d == rx6Var) {
                                        break;
                                    }
                                    i2++;
                                }
                                if (i2 >= 0 && i2 < this.g.size() && !(z = (v38Var = this.g.get(i2)).c)) {
                                    v38 v38VarA = v38.a(v38Var, !z);
                                    List<v38> list2 = this.g;
                                    ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                                    Iterator<T> it4 = list2.iterator();
                                    while (it4.hasNext()) {
                                        arrayList.add(v38.a((v38) it4.next(), false));
                                    }
                                    ArrayList arrayList2 = new ArrayList(arrayList);
                                    arrayList2.remove(i2);
                                    arrayList2.add(i2, v38VarA);
                                    this.g = arrayList2;
                                    if (!v38Var.c && (nl3Var = this.h) != null) {
                                        nl3Var.invoke(rx6Var);
                                    }
                                    invalidate();
                                    return true;
                                }
                            }
                        }
                    }
                    List<v38> list3 = this.g;
                    ArrayList arrayList3 = new ArrayList(kn1.q(list3, 10));
                    for (v38 v38VarA2 : list3) {
                        if (rx6Var != v38VarA2.d) {
                            v38VarA2 = v38.a(v38VarA2, false);
                        }
                        arrayList3.add(v38VarA2);
                    }
                    this.g = arrayList3;
                    nl3<? super rx6, j59> nl3Var2 = this.h;
                    if (nl3Var2 != null) {
                        nl3Var2.invoke(rx6Var);
                    }
                    invalidate();
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final void setRatingListener(nl3<? super rx6, j59> nl3Var) {
        this.h = nl3Var;
    }

    public final void setSelectedRating(rx6 rx6Var) {
        int i2;
        rx6Var.getClass();
        List<v38> list = this.g;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (true) {
            i2 = 0;
            if (!it.hasNext()) {
                break;
            } else {
                arrayList.add(v38.a((v38) it.next(), false));
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        Iterator<v38> it2 = this.g.iterator();
        while (it2.hasNext()) {
            if (it2.next().d == rx6Var) {
                v38 v38VarA = v38.a((v38) arrayList2.get(i2), true);
                arrayList2.remove(i2);
                arrayList2.add(i2, v38VarA);
                this.g = arrayList2;
                invalidate();
            }
            i2++;
        }
        i2 = -1;
        v38 v38VarA2 = v38.a((v38) arrayList2.get(i2), true);
        arrayList2.remove(i2);
        arrayList2.add(i2, v38VarA2);
        this.g = arrayList2;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SmilerRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SmilerRatingBar(Context context) {
        this(context, null);
        context.getClass();
    }
}
