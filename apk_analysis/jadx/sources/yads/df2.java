package yads;

import android.content.Context;
import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import defpackage.al5;
import defpackage.fh8;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class df2 implements cf2 {
    public final Context b;
    public final defpackage.cl4 c;

    public df2(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext != null ? applicationContext : context;
        this.c = new fh8(new al5(this, 4));
    }

    public static final iz2 a(df2 df2Var) {
        Typeface font;
        Typeface font2;
        Typeface font3;
        Typeface font4;
        zg5 zg5Var;
        Context context = df2Var.b;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        String str = fe5VarA != null ? fe5VarA.Z : null;
        if (str == null) {
            return null;
        }
        try {
            jz2 jz2VarValueOf = jz2.valueOf(str);
            if (kz2.a[jz2VarValueOf.ordinal()] != 1) {
                throw new NoWhenBranchMatchedException();
            }
            try {
                font = ResourcesCompat.getFont(context, jz2VarValueOf.b);
            } catch (Throwable unused) {
                font = null;
            }
            try {
                font2 = ResourcesCompat.getFont(context, jz2VarValueOf.c);
            } catch (Throwable unused2) {
                font2 = null;
            }
            try {
                font3 = ResourcesCompat.getFont(context, jz2VarValueOf.d);
            } catch (Throwable unused3) {
                font3 = null;
            }
            try {
                font4 = ResourcesCompat.getFont(context, jz2VarValueOf.e);
            } catch (Throwable unused4) {
                font4 = null;
            }
            return new iz2(font, font2, font3, font4);
        } catch (Throwable unused5) {
            return null;
        }
    }

    @Override // yads.cf2
    public final Typeface b() {
        Typeface typeface;
        iz2 iz2Var = (iz2) this.c.getValue();
        return (iz2Var == null || (typeface = iz2Var.d) == null) ? Typeface.DEFAULT_BOLD : typeface;
    }

    @Override // yads.cf2
    public final Typeface c() {
        iz2 iz2Var = (iz2) this.c.getValue();
        if (iz2Var != null) {
            return iz2Var.c;
        }
        return null;
    }

    @Override // yads.cf2
    public final Typeface d() {
        iz2 iz2Var = (iz2) this.c.getValue();
        if (iz2Var != null) {
            return iz2Var.b;
        }
        return null;
    }

    @Override // yads.cf2
    public final Typeface a() {
        iz2 iz2Var = (iz2) this.c.getValue();
        if (iz2Var != null) {
            return iz2Var.a;
        }
        return null;
    }
}
