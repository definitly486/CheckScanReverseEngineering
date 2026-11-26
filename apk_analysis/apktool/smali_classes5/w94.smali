.class public final Lw94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp94$f;


# direct methods
.method public constructor <init>(Lp94$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw94;->b:Lp94$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lw94;->b:Lp94$f;

    iget-object v1, v0, Lp94$f;->c:Lp94;

    const/4 v2, 0x0

    iput-object v2, v1, Lp94;->p:Lw33;

    iget-object v3, v1, Lp94;->z:Lh88;

    if-eqz v3, :cond_1

    iget-object v0, v1, Lp94;->x:Lp94$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object p0, p0, Lw94;->b:Lp94$f;

    iget-object v0, p0, Lp94$f;->a:Lp94$c;

    iget-object p0, p0, Lp94$f;->c:Lp94;

    iget-object p0, p0, Lp94;->z:Lh88;

    invoke-virtual {v0, p0}, Ldj3;->e(Lh88;)V

    return-void

    :cond_1
    iget-object v3, v1, Lp94;->w:Lp94$c;

    iget-object v0, v0, Lp94$f;->a:Lp94$c;

    if-ne v3, v0, :cond_3

    iput-object v0, v1, Lp94;->x:Lp94$c;

    iget-object v0, p0, Lw94;->b:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iput-object v2, v0, Lp94;->w:Lp94$c;

    iget-object v0, v0, Lp94;->n:Lp94$e;

    invoke-virtual {v0}, Lp94$e;->a()Lio/grpc/a;

    iget-object v0, p0, Lw94;->b:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    sget-object v1, Lcx1;->READY:Lcx1;

    invoke-virtual {v0, v1}, Lp94;->f(Lcx1;)V

    iget-object v0, p0, Lw94;->b:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object v1, v0, Lp94;->A:Lrb8;

    iget-object v2, v0, Lp94;->B:Ljava/lang/String;

    iget-object v0, v0, Lp94;->n:Lp94$e;

    invoke-virtual {v0}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v0

    invoke-static {v0}, Lp94$f;->b(Lio/grpc/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lw94;->b:Lp94$f;

    iget-object v3, v3, Lp94$f;->c:Lp94;

    iget-object v3, v3, Lp94;->n:Lp94$e;

    invoke-virtual {v3}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v3

    sget-object v4, Lio/grpc/d;->e:Lio/grpc/a$b;

    iget-object v3, v3, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    iget-object p0, p0, Lw94;->b:Lp94$f;

    iget-object p0, p0, Lp94$f;->c:Lp94;

    iget-object p0, p0, Lp94;->n:Lp94$e;

    invoke-virtual {p0}, Lp94$e;->a()Lio/grpc/a;

    move-result-object p0

    sget-object v4, Lus3;->a:Lio/grpc/a$b;

    iget-object p0, p0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfl7;

    invoke-static {p0}, Lp94$f;->a(Lfl7;)Ljava/lang/String;

    move-result-object p0

    iget-object v4, v1, Lrb8;->a:Lua5;

    sget-object v5, Lrb8;->c:Lvv4;

    invoke-static {v2}, Lcom/google/common/collect/j;->s(Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v6

    invoke-static {v0, v3}, Lcom/google/common/collect/j;->t(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lua5;->a(Lvv4;Ljava/util/List;Ljava/util/List;)V

    iget-object v8, v1, Lrb8;->a:Lua5;

    sget-object v9, Lrb8;->e:Lhw4;

    invoke-static {v2}, Lcom/google/common/collect/j;->s(Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v12

    invoke-static {p0, v0, v3}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v13

    const-wide/16 v10, 0x1

    invoke-interface/range {v8 .. v13}, Lua5;->b(Lhw4;JLjava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method
