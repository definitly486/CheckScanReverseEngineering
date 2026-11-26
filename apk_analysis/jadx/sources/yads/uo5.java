package yads;

import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.text.SpannableStringBuilder;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class uo5 extends yh1 {
    public final tt a;
    public final x72 b;
    public final nd3 c;
    public final SpannableStringBuilder d;
    public final nl3 e;

    public uo5(tt ttVar, x72 x72Var, nd3 nd3Var, SpannableStringBuilder spannableStringBuilder, nl3 nl3Var) {
        super(ttVar.a);
        this.a = ttVar;
        this.b = x72Var;
        this.c = nd3Var;
        this.d = spannableStringBuilder;
        this.e = nl3Var;
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        PorterDuff.Mode mode;
        Resources resources = this.a.a.getResources();
        fs2 fs2Var = this.a.b;
        as2 as2Var = this.b.g;
        Integer num = as2Var != null ? (Integer) as2Var.a(fs2Var) : null;
        int iOrdinal = ((y41) this.b.h.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            mode = PorterDuff.Mode.SRC_IN;
        } else if (iOrdinal == 1) {
            mode = PorterDuff.Mode.SRC_ATOP;
        } else if (iOrdinal == 2) {
            mode = PorterDuff.Mode.DARKEN;
        } else if (iOrdinal == 3) {
            mode = PorterDuff.Mode.LIGHTEN;
        } else if (iOrdinal == 4) {
            mode = PorterDuff.Mode.MULTIPLY;
        } else {
            if (iOrdinal != 5) {
                defpackage.me0.e();
                return;
            }
            mode = PorterDuff.Mode.SCREEN;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, uwVar.a);
        if (num != null) {
            bitmapDrawable.setColorFilter(new PorterDuffColorFilter(num.intValue(), mode));
        }
        nd3 nd3Var = this.c;
        if (!defpackage.aa4.e(nd3Var.g, bitmapDrawable)) {
            nd3Var.g = bitmapDrawable;
            bitmapDrawable.setBounds(0, 0, nd3Var.b, nd3Var.c);
            nd3Var.h.setEmpty();
        }
        nl3 nl3Var = this.e;
        if (nl3Var != null) {
            nl3Var.invoke(this.d);
        }
    }
}
