package yads;

import android.content.Context;
import android.graphics.Typeface;

/* JADX INFO: loaded from: classes6.dex */
public final class dy1 implements cf2 {
    public final bz2 b;

    public dy1(Context context) {
        this.b = new bz2(context.getApplicationContext());
    }

    @Override // yads.cf2
    public final Typeface a() {
        bz2 bz2Var = this.b;
        Typeface typefaceA = bz2Var.b.a(cz2.YS_LIGHT);
        if (typefaceA == null) {
            return null;
        }
        return typefaceA;
    }

    @Override // yads.cf2
    public final Typeface b() {
        bz2 bz2Var = this.b;
        Typeface typefaceA = bz2Var.b.a(cz2.YS_BOLD);
        if (typefaceA == null) {
            return null;
        }
        return typefaceA;
    }

    @Override // yads.cf2
    public final Typeface c() {
        bz2 bz2Var = this.b;
        Typeface typefaceA = bz2Var.b.a(cz2.YS_MEDIUM);
        if (typefaceA == null) {
            return null;
        }
        return typefaceA;
    }

    @Override // yads.cf2
    public final Typeface d() {
        bz2 bz2Var = this.b;
        Typeface typefaceA = bz2Var.b.a(cz2.YS_REGULAR);
        if (typefaceA == null) {
            return null;
        }
        return typefaceA;
    }
}
