package io.appmetrica.analytics.coreutils.internal.validation;

/* JADX INFO: loaded from: classes5.dex */
public final class NonEmptyStringValidator implements Validator<String> {
    private final String a;

    public NonEmptyStringValidator(String str) {
        this.a = str;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public ValidationResult validate(String str) {
        if (str != null && str.length() != 0) {
            return ValidationResult.Companion.successful(this);
        }
        return ValidationResult.Companion.failed(this, this.a + " is empty.");
    }
}
