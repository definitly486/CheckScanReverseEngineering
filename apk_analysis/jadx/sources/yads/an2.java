package yads;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yandex.mobile.ads.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class an2 extends tt5 {
    public CharSequence c;
    public TextUtils.TruncateAt d;
    public boolean e;
    public CharSequence f;
    public boolean g;
    public int h;
    public final int i;
    public CharSequence j;
    public float k;
    public boolean l;
    public final zm m;

    public an2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        CharSequence charSequence = "…";
        this.c = "…";
        this.d = TextUtils.TruncateAt.END;
        this.h = -1;
        this.i = -1;
        this.k = -1.0f;
        this.m = new zm(this);
        if (isInEditMode()) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.monetization_ads_divkit_EllipsizedTextView, i, 0);
            try {
                CharSequence text = typedArrayObtainStyledAttributes.getText(R$styleable.monetization_ads_divkit_EllipsizedTextView_monetization_ads_divkit_ellipsis);
                if (text != null) {
                    charSequence = text;
                }
                setEllipsis(charSequence);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        a(this.c);
    }

    public final void a(CharSequence charSequence) {
        if (getMaxLines() < 0 || getMaxLines() == Integer.MAX_VALUE) {
            super.setEllipsize(null);
        } else if (defpackage.aa4.e(charSequence, "…")) {
            super.setEllipsize(this.d);
        } else {
            super.setEllipsize(null);
            this.l = true;
            this.k = -1.0f;
            this.e = false;
        }
        requestLayout();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final CharSequence getText() {
        CharSequence charSequence = this.j;
        return charSequence == null ? "" : charSequence;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        zm zmVar = this.m;
        if (zmVar.b) {
            zmVar.a();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zm zmVar = this.m;
        if (zmVar.d != null) {
            zmVar.a.getViewTreeObserver().removeOnPreDrawListener(zmVar.d);
            zmVar.d = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0164  */
    @Override // yads.tt5, androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        CharSequence charSequence;
        int length;
        int measuredWidth;
        StaticLayout staticLayout;
        Layout.Alignment alignment;
        super.onMeasure(i, i2);
        int measuredWidth2 = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i3 = this.h;
        int i4 = this.i;
        if (measuredWidth2 != i3 || measuredHeight != i4) {
            this.l = true;
        }
        if (this.l) {
            Object obj = this.f;
            boolean z = getMaxLines() < 0 || getMaxLines() == Integer.MAX_VALUE || defpackage.aa4.e(this.c, "…");
            if (this.f != null || !z) {
                CharSequence charSequence2 = this.j;
                if (z) {
                    if (charSequence2 != null) {
                        this.e = !charSequence2.equals(obj);
                    } else {
                        charSequence2 = null;
                    }
                    this.f = charSequence2;
                    this.g = true;
                    super.setText(charSequence2);
                    this.g = false;
                } else {
                    if (charSequence2 == null || charSequence2.length() == 0) {
                        charSequence2 = null;
                    } else {
                        CharSequence charSequence3 = this.c;
                        if (charSequence2.length() == 0 || getMaxLines() == 0 || (measuredWidth = (getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight()) <= 0) {
                            charSequence = charSequence3;
                            length = 0;
                        } else {
                            if (getHyphenationFrequency() != 0) {
                                StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence2, 0, charSequence2.length(), getPaint(), measuredWidth);
                                Layout.Alignment alignment2 = Layout.Alignment.ALIGN_NORMAL;
                                staticLayout = builderObtain.setAlignment(alignment2).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).setIncludePad(true).setHyphenationFrequency(getHyphenationFrequency()).build();
                                alignment = alignment2;
                            } else {
                                TextPaint paint = getPaint();
                                Layout.Alignment alignment3 = Layout.Alignment.ALIGN_NORMAL;
                                staticLayout = new StaticLayout(charSequence2, paint, measuredWidth, alignment3, getLineSpacingMultiplier(), getLineSpacingExtra(), true);
                                alignment = alignment3;
                            }
                            int lineCount = staticLayout.getLineCount();
                            float lineWidth = staticLayout.getLineWidth(lineCount - 1);
                            if (lineCount < getMaxLines() || (lineCount == getMaxLines() && lineWidth <= measuredWidth)) {
                                charSequence = charSequence3;
                                this.e = true;
                                length = charSequence2.length();
                            } else {
                                float lineWidth2 = this.k;
                                if (lineWidth2 == -1.0f) {
                                    charSequence = charSequence3;
                                    lineWidth2 = new StaticLayout(charSequence, getPaint(), Integer.MAX_VALUE, alignment, getLineSpacingMultiplier(), getLineSpacingExtra(), true).getLineWidth(0);
                                    this.k = lineWidth2;
                                } else {
                                    charSequence = charSequence3;
                                }
                                this.e = true;
                                float f = measuredWidth - lineWidth2;
                                length = staticLayout.getOffsetForHorizontal(getMaxLines() - 1, f);
                                while (staticLayout.getPrimaryHorizontal(length) > f && length > 0) {
                                    length--;
                                }
                                if (length > 0 && Character.isHighSurrogate(charSequence2.charAt(length - 1))) {
                                    length--;
                                }
                            }
                        }
                        if (length <= 0) {
                            charSequence2 = null;
                        } else if (length != charSequence2.length()) {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence2, 0, length);
                            spannableStringBuilder.append(charSequence);
                            charSequence2 = spannableStringBuilder;
                        }
                    }
                    this.f = charSequence2;
                    this.g = true;
                    super.setText(charSequence2);
                    this.g = false;
                }
            }
            this.l = false;
            CharSequence charSequence4 = this.f;
            if (charSequence4 != null) {
                if ((this.e ? charSequence4 : null) != null) {
                    super.onMeasure(i, i2);
                }
            }
        }
        this.h = getMeasuredWidth();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.l = true;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (this.g) {
            return;
        }
        this.j = charSequence;
        requestLayout();
        this.l = true;
    }

    public final void setAutoEllipsize(boolean z) {
        this.m.b = z;
    }

    public final void setDrawingPassOverrideStrategy$mobileads_externalRelease(ml2 ml2Var) {
        this.m.c = ml2Var;
    }

    public final void setEllipsis(CharSequence charSequence) {
        a(charSequence);
        this.c = charSequence;
    }

    public final void setEllipsisLocation(TextUtils.TruncateAt truncateAt) {
        this.d = truncateAt;
        if (truncateAt == null) {
            setAutoEllipsize(false);
        }
        a(this.c);
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i == getMaxLines()) {
            return;
        }
        super.setMaxLines(i);
        a(this.c);
        this.l = true;
        this.k = -1.0f;
        this.e = false;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
    }

    public an2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ an2(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public an2(Context context) {
        this(context, null, 6, 0);
    }
}
