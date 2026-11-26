package defpackage;

import com.google.common.collect.a;
import com.google.common.collect.c;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes4.dex */
public final class gg5<K, V> extends a<K, V> {
    public transient kd8<? extends List<V>> h;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        this.h = (kd8) object;
        Object object2 = objectInputStream.readObject();
        Objects.requireNonNull(object2);
        n((Map) object2);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.h);
        objectOutputStream.writeObject(this.f);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.g
    public final Map<K, Collection<V>> e() {
        Map<K, Collection<V>> map = this.f;
        if (map instanceof NavigableMap) {
            return new c.e(this, (NavigableMap) this.f);
        }
        return map instanceof SortedMap ? new c.h(this, (SortedMap) this.f) : new c.b(this.f);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.g
    public final Set<K> g() {
        Map<K, Collection<V>> map = this.f;
        if (map instanceof NavigableMap) {
            return new c.f(this, (NavigableMap) this.f);
        }
        return map instanceof SortedMap ? new c.i(this, (SortedMap) this.f) : new c.d(this.f);
    }

    @Override // com.google.common.collect.c
    public final Collection m() {
        return this.h.get();
    }
}
