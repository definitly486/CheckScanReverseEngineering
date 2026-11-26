package com.warefly.checkscan.core.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import com.warefly.checkscan.R;
import defpackage.ax6;
import defpackage.ta8;
import defpackage.zd3;

/* JADX INFO: loaded from: classes.dex */
public final class LoadingButton extends AppCompatButton {
    public final Drawable b;
    public final Drawable c;
    public boolean d;
    public CharSequence e;

    public static final class LoadingState extends View.BaseSavedState {
        public static final Parcelable.Creator<LoadingState> CREATOR = new a();
        public boolean b;

        public static final class a implements Parcelable.Creator<LoadingState> {
            @Override // android.os.Parcelable.Creator
            public final LoadingState createFromParcel(Parcel parcel) {
                LoadingState loadingState = new LoadingState(parcel);
                if (parcel != null) {
                    loadingState.b = parcel.readInt() == 1;
                }
                return loadingState;
            }

            @Override // android.os.Parcelable.Creator
            public final LoadingState[] newArray(int i) {
                return new LoadingState[i];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.b ? 1 : 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadingButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        setSaveEnabled(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ax6.b);
        typedArrayObtainStyledAttributes.getClass();
        Drawable drawableE = zd3.e(typedArrayObtainStyledAttributes, 0);
        this.b = drawableE == null ? AppCompatResources.getDrawable(context, R.drawable.loading_circles) : drawableE;
        Drawable drawableE2 = zd3.e(typedArrayObtainStyledAttributes, 1);
        this.c = drawableE2 == null ? AppCompatResources.getDrawable(context, R.drawable.regular_button) : drawableE2;
        typedArrayObtainStyledAttributes.recycle();
        CharSequence text = getText();
        text.getClass();
        this.e = text;
    }

    public final void a(boolean z) {
        AnimationDrawable animationDrawable;
        if (!z) {
            Drawable background = getBackground();
            animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
            if (animationDrawable != null) {
                animationDrawable.stop();
            }
            setText(this.e);
            setBackground(this.c);
            return;
        }
        CharSequence text = getText();
        if (text != null) {
            if (ta8.M(text)) {
                text = null;
            }
            if (text != null) {
                this.e = text;
            }
        }
        setText((CharSequence) null);
        setBackground(this.b);
        Drawable background2 = getBackground();
        animationDrawable = background2 instanceof AnimationDrawable ? (AnimationDrawable) background2 : null;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        Drawable background = getBackground();
        AnimationDrawable animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(this.d);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        parcelable.getClass();
        LoadingState loadingState = (LoadingState) parcelable;
        super.onRestoreInstanceState(loadingState.getSuperState());
        boolean z = loadingState.b;
        this.d = z;
        a(z);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        LoadingState loadingState = new LoadingState(super.onSaveInstanceState());
        loadingState.b = this.d;
        return loadingState;
    }

    public final void setLoading(boolean z) {
        this.d = z;
        a(z);
        setEnabled(!z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (charSequence != null) {
            this.e = charSequence.toString();
        }
    }
}
