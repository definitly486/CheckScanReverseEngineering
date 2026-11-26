.class public final Lez4$m$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4$m$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lez4$m$e;


# direct methods
.method public constructor <init>(Lez4$m$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$m$e$b;->b:Lez4$m$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lez4$m$e$b;->b:Lez4$m$e;

    iget-object v1, v0, Lez4$m$e;->r:Lez4$m;

    iget-object v1, v1, Lez4$m;->d:Lez4;

    iget-object v1, v1, Lez4;->B:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lez4$m$e$b;->b:Lez4$m$e;

    iget-object v0, v0, Lez4$m$e;->r:Lez4$m;

    iget-object v0, v0, Lez4$m;->d:Lez4;

    iget-object v0, v0, Lez4;->B:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lez4$m$e$b;->b:Lez4$m$e;

    iget-object v0, v0, Lez4$m$e;->r:Lez4$m;

    iget-object v0, v0, Lez4$m;->d:Lez4;

    iget-object v1, v0, Lez4;->Y:Lez4$i;

    iget-object v0, v0, Lez4;->C:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lu1;->o(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lez4$m$e$b;->b:Lez4$m$e;

    iget-object v0, v0, Lez4$m$e;->r:Lez4$m;

    iget-object v0, v0, Lez4$m;->d:Lez4;

    const/4 v1, 0x0

    iput-object v1, v0, Lez4;->B:Ljava/util/LinkedHashSet;

    iget-object v0, v0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lez4$m$e$b;->b:Lez4$m$e;

    iget-object p0, p0, Lez4$m$e;->r:Lez4$m;

    iget-object p0, p0, Lez4$m;->d:Lez4;

    iget-object p0, p0, Lez4;->E:Lez4$q;

    sget-object v0, Lez4;->d0:Lh88;

    iget-object v1, p0, Lez4$q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lez4$q;->c:Lh88;

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lez4$q;->c:Lh88;

    iget-object v2, p0, Lez4$q;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object p0, p0, Lez4$q;->d:Lez4;

    iget-object p0, p0, Lez4;->D:Lel2;

    invoke-virtual {p0, v0}, Lel2;->e(Lh88;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
