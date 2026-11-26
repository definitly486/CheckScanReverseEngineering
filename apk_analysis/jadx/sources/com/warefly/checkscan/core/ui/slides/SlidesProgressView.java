package com.warefly.checkscan.core.ui.slides;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter;
import defpackage.ax6;
import defpackage.pl2;
import defpackage.qn1;
import defpackage.u96;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class SlidesProgressView extends LinearLayout {
    public final LinearLayout.LayoutParams b;
    public final ArrayList c;
    public final int d;
    public final int e;
    public final LinearLayout.LayoutParams f;
    public int g;
    public boolean h;
    public OnboardingHowGetCashPresenter i;

    public static final class SlidesProgressViewState extends View.BaseSavedState implements Parcelable {
        public final Parcelable b;
        public final int c;

        public SlidesProgressViewState(Parcelable parcelable, int i) {
            super(parcelable);
            this.b = parcelable;
            this.c = i;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlidesProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.b = new LinearLayout.LayoutParams(0, -2, 1.0f);
        this.c = new ArrayList();
        this.d = getResources().getDisplayMetrics().widthPixels;
        this.e = pl2.e(8);
        this.f = new LinearLayout.LayoutParams(pl2.e(8), -2);
        this.g = -1;
        setOrientation(0);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, ax6.e, 0, 0);
        typedArrayObtainStyledAttributes.getClass();
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int getCollectionSize() {
        return u96.g(this.c);
    }

    public final long getCurrentId() {
        ArrayList arrayList = this.c;
        if (u96.f(arrayList).c(this.g)) {
            return ((SlidesProgressBar) arrayList.get(this.g)).getStoryId();
        }
        return -1L;
    }

    public final int getCurrentIndex() {
        return this.g;
    }

    public final Float getCurrentProgress() {
        SlidesProgressBar slidesProgressBar = (SlidesProgressBar) qn1.W(this.g, this.c);
        if (slidesProgressBar != null) {
            return Float.valueOf(slidesProgressBar.getCurrentProgress());
        }
        return null;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        SlidesProgressViewState slidesProgressViewState = parcelable instanceof SlidesProgressViewState ? (SlidesProgressViewState) parcelable : null;
        int i = slidesProgressViewState != null ? slidesProgressViewState.c : -1;
        this.g = i;
        this.h = i != -1;
        super.onRestoreInstanceState(slidesProgressViewState != null ? slidesProgressViewState.b : null);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        return new SlidesProgressViewState(super.onSaveInstanceState(), this.g);
    }

    public final void setCurrentIndex(int i) {
        this.g = i;
    }

    public final void setCurrentProgressByVideoPosition(float f, int i) {
        ArrayList arrayList = this.c;
        if (u96.f(arrayList).c(i)) {
            ((SlidesProgressBar) arrayList.get(i)).setPartProgress(f);
        }
    }
}
