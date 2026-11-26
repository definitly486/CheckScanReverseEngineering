.class public final Lyads/j95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lby6;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:Z

.field public final synthetic c:Lll3;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0

    iput-object p1, p0, Lyads/j95;->c:Lll3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;
    .locals 0

    iget-boolean p1, p0, Lyads/j95;->b:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/j95;->a:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p1, p0, Lyads/j95;->c:Lll3;

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lyads/j95;->b:Z

    if-eqz p2, :cond_1

    iget-object p1, p0, Lyads/j95;->a:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Lyads/j95;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lyads/j95;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method
