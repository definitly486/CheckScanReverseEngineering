package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.ValidationResultsChain;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class Wi implements Validator {
    public final ValidationResultsChain a = new ValidationResultsChain();

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ValidationResult validate(Revenue revenue) {
        ValidationResult validationResultSuccessful;
        ValidationResultsChain validationResultsChain = this.a;
        C0948gg c0948gg = new C0948gg();
        Integer num = revenue.quantity;
        if (num == null || num.intValue() > 0) {
            validationResultSuccessful = ValidationResult.successful(c0948gg);
        } else {
            validationResultSuccessful = ValidationResult.failed(c0948gg, "Invalid quantity value " + num);
        }
        return validationResultsChain.validate(Arrays.asList(validationResultSuccessful));
    }
}
