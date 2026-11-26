package com.google.common.collect;

import defpackage.z0;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class p extends z0<Object, Object> {
    public final /* synthetic */ Map.Entry b;
    public final /* synthetic */ q.b c;

    public p(Map.Entry entry, q.b bVar) {
        this.b = entry;
        this.c = bVar;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        Map.Entry entry = this.b;
        return this.c.a(entry.getKey(), entry.getValue());
    }
}
