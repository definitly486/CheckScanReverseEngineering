package com.google.firebase.inappmessaging.display.dagger.internal;

import defpackage.ws6;

/* JADX INFO: loaded from: classes4.dex */
public final class Providers {
    private Providers() {
    }

    public static <T> Provider<T> asDaggerProvider(final ws6<T> ws6Var) {
        Preconditions.checkNotNull(ws6Var);
        return ws6Var instanceof Provider ? (Provider) ws6Var : new Provider<T>() { // from class: com.google.firebase.inappmessaging.display.dagger.internal.Providers.1
            @Override // com.google.firebase.inappmessaging.display.dagger.internal.Provider, defpackage.ws6
            public T get() {
                return (T) ws6Var.get();
            }
        };
    }
}
