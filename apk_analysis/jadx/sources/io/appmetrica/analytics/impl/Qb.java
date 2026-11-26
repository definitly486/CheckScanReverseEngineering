package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.NonNullValidator;

/* JADX INFO: loaded from: classes5.dex */
public final class Qb {
    public final Al c;
    public final NonNullValidator a = new NonNullValidator("Context");
    public final NonNullValidator b = new NonNullValidator("Config");
    public final NonNullValidator d = new NonNullValidator("Sender");
    public final NonNullValidator e = new NonNullValidator("Event");
    public final NonNullValidator f = new NonNullValidator("Payload");
    public final C1035k0 g = new C1035k0();

    public Qb(C0 c0) {
        this.c = new Al(c0);
    }
}
