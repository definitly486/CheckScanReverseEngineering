package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class tg6 {
    public final int a;
    public final int b;

    public tg6(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        this.a = width;
        this.b = height;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tg6)) {
            return false;
        }
        tg6 tg6Var = (tg6) obj;
        return this.a == tg6Var.a && this.b == tg6Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return defpackage.ln.c(this.a, this.b, "ViewSize(width=", ", height=", ")");
    }
}
