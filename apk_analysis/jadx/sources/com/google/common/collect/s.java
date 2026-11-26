package com.google.common.collect;

import defpackage.eg5;
import defpackage.i05;
import defpackage.ia5;
import defpackage.jn1;
import defpackage.lm3;
import defpackage.q3;
import defpackage.wa4;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class s<K, V1, V2> extends g<K, V2> {
    public final eg5<K, V1> f;
    public final ia5 g;

    public s(eg5 eg5Var, ia5 ia5Var) {
        eg5Var.getClass();
        this.f = eg5Var;
        this.g = ia5Var;
    }

    @Override // defpackage.eg5
    public final void clear() {
        this.f.clear();
    }

    @Override // com.google.common.collect.g
    public final Map<K, Collection<V2>> e() {
        return new q.e(this.f.b(), new q3(this, 2));
    }

    @Override // com.google.common.collect.g
    public final Collection<Map.Entry<K, V2>> f() {
        return new g.a();
    }

    @Override // com.google.common.collect.g
    public final Set<K> g() {
        return this.f.keySet();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [jg5] */
    @Override // com.google.common.collect.g
    public final Collection<V2> i() {
        return new jn1(this.f.a(), new lm3() { // from class: jg5
            @Override // defpackage.lm3
            public final Object apply(Object obj) {
                Map.Entry entry = (Map.Entry) obj;
                ia5 ia5Var = this.b.g;
                entry.getKey();
                return ((h95) ia5Var.b).apply(entry.getValue());
            }
        });
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    public final boolean isEmpty() {
        return this.f.isEmpty();
    }

    @Override // com.google.common.collect.g
    public final Iterator<Map.Entry<K, V2>> j() {
        return new wa4(this.f.a().iterator(), new i05(this.g));
    }

    @Override // defpackage.eg5
    public final boolean put(K k, V2 v2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    public final boolean remove(Object obj, Object obj2) {
        return ((r) this).get(obj).remove(obj2);
    }

    @Override // defpackage.eg5
    public final int size() {
        return this.f.size();
    }
}
