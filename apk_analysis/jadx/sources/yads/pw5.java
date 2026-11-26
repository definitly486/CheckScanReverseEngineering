package yads;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;

/* JADX INFO: loaded from: classes6.dex */
public final class pw5 extends Spannable.Factory {
    public final Drawable a;
    public final int b;
    public final int c;

    public pw5(Drawable drawable, int i, int i2) {
        this.a = drawable;
        this.b = i;
        this.c = i2;
    }

    @Override // android.text.Spannable.Factory
    public final Spannable newSpannable(CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (this.a != null && this.b > 0) {
            spannableStringBuilder.append((CharSequence) "  ");
            Drawable drawable = this.a;
            int i = this.b;
            drawable.setBounds(0, 0, i, i);
            de deVar = new de(drawable);
            ColorDrawable colorDrawable = new ColorDrawable(0);
            int i2 = this.c;
            colorDrawable.setBounds(0, 0, i2, i2);
            de deVar2 = new de(colorDrawable);
            spannableStringBuilder.setSpan(deVar, 0, 1, 33);
            spannableStringBuilder.setSpan(deVar2, 1, 2, 33);
        }
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }
}
