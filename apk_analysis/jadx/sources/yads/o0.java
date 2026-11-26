package yads;

import android.view.View;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class o0 extends defpackage.qm3 implements nl3 {
    public static final o0 b = new o0();

    public o0() {
        super(1, View.class, "getTop", "getTop()I", 0);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        return Integer.valueOf(((View) obj).getTop());
    }
}
