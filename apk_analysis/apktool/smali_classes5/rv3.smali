.class public final Lrv3;
.super Lkj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrv3$b;,
        Lrv3$a;
    }
.end annotation


# instance fields
.field public final a:Lio/grpc/h$e;


# direct methods
.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 1

    invoke-direct {p0}, Lio/grpc/h$e;-><init>()V

    const-string v0, "helper"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lrv3;->a:Lio/grpc/h$e;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$b;)Lio/grpc/h$j;
    .locals 2

    sget-object v0, Lio/grpc/h;->b:Lio/grpc/h$b$b;

    invoke-virtual {p1, v0}, Lio/grpc/h$b;->a(Lio/grpc/h$b$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/h$l;

    invoke-super {p0, p1}, Lkj3;->a(Lio/grpc/h$b;)Lio/grpc/h$j;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/h$j;->c()Lio/grpc/a;

    move-result-object p1

    sget-object v1, Lio/grpc/h;->d:Lio/grpc/a$b;

    iget-object p1, p1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lrv3$b;

    invoke-direct {p1, p0, v0}, Lrv3$b;-><init>(Lio/grpc/h$j;Lio/grpc/h$l;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final f(Lcx1;Lio/grpc/h$k;)V
    .locals 1

    new-instance v0, Lrv3$a;

    invoke-direct {v0, p2}, Lrv3$a;-><init>(Lio/grpc/h$k;)V

    iget-object p0, p0, Lrv3;->a:Lio/grpc/h$e;

    invoke-virtual {p0, p1, v0}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final g()Lio/grpc/h$e;
    .locals 0

    iget-object p0, p0, Lrv3;->a:Lio/grpc/h$e;

    return-object p0
.end method
