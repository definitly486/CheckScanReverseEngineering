.class public final Lcl2$g;
.super Lrl1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lrl1$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl2<",
            "*TRespT;>;"
        }
    .end annotation
.end field

.field public final b:Lrl1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public volatile c:Z

.field public volatile d:Lh88;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcl2;Lrl1$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcl2<",
            "*TRespT;>;",
            "Lrl1$a<",
            "TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lrl1$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl2$g;->e:Ljava/util/List;

    iput-object p1, p0, Lcl2$g;->a:Lcl2;

    iput-object p2, p0, Lcl2$g;->b:Lrl1$a;

    return-void
.end method


# virtual methods
.method public final a(Lh88;Lla5;)V
    .locals 1

    new-instance v0, Lcl2$g$c;

    invoke-direct {v0, p0, p1, p2}, Lcl2$g$c;-><init>(Lcl2$g;Lh88;Lla5;)V

    invoke-virtual {p0, v0}, Lcl2$g;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lla5;)V
    .locals 2

    iget-boolean v0, p0, Lcl2$g;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl2$g;->d:Lh88;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcl2$g;->b:Lrl1$a;

    invoke-virtual {v0, p1}, Lrl1$a;->b(Lla5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lh88;->f:Lh88;

    invoke-virtual {v0, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v0

    const-string v1, "Failed to read headers"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    iput-object v0, p0, Lcl2$g;->d:Lh88;

    iget-object p0, p0, Lcl2$g;->a:Lcl2;

    invoke-virtual {p0, v1, p1}, Lcl2;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v0, Lcl2$g$a;

    invoke-direct {v0, p0, p1}, Lcl2$g$a;-><init>(Lcl2$g;Lla5;)V

    invoke-virtual {p0, v0}, Lcl2$g;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcl2$g;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl2$g;->d:Lh88;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcl2$g;->b:Lrl1$a;

    invoke-virtual {v0, p1}, Lrl1$a;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lh88;->f:Lh88;

    invoke-virtual {v0, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v0

    const-string v1, "Failed to read message."

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    iput-object v0, p0, Lcl2$g;->d:Lh88;

    iget-object p0, p0, Lcl2$g;->a:Lcl2;

    invoke-virtual {p0, v1, p1}, Lcl2;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v0, Lcl2$g$b;

    invoke-direct {v0, p0, p1}, Lcl2$g$b;-><init>(Lcl2$g;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcl2$g;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lcl2$g;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl2$g;->d:Lh88;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcl2$g;->b:Lrl1$a;

    invoke-virtual {v0}, Lrl1$a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lh88;->f:Lh88;

    invoke-virtual {v1, v0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v1

    const-string v2, "Failed to call onReady."

    invoke-virtual {v1, v2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    iput-object v1, p0, Lcl2$g;->d:Lh88;

    iget-object p0, p0, Lcl2$g;->a:Lcl2;

    invoke-virtual {p0, v2, v0}, Lcl2;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v0, Lcl2$g$d;

    invoke-direct {v0, p0}, Lcl2$g$d;-><init>(Lcl2$g;)V

    invoke-virtual {p0, v0}, Lcl2$g;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcl2$g;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl2$g;->e:Ljava/util/List;

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
