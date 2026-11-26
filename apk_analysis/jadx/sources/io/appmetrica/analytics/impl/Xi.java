package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreutils.internal.limitation.StringByBytesTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.SubstituteTrimmer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class Xi {
    public final Revenue a;
    public final StringByBytesTrimmer b;
    public final SubstituteTrimmer c;
    public final SubstituteTrimmer d;
    public final PublicLogger e;

    public Xi(Revenue revenue, PublicLogger publicLogger) {
        this.e = publicLogger;
        this.a = revenue;
        this.b = new StringByBytesTrimmer(30720, "revenue payload", publicLogger);
        this.c = new SubstituteTrimmer(new StringByBytesTrimmer(184320, "receipt data", publicLogger), "<truncated data was not sent, exceeded the limit of 180kb>");
        this.d = new SubstituteTrimmer(new StringTrimmer(1000, "receipt signature", publicLogger), "<truncated data was not sent, exceeded the limit of 180kb>");
    }
}
