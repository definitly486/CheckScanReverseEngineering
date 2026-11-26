.class public final Lj06$a;
.super Lkj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lrv3;

.field public final synthetic b:Lj06;


# direct methods
.method public constructor <init>(Lj06;Lio/grpc/h$e;)V
    .locals 0

    iput-object p1, p0, Lj06$a;->b:Lj06;

    invoke-direct {p0}, Lio/grpc/h$e;-><init>()V

    new-instance p1, Lrv3;

    invoke-direct {p1, p2}, Lrv3;-><init>(Lio/grpc/h$e;)V

    iput-object p1, p0, Lj06$a;->a:Lrv3;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$b;)Lio/grpc/h$j;
    .locals 3

    new-instance v0, Lj06$h;

    iget-object v1, p0, Lj06$a;->b:Lj06;

    iget-object v2, v1, Lj06;->g:Ljava/util/HashMap;

    iget-object p0, p0, Lj06$a;->a:Lrv3;

    invoke-direct {v0, v1, p1, p0}, Lj06$h;-><init>(Lj06;Lio/grpc/h$b;Lrv3;)V

    iget-object p0, p1, Lio/grpc/h$b;->a:Ljava/util/List;

    invoke-static {p0}, Lj06;->e(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/d;

    iget-object p0, p0, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj06$c;

    invoke-virtual {p0, v0}, Lj06$c;->a(Lj06$h;)V

    iget-object p0, p0, Lj06$c;->d:Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lj06$h;->k()V

    :cond_0
    return-object v0
.end method

.method public final f(Lcx1;Lio/grpc/h$k;)V
    .locals 1

    new-instance v0, Lj06$g;

    invoke-direct {v0, p2}, Lj06$g;-><init>(Lio/grpc/h$k;)V

    iget-object p0, p0, Lj06$a;->a:Lrv3;

    invoke-virtual {p0, p1, v0}, Lrv3;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final g()Lio/grpc/h$e;
    .locals 0

    iget-object p0, p0, Lj06$a;->a:Lrv3;

    return-object p0
.end method
