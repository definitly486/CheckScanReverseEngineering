.class public abstract Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/networkapi/NetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lio/appmetrica/analytics/networkapi/NetworkClientSettings$Builder;->build()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    return-void
.end method


# virtual methods
.method public abstract build()Lio/appmetrica/analytics/networkapi/NetworkClient;
.end method

.method public final getSettings()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    return-object p0
.end method

.method public final withSettings(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;->a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    return-object p0
.end method
