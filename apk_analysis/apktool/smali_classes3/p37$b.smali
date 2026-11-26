.class public final Lp37$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lt37;

.field public final synthetic b:Lp37;


# direct methods
.method public constructor <init>(Lp37;Lt37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp37$b;->b:Lp37;

    iput-object p2, p0, Lp37$b;->a:Lt37;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lp37$b;->b:Lp37;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lp37$b;->a:Lt37;

    iget-object v0, p0, Lt37;->a:Ljava/util/Set;

    invoke-static {v0}, Leb9;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc37;

    invoke-interface {v1}, Lc37;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lc37;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lc37;->clear()V

    iget-boolean v2, p0, Lt37;->c:Z

    if-nez v2, :cond_1

    invoke-interface {v1}, Lc37;->i()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lt37;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method
