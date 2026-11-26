package androidx.compose.foundation.lazy.layout;

import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class StableValue<T> {
    private final T value;

    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ StableValue(Object obj) {
        this.value = obj;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StableValue m2245boximpl(Object obj) {
        return new StableValue(obj);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m2246constructorimpl(T t) {
        return t;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2247equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof StableValue) && aa4.e(obj, ((StableValue) obj2).m2251unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2248equalsimpl0(Object obj, Object obj2) {
        return aa4.e(obj, obj2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2249hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2250toStringimpl(Object obj) {
        return "StableValue(value=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m2247equalsimpl(this.value, obj);
    }

    public final T getValue() {
        return this.value;
    }

    public int hashCode() {
        return m2249hashCodeimpl(this.value);
    }

    public String toString() {
        return m2250toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m2251unboximpl() {
        return this.value;
    }
}
