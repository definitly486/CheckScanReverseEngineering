package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.gg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0948gg implements Validator {
    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public final ValidationResult validate(Object obj) {
        Integer num = (Integer) obj;
        if (num == null || num.intValue() > 0) {
            return ValidationResult.successful(this);
        }
        return ValidationResult.failed(this, "Invalid quantity value " + num);
    }
}
