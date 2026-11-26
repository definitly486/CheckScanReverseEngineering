package androidx.datastore.preferences.core;

import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.gh4;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.m05;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.yr;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MutablePreferences extends Preferences {
    private final AtomicBoolean frozen;
    private final Map<Preferences.Key<?>, Object> preferencesMap;

    /* JADX INFO: renamed from: androidx.datastore.preferences.core.MutablePreferences$toString$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Map.Entry<Preferences.Key<?>, Object>, CharSequence> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final CharSequence invoke(Map.Entry<Preferences.Key<?>, Object> entry) {
            entry.getClass();
            Object value = entry.getValue();
            return "  " + entry.getKey().getName() + " = " + (value instanceof byte[] ? yr.S((byte[]) value, ", ", null, 56) : String.valueOf(entry.getValue()));
        }
    }

    public /* synthetic */ MutablePreferences(Map map, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new LinkedHashMap() : map, (i & 2) != 0 ? true : z);
    }

    @Override // androidx.datastore.preferences.core.Preferences
    public Map<Preferences.Key<?>, Object> asMap() {
        b36 b36Var;
        Set<Map.Entry<Preferences.Key<?>, Object>> setEntrySet = this.preferencesMap.entrySet();
        int iB = m05.b(kn1.q(setEntrySet, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                b36Var = new b36(entry.getKey(), Arrays.copyOf(bArr, bArr.length));
            } else {
                b36Var = new b36(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(b36Var.b, b36Var.c);
        }
        return Actual_jvmAndroidKt.immutableMap(linkedHashMap);
    }

    public final void checkNotFrozen$datastore_preferences_core_release() {
        if (this.frozen.get()) {
            ah.f("Do mutate preferences once returned to DataStore.");
        }
    }

    public final void clear() {
        checkNotFrozen$datastore_preferences_core_release();
        this.preferencesMap.clear();
    }

    @Override // androidx.datastore.preferences.core.Preferences
    public <T> boolean contains(Preferences.Key<T> key) {
        key.getClass();
        return this.preferencesMap.containsKey(key);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    public boolean equals(Object obj) {
        boolean zE;
        if (!(obj instanceof MutablePreferences)) {
            return false;
        }
        MutablePreferences mutablePreferences = (MutablePreferences) obj;
        Map<Preferences.Key<?>, Object> map = mutablePreferences.preferencesMap;
        if (map == this.preferencesMap) {
            return true;
        }
        if (map.size() != this.preferencesMap.size()) {
            return false;
        }
        Map<Preferences.Key<?>, Object> map2 = mutablePreferences.preferencesMap;
        if (map2.isEmpty()) {
            return true;
        }
        for (Map.Entry<Preferences.Key<?>, Object> entry : map2.entrySet()) {
            Object obj2 = this.preferencesMap.get(entry.getKey());
            if (obj2 != null) {
                Object value = entry.getValue();
                if (!(value instanceof byte[])) {
                    zE = aa4.e(value, obj2);
                } else if ((obj2 instanceof byte[]) && Arrays.equals((byte[]) value, (byte[]) obj2)) {
                    zE = true;
                } else {
                    zE = false;
                }
            } else {
                zE = false;
            }
            if (!zE) {
                return false;
            }
        }
        return true;
    }

    public final void freeze$datastore_preferences_core_release() {
        this.frozen.set(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.core.Preferences
    public <T> T get(Preferences.Key<T> key) {
        key.getClass();
        T t = (T) this.preferencesMap.get(key);
        if (!(t instanceof byte[])) {
            return t;
        }
        byte[] bArr = (byte[]) t;
        return (T) Arrays.copyOf(bArr, bArr.length);
    }

    public final Map<Preferences.Key<?>, Object> getPreferencesMap$datastore_preferences_core_release() {
        return this.preferencesMap;
    }

    public int hashCode() {
        Iterator<T> it = this.preferencesMap.entrySet().iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            iHashCode += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return iHashCode;
    }

    public final void minusAssign(Preferences.Key<?> key) {
        key.getClass();
        checkNotFrozen$datastore_preferences_core_release();
        remove(key);
    }

    public final void plusAssign(Preferences preferences) {
        preferences.getClass();
        checkNotFrozen$datastore_preferences_core_release();
        this.preferencesMap.putAll(preferences.asMap());
    }

    public final void putAll(Preferences.Pair<?>... pairArr) {
        pairArr.getClass();
        checkNotFrozen$datastore_preferences_core_release();
        for (Preferences.Pair<?> pair : pairArr) {
            setUnchecked$datastore_preferences_core_release(pair.getKey$datastore_preferences_core_release(), pair.getValue$datastore_preferences_core_release());
        }
    }

    public final <T> T remove(Preferences.Key<T> key) {
        key.getClass();
        checkNotFrozen$datastore_preferences_core_release();
        return (T) this.preferencesMap.remove(key);
    }

    public final <T> void set(Preferences.Key<T> key, T t) {
        key.getClass();
        setUnchecked$datastore_preferences_core_release(key, t);
    }

    public final void setUnchecked$datastore_preferences_core_release(Preferences.Key<?> key, Object obj) {
        key.getClass();
        checkNotFrozen$datastore_preferences_core_release();
        if (obj == null) {
            remove(key);
            return;
        }
        if (obj instanceof Set) {
            this.preferencesMap.put(key, Actual_jvmAndroidKt.immutableCopyOfSet((Set) obj));
            return;
        }
        boolean z = obj instanceof byte[];
        Map<Preferences.Key<?>, Object> map = this.preferencesMap;
        if (!z) {
            map.put(key, obj);
        } else {
            byte[] bArr = (byte[]) obj;
            map.put(key, Arrays.copyOf(bArr, bArr.length));
        }
    }

    public String toString() {
        return qn1.a0(this.preferencesMap.entrySet(), ",\n", "{\n", "\n}", 0, AnonymousClass1.INSTANCE, 24);
    }

    public final void plusAssign(Preferences.Pair<?> pair) {
        pair.getClass();
        checkNotFrozen$datastore_preferences_core_release();
        putAll(pair);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MutablePreferences() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public MutablePreferences(Map<Preferences.Key<?>, Object> map, boolean z) {
        map.getClass();
        this.preferencesMap = map;
        this.frozen = new AtomicBoolean(z);
    }
}
