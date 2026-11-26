package yads;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes6.dex */
public interface cf2 {
    public static final bf2 a = new bf2();

    Typeface a();

    default Typeface a(int i) {
        if (i >= 0 && i < 350) {
            return a();
        }
        if (i < 350 || i >= 450) {
            return (i < 450 || i >= 600) ? b() : c();
        }
        return d();
    }

    Typeface b();

    Typeface c();

    Typeface d();
}
