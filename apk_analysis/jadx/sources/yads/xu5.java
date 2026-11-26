package yads;

import android.content.Context;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import androidx.core.view.ViewCompat;
import com.google.android.material.navigation.NavigationBarView;
import defpackage.rha;

/* JADX INFO: loaded from: classes6.dex */
public final class xu5 extends tt5 {
    public cf2 c;
    public sg3 d;
    public int e;
    public boolean f;
    public boolean g;
    public vu5 h;
    public wu5 i;
    public kr j;
    public hf2 k;
    public hf2 l;
    public boolean m;

    public xu5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new defpackage.ah();
        setGravity(NavigationBarView.ITEM_GRAVITY_START_CENTER);
        setClickable(true);
        setMaxLines(1);
        setSingleLine(true);
        setOnClickListener(new rha());
    }

    public static /* synthetic */ void c(View view) {
    }

    public static /* synthetic */ int h() {
        return Integer.MAX_VALUE;
    }

    @Override // android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return ActionBar.Tab.class.getName();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0057  */
    /* JADX WARN: Code duplicated, block: B:30:0x005c  */
    @Override // yads.tt5, androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        kr krVar;
        CharSequence transformation;
        TextPaint paint;
        Typeface typefaceC;
        TextPaint paint2 = getPaint();
        if (paint2 != null) {
            cf2 cf2Var = this.c;
            if (cf2Var == null) {
                if (cf2Var != null) {
                    typefaceC = cf2Var.c();
                } else {
                    typefaceC = null;
                }
            } else if (this.m) {
                hf2 hf2Var = this.l;
                if (hf2Var != null) {
                    int iOrdinal = hf2Var.ordinal();
                    if (iOrdinal == 1) {
                        typefaceC = cf2Var.c();
                    } else if (iOrdinal != 2) {
                        typefaceC = iOrdinal != 3 ? cf2Var.d() : cf2Var.a();
                    } else {
                        typefaceC = cf2Var.b();
                    }
                } else if (cf2Var != null) {
                    typefaceC = cf2Var.c();
                } else {
                    typefaceC = null;
                }
            } else {
                hf2 hf2Var2 = this.k;
                if (hf2Var2 != null) {
                    int iOrdinal2 = hf2Var2.ordinal();
                    if (iOrdinal2 == 1) {
                        typefaceC = cf2Var.c();
                    } else if (iOrdinal2 != 2) {
                        typefaceC = iOrdinal2 != 3 ? cf2Var.d() : cf2Var.a();
                    } else {
                        typefaceC = cf2Var.b();
                    }
                } else if (cf2Var != null) {
                    typefaceC = cf2Var.c();
                } else {
                    typefaceC = null;
                }
            }
            if (typefaceC != null) {
                paint2.setTypeface(typefaceC);
            }
        }
        if (!this.g) {
            super.onMeasure(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int iA = this.h.a();
        if (iA > 0 && (mode == 0 || size > iA)) {
            i = View.MeasureSpec.makeMeasureSpec(iA, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        Layout layout = getLayout();
        if (layout == null || layout.getEllipsisCount(0) <= 0 || (krVar = this.j) == null || (transformation = krVar.a) == null || (paint = layout.getPaint()) == null) {
            return;
        }
        TransformationMethod transformationMethod = getTransformationMethod();
        if (transformationMethod != null) {
            transformation = transformationMethod.getTransformation(transformation, this);
        }
        if (transformation == null) {
            return;
        }
        setText(TextUtils.ellipsize(transformation, paint, ((int) layout.getLineMax(0)) - paint.measureText("..."), TextUtils.TruncateAt.END));
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        sg3 sg3Var = this.d;
        if (sg3Var != null) {
            pq.a(this, sg3Var);
        }
        kr krVar = this.j;
        if (krVar == null) {
            return zPerformClick;
        }
        nr nrVar = krVar.c;
        if (nrVar != null) {
            nrVar.b(krVar, true);
            return true;
        }
        defpackage.fg.c("Tab not attached to a TabLayout");
        return false;
    }

    public void setActiveTypefaceType(hf2 hf2Var) {
        this.l = hf2Var;
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setAlpha(z ? 1.0f : 0.2f);
    }

    public void setInactiveTypefaceType(hf2 hf2Var) {
        this.k = hf2Var;
    }

    public void setMaxWidthProvider(vu5 vu5Var) {
        this.h = vu5Var;
    }

    @Override // android.widget.TextView, android.view.View
    public void setSelected(boolean z) {
        boolean z2 = isSelected() != z;
        super.setSelected(z);
        setTypefaceType(z);
        if (this.f && z2 && !isSelected()) {
            setTextAppearance(getContext(), this.e);
        }
    }

    public void setTabPadding(int i, int i2, int i3, int i4) {
        ViewCompat.setPaddingRelative(this, i, i2, i3, i4);
    }

    public void setTypefaceType(boolean z) {
        boolean z2 = this.m != z;
        this.m = z;
        if (z2) {
            requestLayout();
        }
    }

    public xu5(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public xu5(Context context) {
        this(context, null);
    }
}
