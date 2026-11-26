.class public final Lel2$e;
.super Lgl2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final l:Ll86;

.field public final m:Lky1;

.field public final n:[Lio/grpc/c;

.field public volatile o:Lh88;

.field public final synthetic p:Lel2;


# direct methods
.method public constructor <init>(Lel2;Ll86;[Lio/grpc/c;)V
    .locals 0

    iput-object p1, p0, Lel2$e;->p:Lel2;

    const-string p1, "connecting_and_lb"

    invoke-direct {p0, p1}, Lgl2;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lky1;->b()Lky1;

    move-result-object p1

    iput-object p1, p0, Lel2$e;->m:Lky1;

    iput-object p2, p0, Lel2$e;->l:Ll86;

    iput-object p3, p0, Lel2$e;->n:[Lio/grpc/c;

    return-void
.end method


# virtual methods
.method public final j(Lh88;)V
    .locals 2

    invoke-super {p0, p1}, Lgl2;->j(Lh88;)V

    iget-object p1, p0, Lel2$e;->p:Lel2;

    iget-object p1, p1, Lel2;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lel2$e;->p:Lel2;

    iget-object v1, v0, Lel2;->g:Lel2$c;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lel2;->i:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lel2$e;->p:Lel2;

    invoke-virtual {v1}, Lel2;->f()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lel2$e;->p:Lel2;

    iget-object v1, v0, Lel2;->d:Lch8;

    iget-object v0, v0, Lel2;->f:Lel2$b;

    invoke-virtual {v1, v0}, Lch8;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lel2$e;->p:Lel2;

    iget-object v0, v0, Lel2;->j:Lel2$f;

    iget-object v0, v0, Lel2$f;->b:Lh88;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lel2$e;->p:Lel2;

    iget-object v1, v0, Lel2;->d:Lch8;

    iget-object v0, v0, Lel2;->g:Lel2$c;

    invoke-virtual {v1, v0}, Lch8;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lel2$e;->p:Lel2;

    const/4 v1, 0x0

    iput-object v1, v0, Lel2;->g:Lel2$c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lel2$e;->p:Lel2;

    iget-object p0, p0, Lel2;->d:Lch8;

    invoke-virtual {p0}, Lch8;->a()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final l(Ly54;)V
    .locals 2

    iget-object v0, p0, Lel2$e;->l:Ll86;

    iget-object v0, v0, Ll86;->a:Lio/grpc/b;

    invoke-virtual {v0}, Lio/grpc/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wait_for_ready"

    iget-object v1, p1, Ly54;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lel2$e;->o:Lh88;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh88;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Last Pick Failure"

    invoke-virtual {p1, v0, v1}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lgl2;->l(Ly54;)V

    return-void
.end method

.method public final p(Lh88;)V
    .locals 3

    iget-object p0, p0, Lel2$e;->n:[Lio/grpc/c;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ly14;->N(Lh88;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
