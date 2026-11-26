package io.appmetrica.analytics.profile;

import defpackage.me0;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionLimitation;
import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.impl.C1237rl;
import io.appmetrica.analytics.impl.C1442zn;
import io.appmetrica.analytics.impl.Eb;
import io.appmetrica.analytics.impl.G8;
import io.appmetrica.analytics.impl.Le;
import io.appmetrica.analytics.impl.Vb;

/* JADX INFO: loaded from: classes5.dex */
public final class Attribute {
    public static BirthDateAttribute birthDate() {
        return new BirthDateAttribute();
    }

    public static BooleanAttribute customBoolean(String str) {
        return new BooleanAttribute(str, new Eb(), new Vb(new CollectionLimitation(100)));
    }

    public static CounterAttribute customCounter(String str) {
        return new CounterAttribute(str, new Eb(), new Vb(new CollectionLimitation(100)));
    }

    public static NumberAttribute customNumber(String str) {
        return new NumberAttribute(str, new Eb(), new Vb(new CollectionLimitation(100)));
    }

    public static StringAttribute customString(String str) {
        return new StringAttribute(str, new StringTrimmer(200, me0.c("String attribute \"", str, "\"")), new Eb(), new Vb(new CollectionLimitation(100)));
    }

    public static FirstPartyDataEmailSha256Attribute emailHash() {
        return new FirstPartyDataEmailSha256Attribute(new C1237rl(new G8()));
    }

    public static GenderAttribute gender() {
        return new GenderAttribute();
    }

    public static NameAttribute name() {
        return new NameAttribute();
    }

    public static NotificationsEnabledAttribute notificationsEnabled() {
        return new NotificationsEnabledAttribute();
    }

    public static FirstPartyDataPhoneSha256Attribute phoneHash() {
        return new FirstPartyDataPhoneSha256Attribute(new C1237rl(new Le()));
    }

    public static FirstPartyDataTelegramLoginSha256Attribute telegramLoginHash() {
        return new FirstPartyDataTelegramLoginSha256Attribute(new C1237rl(new C1442zn()));
    }
}
