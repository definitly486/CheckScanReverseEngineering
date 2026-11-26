package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.coreutils.internal.validation.DummyValidator;
import io.appmetrica.analytics.impl.Ol;

/* JADX INFO: loaded from: classes5.dex */
public class NameAttribute extends StringAttribute {
    public NameAttribute() {
        super("appmetrica_name", new StringTrimmer(100, "Name attribute"), new DummyValidator(), new Ol());
    }
}
