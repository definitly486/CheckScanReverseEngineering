.class public final Lma5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le00;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma5$a;
    }
.end annotation


# instance fields
.field public final a:Lma5$a;

.field public final b:Ll62;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll62;)V
    .locals 1

    new-instance v0, Lma5$a;

    invoke-direct {v0, p1}, Lma5$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lma5;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lma5;->a:Lma5$a;

    iput-object p2, p0, Lma5;->b:Ll62;

    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/String;)Lr29;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lma5;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma5;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr29;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lma5;->a:Lma5$a;

    invoke-virtual {v0, p1}, Lma5$a;->a(Ljava/lang/String;)Ld00;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lma5;->b:Ll62;

    iget-object v2, v1, Ll62;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, v1, Ll62;->b:Ljava/lang/Object;

    check-cast v3, Lhm1;

    iget-object v1, v1, Ll62;->c:Ljava/lang/Object;

    check-cast v1, Lhm1;

    new-instance v4, Lqy;

    invoke-direct {v4, v2, v3, v1, p1}, Lqy;-><init>(Landroid/content/Context;Lhm1;Lhm1;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ld00;->create(Lk62;)Lr29;

    move-result-object v0

    iget-object v1, p0, Lma5;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
