package io.appmetrica.analytics.coreutils.internal.validation;

import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public final class NonEmptyCollectionValidator<T> implements Validator<Collection<? extends T>> {
    private final String a;

    public NonEmptyCollectionValidator(String str) {
        this.a = str;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public ValidationResult validate(Collection<? extends T> collection) {
        if (collection != null && !collection.isEmpty()) {
            return ValidationResult.Companion.successful(this);
        }
        return ValidationResult.Companion.failed(this, this.a + " is null or empty.");
    }
}
