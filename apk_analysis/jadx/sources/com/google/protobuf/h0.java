package com.google.protobuf;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 extends i0<Object, Object> {
    @Override // com.google.protobuf.i0
    public final void g() {
        if (!this.e) {
            for (int i = 0; i < this.c.size(); i++) {
                Map.Entry<Object, Object> entryC = c(i);
                if (((m.b) entryC.getKey()).isRepeated()) {
                    entryC.setValue(Collections.unmodifiableList((List) entryC.getValue()));
                }
            }
            for (Map.Entry<Object, Object> entry : d()) {
                if (((m.b) entry.getKey()).isRepeated()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.g();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return h((Comparable) obj, obj2);
    }
}
