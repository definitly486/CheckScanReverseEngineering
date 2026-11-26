.class public final Ljq2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;)V
    .locals 0

    iput-object p1, p0, Ljq2;->f:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Liq2;

    const/4 v1, 0x0

    iget-object p0, p0, Ljq2;->f:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    invoke-direct {v0, p0, v1}, Liq2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
