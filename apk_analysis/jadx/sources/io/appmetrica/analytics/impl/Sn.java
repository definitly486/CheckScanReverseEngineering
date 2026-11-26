package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ValidationException;
import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: loaded from: classes5.dex */
public class Sn implements Validator {
    public final Validator a;

    public Sn(Validator<Object> validator) {
        this.a = validator;
    }

    public final Validator<Object> a() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public final ValidationResult validate(Object obj) {
        ValidationResult validationResultValidate = this.a.validate(obj);
        if (validationResultValidate.isValid()) {
            return validationResultValidate;
        }
        throw new ValidationException(validationResultValidate.getDescription());
    }
}
