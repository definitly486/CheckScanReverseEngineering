package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ti, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1286ti implements Validator {
    public final Map a;

    public C1286ti(Map<String, ?> map) {
        this.a = map;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.validation.Validator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ValidationResult validate(String str) {
        if (!this.a.containsKey(str)) {
            return ValidationResult.successful(this);
        }
        return ValidationResult.failed(this, "Failed to activate AppMetrica with provided apiKey ApiKey " + str + " has already been used by another reporter.");
    }
}
