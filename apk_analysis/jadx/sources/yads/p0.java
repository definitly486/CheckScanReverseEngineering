package yads;

import android.view.View;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class p0 extends defpackage.qm3 implements nl3 {
    public static final p0 b = new p0();

    public p0() {
        super(1, View.class, "getLeft", "getLeft()I", 0);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        return Integer.valueOf(((View) obj).getLeft());
    }
}
