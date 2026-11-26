.class public final Ls94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lp94;


# direct methods
.method public constructor <init>(Lp94;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls94;->c:Lp94;

    iput-object p2, p0, Ls94;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Ls94;->c:Lp94;

    iget-object v0, v0, Lp94;->n:Lp94$e;

    iget-object v1, v0, Lp94$e;->a:Ljava/util/List;

    iget v2, v0, Lp94$e;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    iget v0, v0, Lp94$e;->c:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v1, v1, Lp94;->n:Lp94$e;

    iget-object v2, p0, Ls94;->b:Ljava/util/List;

    iput-object v2, v1, Lp94$e;->a:Ljava/util/List;

    invoke-virtual {v1}, Lp94$e;->b()V

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v2, p0, Ls94;->b:Ljava/util/List;

    iput-object v2, v1, Lp94;->o:Ljava/util/List;

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v1, v1, Lp94;->y:Ldx1;

    iget-object v1, v1, Ldx1;->a:Lcx1;

    sget-object v2, Lcx1;->READY:Lcx1;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v1, v1, Lp94;->y:Ldx1;

    iget-object v1, v1, Ldx1;->a:Lcx1;

    sget-object v2, Lcx1;->CONNECTING:Lcx1;

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v1, v1, Lp94;->n:Lp94$e;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, v1, Lp94$e;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, v1, Lp94$e;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/d;

    iget-object v4, v4, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v2, v1, Lp94$e;->b:I

    iput v4, v1, Lp94$e;->c:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ls94;->c:Lp94;

    iget-object v0, v0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->READY:Lcx1;

    iget-object v2, p0, Ls94;->c:Lp94;

    if-ne v0, v1, :cond_3

    iget-object v0, v2, Lp94;->x:Lp94$c;

    iget-object v1, p0, Ls94;->c:Lp94;

    iput-object v3, v1, Lp94;->x:Lp94$c;

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v1, v1, Lp94;->n:Lp94$e;

    invoke-virtual {v1}, Lp94$e;->b()V

    iget-object v1, p0, Ls94;->c:Lp94;

    sget-object v2, Lcx1;->IDLE:Lcx1;

    invoke-virtual {v1, v2}, Lp94;->f(Lcx1;)V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lp94;->w:Lp94$c;

    sget-object v1, Lh88;->m:Lh88;

    const-string v2, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v1, v2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldj3;->e(Lh88;)V

    iget-object v0, p0, Ls94;->c:Lp94;

    iput-object v3, v0, Lp94;->w:Lp94$c;

    iget-object v0, v0, Lp94;->n:Lp94$e;

    invoke-virtual {v0}, Lp94$e;->b()V

    iget-object v0, p0, Ls94;->c:Lp94;

    invoke-virtual {v0}, Lp94;->i()V

    :cond_4
    :goto_1
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_6

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v2, v1, Lp94;->s:Lch8$c;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lp94;->t:Lnz4;

    sget-object v2, Lh88;->m:Lh88;

    const-string v4, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v2, v4}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    invoke-interface {v1, v2}, Lnz4;->e(Lh88;)V

    iget-object v1, p0, Ls94;->c:Lp94;

    iget-object v1, v1, Lp94;->s:Lch8$c;

    invoke-virtual {v1}, Lch8$c;->a()V

    iget-object v1, p0, Ls94;->c:Lp94;

    iput-object v3, v1, Lp94;->s:Lch8$c;

    iput-object v3, v1, Lp94;->t:Lnz4;

    :cond_5
    iput-object v0, v1, Lp94;->t:Lnz4;

    iget-object v2, v1, Lp94;->m:Lch8;

    new-instance v3, Ls94$a;

    invoke-direct {v3, p0}, Ls94$a;-><init>(Ls94;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, v1, Lp94;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x5

    invoke-virtual/range {v2 .. v7}, Lch8;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lch8$c;

    move-result-object p0

    iput-object p0, v1, Lp94;->s:Lch8$c;

    :cond_6
    return-void
.end method
