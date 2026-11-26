package com.google.firebase.datastorage;

import androidx.datastore.preferences.core.Preferences;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaDataStorageKt {
    public static final <T> T getOrDefault(Preferences preferences, Preferences.Key<T> key, T t) {
        preferences.getClass();
        key.getClass();
        T t2 = (T) preferences.get(key);
        return t2 == null ? t : t2;
    }
}
