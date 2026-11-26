package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: loaded from: classes5.dex */
public final class Eb implements Validator {
    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ValidationResult validate(String str) {
        if (str == null) {
            return ValidationResult.failed(this, "key is null");
        }
        if (str.startsWith(S7.b)) {
            return ValidationResult.failed(this, "key starts with appmetrica");
        }
        return str.length() > 200 ? ValidationResult.failed(this, "key length more then 200 characters") : ValidationResult.successful(this);
    }
}
