.class public final Ljr3;
.super Lkj3;
.source "SourceFile"


# instance fields
.field public a:Lio/grpc/h;

.field public final synthetic b:Lir3;


# direct methods
.method public constructor <init>(Lir3;)V
    .locals 0

    iput-object p1, p0, Ljr3;->b:Lir3;

    invoke-direct {p0}, Lio/grpc/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcx1;Lio/grpc/h$k;)V
    .locals 3

    iget-object v0, p0, Ljr3;->a:Lio/grpc/h;

    iget-object p0, p0, Ljr3;->b:Lir3;

    iget-object v1, p0, Lir3;->k:Lio/grpc/h;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lir3;->n:Z

    const-string v1, "there\'s pending lb while current lb has been out of READY"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iput-object p1, p0, Lir3;->l:Lcx1;

    iput-object p2, p0, Lir3;->m:Lio/grpc/h$k;

    sget-object p2, Lcx1;->CONNECTING:Lcx1;

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Lir3;->f()V

    return-void

    :cond_0
    iget-object v2, p0, Lir3;->i:Lio/grpc/h;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcx1;->READY:Lcx1;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lir3;->n:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lir3;->f:Lir3$a;

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lir3;->f()V

    return-void

    :cond_2
    iget-object p0, p0, Lir3;->g:Lio/grpc/h$e;

    invoke-virtual {p0, p1, p2}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    :cond_3
    return-void
.end method

.method public final g()Lio/grpc/h$e;
    .locals 0

    iget-object p0, p0, Ljr3;->b:Lir3;

    iget-object p0, p0, Lir3;->g:Lio/grpc/h$e;

    return-object p0
.end method
