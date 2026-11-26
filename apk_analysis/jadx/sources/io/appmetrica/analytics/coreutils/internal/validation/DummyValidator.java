package io.appmetrica.analytics.coreutils.internal.validation;

/* JADX INFO: loaded from: classes5.dex */
public final class DummyValidator<T> implements Validator<T> {
    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public ValidationResult validate(T t) {
        return ValidationResult.Companion.successful(this);
    }
}
