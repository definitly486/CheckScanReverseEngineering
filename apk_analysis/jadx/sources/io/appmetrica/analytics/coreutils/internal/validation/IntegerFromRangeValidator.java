package io.appmetrica.analytics.coreutils.internal.validation;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class IntegerFromRangeValidator implements Validator<Integer> {
    private final String a;
    private final List b;

    public IntegerFromRangeValidator(String str, List<Integer> list) {
        this.a = str;
        this.b = list;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    public ValidationResult validate(Integer num) {
        if (num == null) {
            return ValidationResult.Companion.failed(this, this.a + "is null");
        }
        if (this.b.contains(num)) {
            return ValidationResult.Companion.successful(this);
        }
        return ValidationResult.Companion.failed(this, this.a + "(value = " + num + ") not in range of possible values: " + this.b);
    }
}
