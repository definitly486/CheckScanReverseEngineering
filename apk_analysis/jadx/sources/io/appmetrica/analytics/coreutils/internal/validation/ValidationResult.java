package io.appmetrica.analytics.coreutils.internal.validation;

import defpackage.jh2;

/* JADX INFO: loaded from: classes5.dex */
public final class ValidationResult {
    public static final Companion Companion = new Companion(null);
    private final boolean a;
    private final String b;
    private final Class c;

    private ValidationResult(Validator validator, boolean z, String str) {
        this.a = z;
        this.b = str;
        this.c = validator.getClass();
    }

    public static final ValidationResult failed(Validator<?> validator, String str) {
        return Companion.failed(validator, str);
    }

    public static final ValidationResult successful(Validator<?> validator) {
        return Companion.successful(validator);
    }

    public final String getDescription() {
        return this.b;
    }

    public final Class<Validator<?>> getValidatorClass() {
        return this.c;
    }

    public final boolean isValid() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ValidationResult failed(Validator<?> validator, String str) {
            return new ValidationResult(validator, false, str, null);
        }

        public final ValidationResult successful(Validator<?> validator) {
            return new ValidationResult(validator, true, "", null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ ValidationResult(Validator validator, boolean z, String str, jh2 jh2Var) {
        this(validator, z, str);
    }
}
