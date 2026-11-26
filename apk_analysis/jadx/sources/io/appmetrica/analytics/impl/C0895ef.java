package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.NonEmptyCollectionValidator;
import io.appmetrica.analytics.coreutils.internal.validation.NonEmptyStringValidator;
import io.appmetrica.analytics.coreutils.internal.validation.NonNullValidator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0895ef {
    public final C0983i a;
    public final Sn b = new Sn(new NonNullValidator("Error details"));
    public final Sn c = new Sn(new NonEmptyStringValidator("Error identifier"));
    public final NonEmptyCollectionValidator d = new NonEmptyCollectionValidator("Stacktrace");

    public C0895ef(C0 c0) {
        this.a = new C0983i(c0);
    }
}
