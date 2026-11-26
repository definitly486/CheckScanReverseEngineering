.class public final Lgl2$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public final a:Ldm1;

.field public volatile b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldm1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgl2$k;->c:Ljava/util/List;

    iput-object p1, p0, Lgl2$k;->a:Ldm1;

    return-void
.end method


# virtual methods
.method public final a(Lj98$a;)V
    .locals 1

    iget-boolean v0, p0, Lgl2$k;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgl2$k;->a:Ldm1;

    invoke-interface {p0, p1}, Lj98;->a(Lj98$a;)V

    return-void

    :cond_0
    new-instance v0, Lgl2$k$a;

    invoke-direct {v0, p0, p1}, Lgl2$k$a;-><init>(Lgl2$k;Lj98$a;)V

    invoke-virtual {p0, v0}, Lgl2$k;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lla5;)V
    .locals 1

    new-instance v0, Lgl2$k$c;

    invoke-direct {v0, p0, p1}, Lgl2$k$c;-><init>(Lgl2$k;Lla5;)V

    invoke-virtual {p0, v0}, Lgl2$k;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lh88;Ldm1$a;Lla5;)V
    .locals 1

    new-instance v0, Lgl2$k$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lgl2$k$d;-><init>(Lgl2$k;Lh88;Ldm1$a;Lla5;)V

    invoke-virtual {p0, v0}, Lgl2$k;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lgl2$k;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgl2$k;->a:Ldm1;

    invoke-interface {p0}, Lj98;->d()V

    return-void

    :cond_0
    new-instance v0, Lgl2$k$b;

    invoke-direct {v0, p0}, Lgl2$k$b;-><init>(Lgl2$k;)V

    invoke-virtual {p0, v0}, Lgl2$k;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgl2$k;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgl2$k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
