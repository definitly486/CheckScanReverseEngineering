.class public final Lcl8;
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
.field public final synthetic f:Lx3;


# direct methods
.method public constructor <init>(Lx3;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcl8;->f:Lx3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcl8;->f:Lx3;

    iget-object p0, p0, Lx3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
