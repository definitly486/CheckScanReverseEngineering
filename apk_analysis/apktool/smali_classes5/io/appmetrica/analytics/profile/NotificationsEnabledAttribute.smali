.class public Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;
.super Lio/appmetrica/analytics/profile/BooleanAttribute;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/DummyValidator;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Ol;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Ol;-><init>()V

    const-string v2, "appmetrica_notifications_enabled"

    invoke-direct {p0, v2, v0, v1}, Lio/appmetrica/analytics/profile/BooleanAttribute;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/y2;)V

    return-void
.end method
