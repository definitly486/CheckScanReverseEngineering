package com.google.common.collect;

import defpackage.ig5;
import defpackage.lr4;
import defpackage.yr4;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class r<K, V1, V2> extends s<K, V1, V2> implements lr4<K, V2> {
    @Override // defpackage.eg5
    public final List<V2> get(K k) {
        return yr4.c((List) this.f.get(k), new ig5(this, k));
    }
}
