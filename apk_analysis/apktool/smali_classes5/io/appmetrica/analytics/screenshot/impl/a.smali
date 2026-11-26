.class public final Lio/appmetrica/analytics/screenshot/impl/a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/d;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/a;->a:Lio/appmetrica/analytics/screenshot/impl/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/screenshot/impl/d;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    const-string v0, "AndroidApiScreenshotCaptor"

    check-cast p0, Lio/appmetrica/analytics/screenshot/impl/u;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/screenshot/impl/u;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity$ScreenCaptureCallback;
    .locals 1

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/a;->a:Lio/appmetrica/analytics/screenshot/impl/d;

    new-instance v0, Lsm9;

    invoke-direct {v0, p0}, Lsm9;-><init>(Lio/appmetrica/analytics/screenshot/impl/d;)V

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/impl/a;->a()Landroid/app/Activity$ScreenCaptureCallback;

    move-result-object p0

    return-object p0
.end method
