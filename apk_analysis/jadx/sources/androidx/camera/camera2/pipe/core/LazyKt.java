package androidx.camera.camera2.pipe.core;

import android.os.Trace;
import defpackage.cl4;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nm4;
import defpackage.ox2;
import defpackage.po4;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class LazyKt {
    public static final <T> cl4<List<T>> lazyOrEmptyList(final ll3<String> ll3Var, final ll3<? extends List<? extends T>> ll3Var2) {
        ll3Var.getClass();
        ll3Var2.getClass();
        return nm4.a(po4.PUBLICATION, new ll3<List<? extends T>>() { // from class: androidx.camera.camera2.pipe.core.LazyKt.lazyOrEmptyList.1
            @Override // defpackage.ll3
            public final List<T> invoke() {
                kx2 kx2Var = kx2.b;
                String strInvoke = ll3Var.invoke();
                try {
                    Debug debug = Debug.INSTANCE;
                    ll3<List<T>> ll3Var3 = ll3Var2;
                    try {
                        Trace.beginSection(strInvoke);
                        List<T> listInvoke = ll3Var3.invoke();
                        if (listInvoke == null) {
                            listInvoke = kx2Var;
                        }
                        return listInvoke;
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + strInvoke + "! Caching [] and ignoring exception.", th);
                    }
                    return kx2Var;
                }
            }
        });
    }

    public static final <T> cl4<Set<T>> lazyOrEmptySet(final ll3<String> ll3Var, final ll3<? extends Set<? extends T>> ll3Var2) {
        ll3Var.getClass();
        ll3Var2.getClass();
        return nm4.a(po4.PUBLICATION, new ll3<Set<? extends T>>() { // from class: androidx.camera.camera2.pipe.core.LazyKt.lazyOrEmptySet.1
            @Override // defpackage.ll3
            public final Set<T> invoke() {
                ox2 ox2Var = ox2.b;
                String strInvoke = ll3Var.invoke();
                try {
                    Debug debug = Debug.INSTANCE;
                    ll3<Set<T>> ll3Var3 = ll3Var2;
                    try {
                        Trace.beginSection(strInvoke);
                        Set<T> setInvoke = ll3Var3.invoke();
                        if (setInvoke == null) {
                            setInvoke = ox2Var;
                        }
                        return setInvoke;
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + strInvoke + "! Caching {} and ignoring exception.", th);
                    }
                    return ox2Var;
                }
            }
        });
    }

    public static final cl4<Boolean> lazyOrFalse(final ll3<String> ll3Var, final ll3<Boolean> ll3Var2) {
        ll3Var.getClass();
        ll3Var2.getClass();
        return nm4.a(po4.PUBLICATION, new ll3<Boolean>() { // from class: androidx.camera.camera2.pipe.core.LazyKt.lazyOrFalse.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.ll3
            public final Boolean invoke() {
                boolean zBooleanValue;
                String strInvoke = ll3Var.invoke();
                try {
                    Debug debug = Debug.INSTANCE;
                    ll3<Boolean> ll3Var3 = ll3Var2;
                    try {
                        Trace.beginSection(strInvoke);
                        zBooleanValue = ll3Var3.invoke().booleanValue();
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + strInvoke + "! Caching false and ignoring exception.", th);
                    }
                    zBooleanValue = false;
                }
                return Boolean.valueOf(zBooleanValue);
            }
        });
    }

    public static final <T> cl4<List<T>> lazyOrEmptyList(final String str, final ll3<? extends List<? extends T>> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        return nm4.a(po4.PUBLICATION, new ll3<List<? extends T>>() { // from class: androidx.camera.camera2.pipe.core.LazyKt$lazyOrEmptyList$$inlined$lazyOrEmptyList$1
            @Override // defpackage.ll3
            public final List<T> invoke() {
                kx2 kx2Var = kx2.b;
                String str2 = str;
                try {
                    Debug debug = Debug.INSTANCE;
                    ll3 ll3Var2 = ll3Var;
                    try {
                        Trace.beginSection(str2);
                        List<T> list = (List) ll3Var2.invoke();
                        if (list == null) {
                            list = kx2Var;
                        }
                        return list;
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching [] and ignoring exception.", th);
                    }
                    return kx2Var;
                }
            }
        });
    }

    public static final <T> cl4<Set<T>> lazyOrEmptySet(final String str, final ll3<? extends Set<? extends T>> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        return nm4.a(po4.PUBLICATION, new ll3<Set<? extends T>>() { // from class: androidx.camera.camera2.pipe.core.LazyKt$lazyOrEmptySet$$inlined$lazyOrEmptySet$1
            @Override // defpackage.ll3
            public final Set<T> invoke() {
                ox2 ox2Var = ox2.b;
                String str2 = str;
                try {
                    Debug debug = Debug.INSTANCE;
                    ll3 ll3Var2 = ll3Var;
                    try {
                        Trace.beginSection(str2);
                        Set<T> set = (Set) ll3Var2.invoke();
                        if (set == null) {
                            set = ox2Var;
                        }
                        return set;
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching {} and ignoring exception.", th);
                    }
                    return ox2Var;
                }
            }
        });
    }

    public static final cl4<Boolean> lazyOrFalse(final String str, final ll3<Boolean> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        return nm4.a(po4.PUBLICATION, new ll3<Boolean>() { // from class: androidx.camera.camera2.pipe.core.LazyKt$lazyOrFalse$$inlined$lazyOrFalse$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.ll3
            public final Boolean invoke() {
                boolean zBooleanValue;
                String str2 = str;
                try {
                    Debug debug = Debug.INSTANCE;
                    ll3 ll3Var2 = ll3Var;
                    try {
                        Trace.beginSection(str2);
                        zBooleanValue = ((Boolean) ll3Var2.invoke()).booleanValue();
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching false and ignoring exception.", th);
                    }
                    zBooleanValue = false;
                }
                return Boolean.valueOf(zBooleanValue);
            }
        });
    }
}
