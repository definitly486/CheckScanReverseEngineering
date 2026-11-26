package io.appmetrica.analytics.coreutils.internal.validation;

/* JADX INFO: loaded from: classes5.dex */
public final class NonNullValidator<T> implements Validator<T> {
    private final String a;

    public NonNullValidator(String str) {
        this.a = str;
    }

    public final String getObjectDescription() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public ValidationResult validate(T t) {
        if (t != null) {
            return ValidationResult.Companion.successful(this);
        }
        return ValidationResult.Companion.failed(this, this.a + " is null.");
    }
}
