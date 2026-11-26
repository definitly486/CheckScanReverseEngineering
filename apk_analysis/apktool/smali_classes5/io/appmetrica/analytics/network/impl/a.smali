.class public final Lio/appmetrica/analytics/network/impl/a;
.super Lio/appmetrica/analytics/networkapi/Call;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/networkapi/Call;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Lio/appmetrica/analytics/networkapi/Response;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/networkapi/Response$Builder;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is dummy call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/networkapi/Response$Builder;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/networkapi/Response$Builder;->build()Lio/appmetrica/analytics/networkapi/Response;

    move-result-object p0

    return-object p0
.end method
