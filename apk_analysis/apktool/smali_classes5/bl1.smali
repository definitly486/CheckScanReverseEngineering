.class public final Lbl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfq7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lne4<",
            "*>;",
            "Ldf4<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ldl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldl1<",
            "Lox0<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Lne4<",
            "*>;+",
            "Ldf4<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl1;->a:Lnl3;

    new-instance p1, Ldl1;

    invoke-direct {p1}, Ldl1;-><init>()V

    iput-object p1, p0, Lbl1;->b:Ldl1;

    return-void
.end method


# virtual methods
.method public final a(Lne4;)Ldf4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne4<",
            "Ljava/lang/Object;",
            ">;)",
            "Ldf4<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbl1;->b:Ldl1;

    invoke-static {p1}, Ld31;->n(Lne4;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lwg5;

    iget-object v1, v0, Lwg5;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lwg5;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lox0;

    iget-object p0, p0, Lbl1;->a:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    invoke-direct {v1, p0}, Lox0;-><init>(Ldf4;)V

    new-instance p0, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p0, v0, Lwg5;->a:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_0
    check-cast v1, Lox0;

    iget-object p0, v1, Lox0;->a:Ldf4;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
