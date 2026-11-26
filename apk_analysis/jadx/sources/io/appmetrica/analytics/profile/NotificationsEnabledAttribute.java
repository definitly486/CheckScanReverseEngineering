package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.validation.DummyValidator;
import io.appmetrica.analytics.impl.Ol;

/* JADX INFO: loaded from: classes5.dex */
public class NotificationsEnabledAttribute extends BooleanAttribute {
    public NotificationsEnabledAttribute() {
        super("appmetrica_notifications_enabled", new DummyValidator(), new Ol());
    }
}
