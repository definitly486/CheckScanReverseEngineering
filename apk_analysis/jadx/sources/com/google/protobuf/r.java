package com.google.protobuf;

import defpackage.fg;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class r extends s {

    public static class a<K> implements Map.Entry<K, Object> {
        public Map.Entry<K, r> b;

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.b.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            r value = this.b.getValue();
            if (value == null) {
                return null;
            }
            return value.a(null);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (!(obj instanceof a0)) {
                fg.c("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
                return null;
            }
            r value = this.b.getValue();
            a0 a0Var = value.a;
            value.b = null;
            value.a = (a0) obj;
            return a0Var;
        }
    }

    public static class b<K> implements Iterator<Map.Entry<K, Object>> {
        public final Iterator<Map.Entry<K, Object>> b;

        public b(Iterator<Map.Entry<K, Object>> it) {
            this.b = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry<K, Object> next = this.b.next();
            if (!(next.getValue() instanceof r)) {
                return next;
            }
            a aVar = new a();
            aVar.b = next;
            return aVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.b.remove();
        }
    }

    public final boolean equals(Object obj) {
        return a(null).equals(obj);
    }

    public final int hashCode() {
        return a(null).hashCode();
    }

    public final String toString() {
        return a(null).toString();
    }
}
