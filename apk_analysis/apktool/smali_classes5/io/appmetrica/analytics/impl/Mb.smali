.class public final Lio/appmetrica/analytics/impl/Mb;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Nb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Nb;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Mb;->a:Lio/appmetrica/analytics/impl/Nb;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Mb;->a:Lio/appmetrica/analytics/impl/Nb;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nb;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rh;

    return-object p0
.end method
