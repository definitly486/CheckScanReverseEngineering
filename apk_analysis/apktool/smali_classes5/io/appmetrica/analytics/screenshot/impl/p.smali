.class public final Lio/appmetrica/analytics/screenshot/impl/p;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/s;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/s;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/p;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/p;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    const-string v0, "ContentObserverScreenshotCaptor"

    check-cast p0, Lio/appmetrica/analytics/screenshot/impl/u;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/screenshot/impl/u;->a(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
