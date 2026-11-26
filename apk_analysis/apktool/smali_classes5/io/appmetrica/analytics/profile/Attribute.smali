.class public final Lio/appmetrica/analytics/profile/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static birthDate()Lio/appmetrica/analytics/profile/BirthDateAttribute;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/profile/BirthDateAttribute;

    invoke-direct {v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;-><init>()V

    return-object v0
.end method

.method public static customBoolean(Ljava/lang/String;)Lio/appmetrica/analytics/profile/BooleanAttribute;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/profile/BooleanAttribute;

    new-instance v1, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Vb;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    invoke-direct {v0, p0, v1, v2}, Lio/appmetrica/analytics/profile/BooleanAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    return-object v0
.end method

.method public static customCounter(Ljava/lang/String;)Lio/appmetrica/analytics/profile/CounterAttribute;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/profile/CounterAttribute;

    new-instance v1, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Vb;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    invoke-direct {v0, p0, v1, v2}, Lio/appmetrica/analytics/profile/CounterAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Eb;Lio/appmetrica/analytics/impl/Vb;)V

    return-object v0
.end method

.method public static customNumber(Ljava/lang/String;)Lio/appmetrica/analytics/profile/NumberAttribute;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/profile/NumberAttribute;

    new-instance v1, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Vb;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    invoke-direct {v0, p0, v1, v2}, Lio/appmetrica/analytics/profile/NumberAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Eb;Lio/appmetrica/analytics/impl/Vb;)V

    return-object v0
.end method

.method public static customString(Ljava/lang/String;)Lio/appmetrica/analytics/profile/StringAttribute;
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/profile/StringAttribute;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const-string v2, "String attribute \""

    const-string v3, "\""

    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {v1, v3, v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;)V

    new-instance v2, Lio/appmetrica/analytics/impl/Eb;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Eb;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Vb;

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Vb;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lio/appmetrica/analytics/profile/StringAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    return-object v0
.end method

.method public static emailHash()Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;

    new-instance v1, Lio/appmetrica/analytics/impl/rl;

    new-instance v2, Lio/appmetrica/analytics/impl/G8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/G8;-><init>()V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/rl;-><init>(Lio/appmetrica/analytics/impl/z2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/FirstPartyDataEmailSha256Attribute;-><init>(Lio/appmetrica/analytics/impl/rl;)V

    return-object v0
.end method

.method public static gender()Lio/appmetrica/analytics/profile/GenderAttribute;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/profile/GenderAttribute;

    invoke-direct {v0}, Lio/appmetrica/analytics/profile/GenderAttribute;-><init>()V

    return-object v0
.end method

.method public static name()Lio/appmetrica/analytics/profile/NameAttribute;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/profile/NameAttribute;

    invoke-direct {v0}, Lio/appmetrica/analytics/profile/NameAttribute;-><init>()V

    return-object v0
.end method

.method public static notificationsEnabled()Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;

    invoke-direct {v0}, Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;-><init>()V

    return-object v0
.end method

.method public static phoneHash()Lio/appmetrica/analytics/profile/FirstPartyDataPhoneSha256Attribute;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/profile/FirstPartyDataPhoneSha256Attribute;

    new-instance v1, Lio/appmetrica/analytics/impl/rl;

    new-instance v2, Lio/appmetrica/analytics/impl/Le;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Le;-><init>()V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/rl;-><init>(Lio/appmetrica/analytics/impl/z2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/FirstPartyDataPhoneSha256Attribute;-><init>(Lio/appmetrica/analytics/impl/rl;)V

    return-object v0
.end method

.method public static telegramLoginHash()Lio/appmetrica/analytics/profile/FirstPartyDataTelegramLoginSha256Attribute;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/profile/FirstPartyDataTelegramLoginSha256Attribute;

    new-instance v1, Lio/appmetrica/analytics/impl/rl;

    new-instance v2, Lio/appmetrica/analytics/impl/zn;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/zn;-><init>()V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/rl;-><init>(Lio/appmetrica/analytics/impl/z2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/FirstPartyDataTelegramLoginSha256Attribute;-><init>(Lio/appmetrica/analytics/impl/rl;)V

    return-object v0
.end method
