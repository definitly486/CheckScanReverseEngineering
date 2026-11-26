.class public final Lez4$m$a;
.super Ly81;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lez4$m;


# direct methods
.method public constructor <init>(Lez4$m;)V
    .locals 0

    iput-object p1, p0, Lez4$m$a;->a:Lez4$m;

    invoke-direct {p0}, Ly81;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lez4$m$a;->a:Lez4$m;

    iget-object p0, p0, Lez4$m;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Lra5;Lio/grpc/b;)Lrl1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lra5<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/b;",
            ")",
            "Lrl1<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lsl1;

    iget-object v1, p0, Lez4$m$a;->a:Lez4$m;

    iget-object v1, v1, Lez4$m;->d:Lez4;

    sget-object v2, Lez4;->c0:Ljava/util/logging/Logger;

    iget-object v2, p2, Lio/grpc/b;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    iget-object v2, v1, Lez4;->i:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v4, v1, Lez4;->Z:Lez4$e;

    iget-boolean v1, v1, Lez4;->H:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lez4$m$a;->a:Lez4$m;

    iget-object v1, v1, Lez4$m;->d:Lez4;

    iget-object v1, v1, Lez4;->g:Lhy0;

    iget-object v1, v1, Lhy0;->b:Lfm1;

    invoke-interface {v1}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lez4$m$a;->a:Lez4$m;

    iget-object v1, v1, Lez4$m;->d:Lez4;

    iget-object v6, v1, Lez4;->K:Lpy0;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lsl1;-><init>(Lra5;Ljava/util/concurrent/Executor;Lio/grpc/b;Lsl1$c;Ljava/util/concurrent/ScheduledExecutorService;Lpy0;)V

    iget-object p0, p0, Lez4$m$a;->a:Lez4$m;

    iget-object p0, p0, Lez4$m;->d:Lez4;

    iget-object p0, p0, Lez4;->o:Lyd2;

    iput-object p0, v0, Lsl1;->n:Lyd2;

    return-object v0
.end method
