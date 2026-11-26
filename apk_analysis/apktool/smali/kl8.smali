.class public final Lkl8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public volatile c:Lk57;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk57<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkl8;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkl8;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(Lll3;)V
    .locals 2

    sget-object v0, Lpo8;->a:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lzk8;

    invoke-direct {v1, p0}, Lzk8;-><init>(Lll3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Lkk2;Lx3;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkl8;->c:Lk57;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkl8;->a:Ljava/util/ArrayList;

    new-instance v1, Ltr4;

    invoke-direct {v1, p1, p2}, Ltr4;-><init>(Lkk2;Lx3;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lk57;->b:Ljava/lang/Object;

    instance-of v1, v0, Lk57$a;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v2, Lbl8;

    invoke-direct {v2, p1, v1}, Lbl8;-><init>(Lkk2;Ljava/lang/Object;)V

    invoke-static {v2}, Lkl8;->b(Lll3;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    new-instance p1, Lcl8;

    invoke-direct {p1, p2, v0}, Lcl8;-><init>(Lx3;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkl8;->b(Lll3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
