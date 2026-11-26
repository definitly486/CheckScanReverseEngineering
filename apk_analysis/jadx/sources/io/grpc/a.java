package io.grpc;

import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public static final a b = new a(new IdentityHashMap());
    public final IdentityHashMap<b<?>, Object> a;

    /* JADX INFO: renamed from: io.grpc.a$a, reason: collision with other inner class name */
    public static final class C0203a {
        public a a;
        public IdentityHashMap<b<?>, Object> b;

        public C0203a(a aVar) {
            this.a = aVar;
        }

        public final a a() {
            if (this.b != null) {
                this.a = new a(this.b);
                this.b = null;
            }
            return this.a;
        }

        public final IdentityHashMap<b<?>, Object> b(int i) {
            if (this.b == null) {
                IdentityHashMap<b<?>, Object> identityHashMap = new IdentityHashMap<>(this.a.a.size() + i);
                this.b = identityHashMap;
                identityHashMap.putAll(this.a.a);
                this.a = null;
            }
            return this.b;
        }

        public final void c(b bVar, Object obj) {
            b(1).put(bVar, obj);
        }
    }

    public static final class b<T> {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        public final String toString() {
            return this.a;
        }
    }

    public a(IdentityHashMap<b<?>, Object> identityHashMap) {
        this.a = identityHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        IdentityHashMap<b<?>, Object> identityHashMap = ((a) obj).a;
        IdentityHashMap<b<?>, Object> identityHashMap2 = this.a;
        if (identityHashMap2.size() != identityHashMap.size()) {
            return false;
        }
        for (Map.Entry<b<?>, Object> entry : identityHashMap2.entrySet()) {
            if (!identityHashMap.containsKey(entry.getKey()) || !Objects.equals(entry.getValue(), identityHashMap.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHash = 0;
        for (Map.Entry<b<?>, Object> entry : this.a.entrySet()) {
            iHash += Objects.hash(entry.getKey(), entry.getValue());
        }
        return iHash;
    }

    public final String toString() {
        return this.a.toString();
    }
}
