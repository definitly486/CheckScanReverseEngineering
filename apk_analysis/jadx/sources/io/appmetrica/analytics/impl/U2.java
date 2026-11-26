package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: loaded from: classes5.dex */
public final class U2 implements Validator {
    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public final ValidationResult validate(Object obj) {
        C1240ro[] c1240roArr = ((uo) obj).a;
        return (c1240roArr == null || c1240roArr.length == 0) ? ValidationResult.failed(this, "attributes list is empty") : ValidationResult.successful(this);
    }
}
