.class public final Lhf5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls82;
.implements Ls82$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls82<",
        "TData;>;",
        "Ls82$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljg6;

.field public f:Ls82$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls82$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/core/util/Pools$Pool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhf5$a;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lhf5$a;->d:I

    return-void

    :cond_0
    const-string p0, "Must not be empty."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls82;

    invoke-interface {p0}, Ls82;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhf5$a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhf5$a;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lhf5$a;->g:Ljava/util/List;

    iget-object p0, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls82;

    invoke-interface {v0}, Ls82;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Ly82;
    .locals 1

    iget-object p0, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls82;

    invoke-interface {p0}, Ls82;->c()Ly82;

    move-result-object p0

    return-object p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf5$a;->h:Z

    iget-object p0, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls82;

    invoke-interface {v0}, Ls82;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lhf5$a;->f:Ls82$a;

    invoke-interface {p0, p1}, Ls82$a;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lhf5$a;->g()V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lhf5$a;->g:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lhf5$a;->g()V

    return-void
.end method

.method public final f(Ljg6;Ls82$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg6;",
            "Ls82$a<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lhf5$a;->e:Ljg6;

    iput-object p2, p0, Lhf5$a;->f:Ls82$a;

    iget-object p2, p0, Lhf5$a;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lhf5$a;->g:Ljava/util/List;

    iget-object p2, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    iget v0, p0, Lhf5$a;->d:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls82;

    invoke-interface {p2, p1, p0}, Ls82;->f(Ljg6;Ls82$a;)V

    iget-boolean p1, p0, Lhf5$a;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lhf5$a;->cancel()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-boolean v0, p0, Lhf5$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lhf5$a;->d:I

    iget-object v1, p0, Lhf5$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lhf5$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhf5$a;->d:I

    iget-object v0, p0, Lhf5$a;->e:Ljg6;

    iget-object v1, p0, Lhf5$a;->f:Ls82$a;

    invoke-virtual {p0, v0, v1}, Lhf5$a;->f(Ljg6;Ls82$a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lhf5$a;->g:Ljava/util/List;

    invoke-static {v0}, Lr96;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lhf5$a;->f:Ls82$a;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lhf5$a;->g:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "Fetch failed"

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ls82$a;->e(Ljava/lang/Exception;)V

    return-void
.end method
