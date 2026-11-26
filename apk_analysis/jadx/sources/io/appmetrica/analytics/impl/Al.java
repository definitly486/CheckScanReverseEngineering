package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: loaded from: classes5.dex */
public final class Al implements Validator {
    public final C0 a;

    public Al(C0 c0) {
        this.a = c0;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ValidationResult validate(Void r1) {
        this.a.getClass();
        return C0.a() ? ValidationResult.successful(this) : ValidationResult.failed(this, "AppMetrica isn't initialized. Use AppMetrica#activate(android.content.Context, String) method to activate.");
    }

    public final ValidationResult a() {
        return validate(null);
    }
}
