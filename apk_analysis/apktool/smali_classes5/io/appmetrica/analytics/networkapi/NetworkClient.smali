.class public abstract Lio/appmetrica/analytics/networkapi/NetworkClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/networkapi/NetworkClient$Builder;
    }
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networkapi/NetworkClientSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/NetworkClient;->a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    return-void
.end method


# virtual methods
.method public final getSettings()Lio/appmetrica/analytics/networkapi/NetworkClientSettings;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/NetworkClient;->a:Lio/appmetrica/analytics/networkapi/NetworkClientSettings;

    return-object p0
.end method

.method public abstract newCall(Lio/appmetrica/analytics/networkapi/Request;)Lio/appmetrica/analytics/networkapi/Call;
.end method
