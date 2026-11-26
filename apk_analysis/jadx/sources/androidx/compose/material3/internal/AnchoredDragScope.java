package androidx.compose.material3.internal;

import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public interface AnchoredDragScope {
    static /* synthetic */ void dragTo$default(AnchoredDragScope anchoredDragScope, float f, float f2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: dragTo");
            return;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        anchoredDragScope.dragTo(f, f2);
    }

    void dragTo(float f, float f2);
}
