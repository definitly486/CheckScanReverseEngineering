.class public final Lyl1$b;
.super Ly81;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ly81;

.field public final b:Lxl1;


# direct methods
.method public constructor <init>(Ly81;Lxl1;)V
    .locals 0

    invoke-direct {p0}, Ly81;-><init>()V

    iput-object p1, p0, Lyl1$b;->a:Ly81;

    const-string p1, "interceptor"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lyl1$b;->b:Lxl1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyl1$b;->a:Ly81;

    invoke-virtual {p0}, Ly81;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lra5;Lio/grpc/b;)Lrl1;
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
            ")",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lyl1$b;->b:Lxl1;

    iget-object p0, p0, Lyl1$b;->a:Ly81;

    invoke-interface {v0, p1, p2, p0}, Lxl1;->a(Lra5;Lio/grpc/b;Ly81;)Lrl1;

    move-result-object p0

    return-object p0
.end method
