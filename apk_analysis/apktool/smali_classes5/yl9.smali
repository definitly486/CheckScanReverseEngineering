.class public final Lyl9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb08<",
        "Landroid/net/Uri;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyl9;->f:Lnl3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lb08;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxl9;

    iget-object p0, p0, Lyl9;->f:Lnl3;

    invoke-direct {v0, p0, p1}, Lxl9;-><init>(Lnl3;Lb08;)V

    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->requestDeferredDeeplink(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
