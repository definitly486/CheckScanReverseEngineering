package com.google.common.collect;

import defpackage.gx6;
import defpackage.hx6;
import defpackage.l72;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class e0<K extends Comparable, V> implements hx6<K, V> {
    public final TreeMap a = new TreeMap();

    public final class a extends q.c<gx6<K>, V> {
        public final Iterable<Map.Entry<gx6<K>, V>> b;

        public a(Collection collection) {
            this.b = collection;
        }

        @Override // com.google.common.collect.q.c
        public final Iterator<Map.Entry<gx6<K>, V>> a() {
            return this.b.iterator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final V get(Object obj) {
            if (!(obj instanceof gx6)) {
                return null;
            }
            gx6 gx6Var = (gx6) obj;
            b bVar = (b) e0.this.a.get(gx6Var.b);
            if (bVar == null || !bVar.getKey().equals(gx6Var)) {
                return null;
            }
            return bVar.getValue();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return e0.this.a.size();
        }
    }

    public static final class b<K extends Comparable, V> extends AbstractMap.SimpleImmutableEntry<gx6<K>, V> {
        public b() {
            throw null;
        }
    }

    @Override // defpackage.hx6
    public final Map<gx6<K>, V> a() {
        return new a(this.a.values());
    }

    public final Map.Entry b(Long l) {
        Map.Entry entryFloorEntry = this.a.floorEntry(new l72.d(l));
        if (entryFloorEntry == null) {
            return null;
        }
        gx6 key = ((b) entryFloorEntry.getValue()).getKey();
        key.getClass();
        if (!key.b.g(l) || key.c.g(l)) {
            return null;
        }
        return (Map.Entry) entryFloorEntry.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void c(gx6<K> gx6Var, V v) {
        l72<C> l72Var = gx6Var.b;
        Object obj = gx6Var.c;
        boolean zEquals = l72Var.equals(obj);
        l72<C> l72Var2 = gx6Var.b;
        if (zEquals) {
            return;
        }
        v.getClass();
        boolean zEquals2 = l72Var2.equals(obj);
        TreeMap treeMap = this.a;
        if (!zEquals2) {
            Map.Entry entryLowerEntry = treeMap.lowerEntry(l72Var2);
            if (entryLowerEntry != null) {
                b bVar = (b) entryLowerEntry.getValue();
                if (bVar.getKey().c.compareTo(l72Var2) > 0) {
                    if (bVar.getKey().c.compareTo(obj) > 0) {
                        d(obj, bVar.getKey().c, ((b) entryLowerEntry.getValue()).getValue());
                    }
                    d(bVar.getKey().b, l72Var2, ((b) entryLowerEntry.getValue()).getValue());
                }
            }
            Map.Entry entryLowerEntry2 = treeMap.lowerEntry(obj);
            if (entryLowerEntry2 != null) {
                b bVar2 = (b) entryLowerEntry2.getValue();
                if (bVar2.getKey().c.compareTo(obj) > 0) {
                    d(obj, bVar2.getKey().c, ((b) entryLowerEntry2.getValue()).getValue());
                }
            }
            treeMap.subMap(l72Var2, obj).clear();
        }
        treeMap.put(l72Var2, new b(gx6Var, v));
    }

    public final void d(l72<K> l72Var, l72<K> l72Var2, V v) {
        this.a.put(l72Var, new b(new gx6(l72Var, l72Var2), v));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof hx6)) {
            return false;
        }
        return ((AbstractMap) a()).equals(((hx6) obj).a());
    }

    public final int hashCode() {
        return ((AbstractMap) a()).hashCode();
    }

    public final String toString() {
        return this.a.values().toString();
    }
}
