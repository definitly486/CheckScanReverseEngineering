package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;

/* JADX INFO: loaded from: classes4.dex */
public final class ys8 {
    public static final void a(TextView textView, gc9 gc9Var) {
        Drawable drawable;
        Drawable drawableA;
        Drawable drawable2;
        Drawable drawableA2;
        Drawable drawable3;
        Drawable drawableA3;
        Drawable drawable4;
        textView.getClass();
        gc9Var.getClass();
        Integer num = gc9Var.n;
        Integer num2 = gc9Var.k;
        Integer numValueOf = gc9Var.i;
        Drawable drawableA4 = null;
        if (numValueOf == null) {
            Integer num3 = gc9Var.m;
            if (num3 != null) {
                numValueOf = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num3.intValue()));
            } else {
                numValueOf = null;
            }
            if (numValueOf == null) {
                if (num != null) {
                    numValueOf = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num.intValue()));
                } else {
                    numValueOf = null;
                }
            }
        }
        Integer numValueOf2 = gc9Var.h;
        if (numValueOf2 == null) {
            Integer num4 = gc9Var.l;
            if (num4 != null) {
                numValueOf2 = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num4.intValue()));
            } else {
                numValueOf2 = null;
            }
            if (numValueOf2 == null) {
                if (num != null) {
                    numValueOf2 = Integer.valueOf(textView.getContext().getResources().getDimensionPixelSize(num.intValue()));
                } else {
                    numValueOf2 = null;
                }
            }
        }
        Integer num5 = gc9Var.a;
        if (num5 != null) {
            drawable = AppCompatResources.getDrawable(textView.getContext(), num5.intValue());
        } else {
            drawable = null;
        }
        if (drawable != null) {
            Context context = textView.getContext();
            context.getClass();
            drawableA = es2.a(drawable, context, numValueOf2, numValueOf);
            es2.b(drawableA, num2);
        } else {
            drawableA = null;
        }
        Integer num6 = gc9Var.b;
        if (num6 != null) {
            drawable2 = AppCompatResources.getDrawable(textView.getContext(), num6.intValue());
        } else {
            drawable2 = null;
        }
        if (drawable2 != null) {
            Context context2 = textView.getContext();
            context2.getClass();
            drawableA2 = es2.a(drawable2, context2, numValueOf2, numValueOf);
            es2.b(drawableA2, num2);
        } else {
            drawableA2 = null;
        }
        Integer num7 = gc9Var.c;
        if (num7 != null) {
            drawable3 = AppCompatResources.getDrawable(textView.getContext(), num7.intValue());
        } else {
            drawable3 = null;
        }
        if (drawable3 != null) {
            Context context3 = textView.getContext();
            context3.getClass();
            drawableA3 = es2.a(drawable3, context3, numValueOf2, numValueOf);
            es2.b(drawableA3, num2);
        } else {
            drawableA3 = null;
        }
        Integer num8 = gc9Var.d;
        if (num8 != null) {
            drawable4 = AppCompatResources.getDrawable(textView.getContext(), num8.intValue());
        } else {
            drawable4 = null;
        }
        if (drawable4 != null) {
            Context context4 = textView.getContext();
            context4.getClass();
            drawableA4 = es2.a(drawable4, context4, numValueOf2, numValueOf);
            es2.b(drawableA4, num2);
        }
        if (gc9Var.e) {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawableA2, drawableA4, drawableA, drawableA3);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawableA, drawableA4, drawableA2, drawableA3);
        }
        Integer num9 = gc9Var.g;
        if (num9 != null) {
            textView.setCompoundDrawablePadding(num9.intValue());
        } else {
            Integer num10 = gc9Var.j;
            if (num10 != null) {
                textView.setCompoundDrawablePadding(textView.getContext().getResources().getDimensionPixelSize(num10.intValue()));
            }
        }
        textView.setContentDescription(gc9Var.f);
    }
}
