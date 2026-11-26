.class public final Lpa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa5$a;
    }
.end annotation


# instance fields
.field public final a:Lla5;


# direct methods
.method public constructor <init>(Lla5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extraHeaders"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lpa5;->a:Lla5;

    return-void
.end method


# virtual methods
.method public final a(Lra5;Lio/grpc/b;Ly81;)Lrl1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lra5<",
            "TReqT;TRespT;>;",
            "Lio/grpc/b;",
            "Ly81;",
            ")",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    new-instance v0, Lpa5$a;

    invoke-virtual {p3, p1, p2}, Ly81;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lpa5$a;-><init>(Lpa5;Lrl1;)V

    return-object v0
.end method
