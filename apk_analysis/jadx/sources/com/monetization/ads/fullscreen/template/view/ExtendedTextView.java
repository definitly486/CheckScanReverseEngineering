package com.monetization.ads.fullscreen.template.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import defpackage.dq;
import defpackage.fg;
import defpackage.gg;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import yads.tf;
import yads.uf;
import yads.uk5;
import yads.vx3;
import yads.vx4;
import yads.wx3;
import yads.yf;

/* JADX INFO: loaded from: classes6.dex */
public final class ExtendedTextView extends TextView {
    private wx3 a;
    private final tf b;

    public /* synthetic */ ExtendedTextView(Context context, AttributeSet attributeSet, int i, wx3 wx3Var, uf ufVar, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? new uk5() : wx3Var, (i2 & 16) != 0 ? new uf() : ufVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        tf tfVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT < 27 && (tfVar = this.b) != null) {
            tfVar.a.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        vx3 vx3VarA = this.a.a(i, i2);
        super.onMeasure(vx3VarA.a, vx3VarA.b);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        tf tfVar;
        super.onTextChanged(charSequence, i, i2, i3);
        if (Build.VERSION.SDK_INT < 27 && (tfVar = this.b) != null) {
            tfVar.a.a();
        }
    }

    public final void setAutoSizeTextType(int i) {
        if (Build.VERSION.SDK_INT >= 27) {
            setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        tf tfVar = this.b;
        if (tfVar != null) {
            yf yfVar = tfVar.a;
            ExtendedTextView extendedTextView = yfVar.g;
            if (i == 0) {
                yfVar.a = 0;
                yfVar.d = -1.0f;
                yfVar.c = -1.0f;
                yfVar.e = new int[0];
                yfVar.b = false;
                return;
            }
            if (i != 1) {
                fg.c(vx4.a(i, "Unknown auto-size text type: "));
                return;
            }
            DisplayMetrics displayMetrics = yfVar.h.getResources().getDisplayMetrics();
            float fApplyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
            float fApplyDimension2 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
            if (fApplyDimension <= 0.0f) {
                dq.c("Minimum auto-size text size (", fApplyDimension, "px) is less or equal to (0px)");
                return;
            }
            if (fApplyDimension2 <= fApplyDimension) {
                gg.d("Maximum auto-size text size (", fApplyDimension2, "px) is less or equal to minimum auto-size text size (", fApplyDimension, "px)");
                return;
            }
            yfVar.a = 1;
            yfVar.d = fApplyDimension;
            yfVar.c = 1.0f;
            ExtendedTextView extendedTextView2 = yfVar.g;
            int iFloor = ((int) Math.floor((fApplyDimension2 - fApplyDimension) / 1.0f)) + 1;
            int[] iArr = new int[iFloor];
            for (int i2 = 0; i2 < iFloor; i2++) {
                iArr[i2] = Math.round((i2 * yfVar.c) + yfVar.d);
            }
            if (iFloor != 0) {
                Arrays.sort(iArr);
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < iFloor; i3++) {
                    int i4 = iArr[i3];
                    if (i4 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i4)) < 0) {
                        arrayList.add(Integer.valueOf(i4));
                    }
                }
                if (iFloor != arrayList.size()) {
                    int size = arrayList.size();
                    iArr = new int[size];
                    for (int i5 = 0; i5 < size; i5++) {
                        iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
                    }
                }
            }
            yfVar.e = iArr;
            yfVar.b = true;
            yfVar.a();
        }
    }

    public final void setMeasureSpecProvider(wx3 wx3Var) {
        this.a = wx3Var;
        requestLayout();
        invalidate();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (Build.VERSION.SDK_INT >= 27) {
            super.setTextSize(i, f);
            return;
        }
        tf tfVar = this.b;
        if (tfVar != null) {
            yf yfVar = tfVar.a;
            ExtendedTextView extendedTextView = yfVar.g;
            if (yfVar.a != 0) {
                return;
            }
            yfVar.a(i, f);
        }
    }

    public ExtendedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, null, null, 28, null);
    }

    public ExtendedTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null, null, 24, null);
    }

    public ExtendedTextView(Context context) {
        this(context, null, 0, null, null, 30, null);
    }

    public ExtendedTextView(Context context, AttributeSet attributeSet, int i, wx3 wx3Var, uf ufVar) {
        super(context, attributeSet, i);
        this.a = wx3Var;
        ufVar.getClass();
        this.b = new tf(this);
    }
}
