package com.my.target.nativeads.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.WebmConstants;
import defpackage.l3a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class CollageView extends FrameLayout {
    public final ArrayList b;
    public int[] c;
    public int d;
    public int e;
    public int f;

    public CollageView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, 0);
        this.b = new ArrayList();
        this.c = new int[0];
        this.d = 0;
        this.e = 0;
        this.f = l3a.d(2, getContext());
    }

    public int getPlaceholderHeight() {
        return this.e;
    }

    public int getPlaceholderWidth() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:27:0x00f0  */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int mode = View.MeasureSpec.getMode(i);
        int size = (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.getSize(i) : l3a.d(280, getContext());
        int i6 = (int) ((size / this.d) * this.e);
        setMeasuredDimension(size, i6);
        ArrayList arrayList = this.b;
        boolean z = true;
        int i7 = 0;
        if (arrayList.size() == 3) {
            int i8 = (size - this.f) / 2;
            View view = (FrameLayout) arrayList.get(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.width = i8;
            layoutParams.height = i6;
            layoutParams.leftMargin = 0;
            layoutParams.topMargin = 0;
            view.setLayoutParams(layoutParams);
            measureChild(view, i, i2);
            View view2 = (FrameLayout) arrayList.get(1);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
            int i9 = size - i8;
            int i10 = this.f;
            layoutParams2.width = i9 - i10;
            layoutParams2.height = i8;
            layoutParams2.leftMargin = i10 + i8;
            layoutParams2.topMargin = 0;
            view2.setLayoutParams(layoutParams2);
            measureChild(view2, i, i2);
            View view3 = (FrameLayout) arrayList.get(2);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) view3.getLayoutParams();
            int i11 = this.f;
            layoutParams3.width = i9 - i11;
            layoutParams3.height = (i6 - i8) - i11;
            int i12 = i8 + i11;
            layoutParams3.leftMargin = i12;
            layoutParams3.topMargin = i12;
            view3.setLayoutParams(layoutParams3);
            measureChild(view3, i, i2);
            return;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int[] iArr = this.c;
            if (i13 >= iArr.length) {
                return;
            }
            int i16 = iArr[i13];
            int i17 = i16 - 1;
            int i18 = this.f * i17;
            int i19 = (size - i18) / i16;
            int i20 = (size - (i16 * i19)) - i18;
            boolean z2 = z;
            int i21 = i7;
            int i22 = i21;
            while (i22 < i16) {
                View view4 = (FrameLayout) arrayList.get(i14);
                int i23 = size;
                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) view4.getLayoutParams();
                if (i22 == 0) {
                    i4 = i20 / 2;
                } else {
                    if (i22 == i17) {
                        i4 = i20 - (i20 / 2);
                    } else {
                        i3 = i19;
                    }
                    layoutParams4.width = i3;
                    int i24 = i3;
                    if (i13 == this.c.length - 1) {
                        i5 = i6 - i15;
                    } else {
                        i5 = i19;
                    }
                    layoutParams4.height = i5;
                    layoutParams4.leftMargin = i21;
                    layoutParams4.topMargin = i15;
                    view4.setLayoutParams(layoutParams4);
                    i21 += i24 + this.f;
                    i14++;
                    measureChild(view4, i, i2);
                    i22++;
                    i6 = i6;
                    size = i23;
                }
                i3 = i4 + i19;
                layoutParams4.width = i3;
                int i25 = i3;
                if (i13 == this.c.length - 1) {
                    i5 = i6 - i15;
                } else {
                    i5 = i19;
                }
                layoutParams4.height = i5;
                layoutParams4.leftMargin = i21;
                layoutParams4.topMargin = i15;
                view4.setLayoutParams(layoutParams4);
                i21 += i25 + this.f;
                i14++;
                measureChild(view4, i, i2);
                i22++;
                i6 = i6;
                size = i23;
            }
            i15 += i19 + this.f;
            i13++;
            z = z2;
            size = size;
            i7 = 0;
        }
    }

    public void setCollageSize(int i) {
        removeAllViews();
        ArrayList arrayList = this.b;
        arrayList.clear();
        Context context = getContext();
        for (int i2 = 0; i2 < i; i2++) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            frameLayout.setForegroundGravity(17);
            addView(frameLayout);
            arrayList.add(frameLayout);
        }
        switch (i) {
            case 2:
                this.d = 280;
                this.e = TsExtractor.TS_STREAM_TYPE_DTS_UHD;
                this.c = new int[]{2};
                break;
            case 3:
                this.d = 280;
                this.e = 280;
                this.c = new int[]{1, 2};
                break;
            case 4:
                this.d = 280;
                this.e = 280;
                this.c = new int[]{2, 2};
                break;
            case 5:
                this.d = 280;
                this.e = 233;
                this.c = new int[]{2, 3};
                break;
            case 6:
                this.d = 280;
                this.e = WebmConstants.MkvEbmlElement.PIXEL_HEIGHT;
                this.c = new int[]{3, 3};
                break;
            case 7:
                this.d = 280;
                this.e = 196;
                this.c = new int[]{2, 5};
                break;
            case 8:
                this.d = 280;
                this.e = WebmConstants.MkvEbmlElement.PIXEL_HEIGHT;
                this.c = new int[]{2, 6};
                break;
            case 9:
                this.d = 280;
                this.e = 280;
                this.c = new int[]{3, 3, 3};
                break;
            case 10:
                this.d = 280;
                this.e = 175;
                this.c = new int[]{2, 8};
                break;
            default:
                this.d = 0;
                this.e = 0;
                this.c = new int[0];
                break;
        }
    }

    public void setFrameSpace(int i) {
        this.f = i;
    }

    public CollageView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public CollageView(Context context) {
        this(context, null);
    }

    public CollageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }
}
