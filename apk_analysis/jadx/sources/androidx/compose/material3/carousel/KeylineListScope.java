package androidx.compose.material3.carousel;

import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public interface KeylineListScope {
    static /* synthetic */ void add$default(KeylineListScope keylineListScope, float f, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: add");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        keylineListScope.add(f, z);
    }

    void add(float f, boolean z);
}
