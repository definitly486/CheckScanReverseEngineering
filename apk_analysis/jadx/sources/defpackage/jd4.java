package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;

/* JADX INFO: loaded from: classes5.dex */
@up7(with = md4.class)
public final class jd4 extends oc4 implements Map<String, oc4>, re4 {
    public static final a Companion = new a();
    public final Map<String, oc4> b;

    public static final class a {
        public final df4<jd4> serializer() {
            return md4.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public jd4(Map<String, ? extends oc4> map) {
        map.getClass();
        this.b = map;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 compute(String str, BiFunction<? super String, ? super oc4, ? extends oc4> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 computeIfAbsent(String str, Function<? super String, ? extends oc4> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 computeIfPresent(String str, BiFunction<? super String, ? super oc4, ? extends oc4> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (!(obj instanceof String)) {
            return false;
        }
        return this.b.containsKey((String) obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (!(obj instanceof oc4)) {
            return false;
        }
        return this.b.containsValue((oc4) obj);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<String, oc4>> entrySet() {
        return this.b.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return aa4.e(this.b, obj);
    }

    @Override // java.util.Map
    public final oc4 get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        return this.b.get((String) obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        return this.b.keySet();
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 merge(String str, oc4 oc4Var, BiFunction<? super oc4, ? super oc4, ? extends oc4> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 put(String str, oc4 oc4Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends String, ? extends oc4> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 putIfAbsent(String str, oc4 oc4Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final oc4 remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ oc4 replace(String str, oc4 oc4Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void replaceAll(BiFunction<? super String, ? super oc4, ? extends oc4> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return this.b.size();
    }

    public final String toString() {
        return qn1.a0(this.b.entrySet(), StringUtils.COMMA, "{", "}", 0, new zc2(3), 24);
    }

    @Override // java.util.Map
    public final Collection<oc4> values() {
        return this.b.values();
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ boolean replace(String str, oc4 oc4Var, oc4 oc4Var2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
