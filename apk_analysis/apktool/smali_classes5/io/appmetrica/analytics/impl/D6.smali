.class public final Lio/appmetrica/analytics/impl/D6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/appmetrica/analytics/impl/Qf;
    .locals 1

    const/16 v0, 0x1c

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Sf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Sf;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/Rf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Rf;-><init>()V

    return-object v0
.end method
