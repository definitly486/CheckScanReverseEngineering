package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.NonEmptyCollectionValidator;
import io.appmetrica.analytics.coreutils.internal.validation.NonEmptyStringValidator;
import io.appmetrica.analytics.coreutils.internal.validation.NonNullValidator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0921ff {
    public final Sn a = new Sn(new NonNullValidator("Error details"));
    public final Sn b = new Sn(new NonEmptyStringValidator("Error identifier"));
    public final NonEmptyCollectionValidator c = new NonEmptyCollectionValidator("Stacktrace");
}
