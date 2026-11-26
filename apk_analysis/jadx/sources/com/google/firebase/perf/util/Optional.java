package com.google.firebase.perf.util;

import defpackage.ag;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class Optional<T> {
    private final T value;

    private Optional(T t) {
        if (t != null) {
            this.value = t;
        } else {
            o2.d("value for optional is empty.");
            throw null;
        }
    }

    public static <T> Optional<T> absent() {
        return new Optional<>();
    }

    public static <T> Optional<T> fromNullable(T t) {
        return t == null ? absent() : of(t);
    }

    public static <T> Optional<T> of(T t) {
        return new Optional<>(t);
    }

    public T get() {
        T t = this.value;
        if (t != null) {
            return t;
        }
        ag.g("No value present");
        return null;
    }

    public boolean isAvailable() {
        return this.value != null;
    }

    private Optional() {
        this.value = null;
    }
}
