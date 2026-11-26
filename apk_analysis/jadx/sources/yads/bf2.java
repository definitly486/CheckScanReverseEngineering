package yads;

import android.graphics.Typeface;
import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class bf2 implements cf2 {
    @Override // yads.cf2
    public final Typeface a(int i) {
        return Build.VERSION.SDK_INT >= 28 ? Typeface.create(Typeface.DEFAULT, i, false) : super.a(i);
    }

    @Override // yads.cf2
    public final Typeface b() {
        return null;
    }

    @Override // yads.cf2
    public final Typeface c() {
        return null;
    }

    @Override // yads.cf2
    public final Typeface d() {
        return null;
    }

    @Override // yads.cf2
    public final Typeface a() {
        return null;
    }
}
