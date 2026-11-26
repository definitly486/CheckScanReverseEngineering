package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.ValidationResult;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Md implements InterfaceC1215qo, InterfaceC1371x2 {
    public final String a;
    public final int b;
    public final Validator c;
    public final X2 d;
    public PublicLogger e = PublicLogger.getAnonymousInstance();

    public Md(int i, String str, Validator validator, X2 x2) {
        this.b = i;
        this.a = str;
        this.c = validator;
        this.d = x2;
    }

    public final C1240ro a() {
        C1240ro c1240ro = new C1240ro();
        c1240ro.b = this.b;
        c1240ro.a = this.a.getBytes();
        c1240ro.d = new C1292to();
        c1240ro.c = new C1266so();
        return c1240ro;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1215qo
    public abstract /* synthetic */ void a(C1189po c1189po);

    public final X2 b() {
        return this.d;
    }

    public final String c() {
        return this.a;
    }

    public final Validator<String> d() {
        return this.c;
    }

    public final int e() {
        return this.b;
    }

    public final boolean f() {
        ValidationResult validationResultValidate = this.c.validate(this.a);
        if (validationResultValidate.isValid()) {
            return true;
        }
        this.e.warning("Attribute " + this.a + " of type " + ((String) AbstractC0801ao.a.get(this.b)) + " is skipped because " + validationResultValidate.getDescription(), new Object[0]);
        return false;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1215qo
    public final void a(PublicLogger publicLogger) {
        this.e = publicLogger;
    }
}
