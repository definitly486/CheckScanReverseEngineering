package io.appmetrica.analytics.coreutils.internal;

import defpackage.qn1;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class ReferenceHolder {
    private final LinkedHashSet a = new LinkedHashSet();

    public final Set<Object> peekReferences() {
        return qn1.y0(this.a);
    }

    public final void removeReference(Object obj) {
        this.a.remove(obj);
    }

    public final void storeReference(Object obj) {
        this.a.add(obj);
    }
}
