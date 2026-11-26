.class public final Lde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/StartupParamsCallback;


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde;->a:Lc31;

    return-void
.end method


# virtual methods
.method public final onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 1

    iget-object p0, p0, Lde;->a:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;->deviceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lde;->a:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
