package androidx.core.view;

import android.view.ViewParent;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ViewKt$ancestors$1 extends qm3 implements nl3<ViewParent, ViewParent> {
    public static final ViewKt$ancestors$1 INSTANCE = new ViewKt$ancestors$1();

    public ViewKt$ancestors$1() {
        super(1, ViewParent.class, "getParent", "getParent()Landroid/view/ViewParent;", 0);
    }

    @Override // defpackage.nl3
    public final ViewParent invoke(ViewParent viewParent) {
        return viewParent.getParent();
    }
}
