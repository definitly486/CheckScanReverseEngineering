.class public final Ly08;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc37;
.implements Lv18;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly08$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc37;",
        "Lv18;"
    }
.end annotation


# static fields
.field public static final C:Z


# instance fields
.field public A:Z

.field public final B:Ljava/lang/RuntimeException;

.field public final a:Ljava/lang/String;

.field public final b:Lc78$a;

.field public final c:Ljava/lang/Object;

.field public final d:Lj37;

.field public final e:Landroid/content/Context;

.field public final f:Lwq3;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final i:Lee0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee0<",
            "*>;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:I

.field public final l:Ljg6;

.field public final m:Lwk8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk8<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo37<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final o:Ll29;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll29<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final p:Ly13$a;

.field public q:Le47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le47<",
            "TR;>;"
        }
    .end annotation
.end field

.field public r:Lkz2$d;

.field public s:J

.field public volatile t:Lkz2;

.field public u:Ly08$a;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ly08;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwq3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lee0;IILjg6;Lwk8;Ljava/util/ArrayList;Lj37;Lkz2;Ll29;)V
    .locals 2

    sget-object v0, Ly13;->a:Ly13$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Ly08;->C:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ly08;->a:Ljava/lang/String;

    new-instance v1, Lc78$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ly08;->b:Lc78$a;

    iput-object p3, p0, Ly08;->c:Ljava/lang/Object;

    iput-object p1, p0, Ly08;->e:Landroid/content/Context;

    iput-object p2, p0, Ly08;->f:Lwq3;

    iput-object p4, p0, Ly08;->g:Ljava/lang/Object;

    iput-object p5, p0, Ly08;->h:Ljava/lang/Class;

    iput-object p6, p0, Ly08;->i:Lee0;

    iput p7, p0, Ly08;->j:I

    iput p8, p0, Ly08;->k:I

    iput-object p9, p0, Ly08;->l:Ljg6;

    iput-object p10, p0, Ly08;->m:Lwk8;

    iput-object p11, p0, Ly08;->n:Ljava/util/List;

    iput-object p12, p0, Ly08;->d:Lj37;

    iput-object p13, p0, Ly08;->t:Lkz2;

    move-object/from16 p1, p14

    iput-object p1, p0, Ly08;->o:Ll29;

    iput-object v0, p0, Ly08;->p:Ly13$a;

    sget-object p1, Ly08$a;->PENDING:Ly08$a;

    iput-object p1, p0, Ly08;->u:Ly08$a;

    iget-object p1, p0, Ly08;->B:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    iget-object p1, p2, Lwq3;->g:Lyq3;

    const-class p2, Ltq3;

    iget-object p1, p1, Lyq3;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ly08;->B:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ly08;->u:Ly08$a;

    sget-object v1, Ly08$a;->COMPLETE:Ly08$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "finished onSizeReady in "

    const-string v4, "finished setup for calling load in "

    const-string v5, "Got onSizeReady in "

    iget-object v6, v0, Ly08;->b:Lc78$a;

    invoke-virtual {v6}, Lc78$a;->a()V

    iget-object v6, v0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v20, Ly08;->C:Z

    if-eqz v20, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Ly08;->s:J

    invoke-static {v8, v9}, Lcv4;->a(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ly08;->g(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v21, v6

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v5, v0, Ly08;->u:Ly08$a;

    sget-object v7, Ly08$a;->WAITING_FOR_SIZE:Ly08$a;

    if-eq v5, v7, :cond_1

    monitor-exit v6

    return-void

    :cond_1
    sget-object v5, Ly08$a;->RUNNING:Ly08$a;

    iput-object v5, v0, Ly08;->u:Ly08$a;

    iget-object v7, v0, Ly08;->i:Lee0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v1, v1

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    iput v1, v0, Ly08;->y:I

    if-ne v2, v7, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    int-to-float v1, v2

    mul-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_2
    iput v1, v0, Ly08;->z:I

    if-eqz v20, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Ly08;->s:J

    invoke-static {v7, v8}, Lcv4;->a(J)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly08;->g(Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Ly08;->t:Lkz2;

    move-object v1, v3

    iget-object v3, v0, Ly08;->f:Lwq3;

    iget-object v4, v0, Ly08;->g:Ljava/lang/Object;

    iget-object v7, v0, Ly08;->i:Lee0;

    move-object v8, v5

    iget-object v5, v7, Lee0;->k:Lkf4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v6

    :try_start_1
    iget v6, v0, Ly08;->y:I

    iget v10, v0, Ly08;->z:I

    move-object v11, v8

    iget-object v8, v7, Lee0;->p:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v12, v9

    :try_start_2
    iget-object v9, v0, Ly08;->h:Ljava/lang/Class;

    move v13, v10

    iget-object v10, v0, Ly08;->l:Ljg6;

    move-object v14, v11

    iget-object v11, v7, Lee0;->c:Lsn2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v15, v12

    :try_start_3
    iget-object v12, v7, Lee0;->o:Lzx0;

    move/from16 v16, v13

    iget-boolean v13, v7, Lee0;->l:Z

    move-object/from16 v17, v14

    iget-boolean v14, v7, Lee0;->t:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v15

    :try_start_4
    iget-object v15, v7, Lee0;->n:Lxz5;

    move-object/from16 p1, v1

    iget-boolean v1, v7, Lee0;->h:Z

    iget-boolean v7, v7, Lee0;->u:Z

    move/from16 v19, v1

    iget-object v1, v0, Ly08;->p:Ly13$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v21, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    :try_start_5
    invoke-virtual/range {v2 .. v19}, Lkz2;->b(Lwq3;Ljava/lang/Object;Lkf4;IILjava/lang/Class;Ljava/lang/Class;Ljg6;Lsn2;Lzx0;ZZLxz5;ZZLy08;Ly13$a;)Lkz2$d;

    move-result-object v2

    move-object/from16 v3, v18

    iput-object v2, v3, Ly08;->r:Lkz2$d;

    iget-object v2, v3, Ly08;->u:Ly08$a;

    if-eq v2, v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, v3, Ly08;->r:Lkz2$d;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v20, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v3, Ly08;->s:J

    invoke-static {v1, v2}, Lcv4;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ly08;->g(Ljava/lang/String;)V

    :cond_6
    monitor-exit v21

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v21, v18

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v21, v15

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v21, v9

    :goto_4
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ly08;->u:Ly08$a;

    sget-object v1, Ly08$a;->CLEARED:Ly08$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ly08;->A:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Ly08;->b:Lc78$a;

    invoke-virtual {v1}, Lc78$a;->a()V

    iget-object v1, p0, Ly08;->u:Ly08$a;

    sget-object v2, Ly08$a;->CLEARED:Ly08$a;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ly08;->e()V

    iget-object v1, p0, Ly08;->q:Le47;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, Ly08;->q:Le47;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    iget-object v3, p0, Ly08;->d:Lj37;

    if-eqz v3, :cond_2

    invoke-interface {v3, p0}, Lj37;->g(Lc37;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Ly08;->m:Lwk8;

    invoke-virtual {p0}, Ly08;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lwk8;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iput-object v2, p0, Ly08;->u:Ly08$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object p0, p0, Ly08;->t:Lkz2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lkz2;->f(Le47;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(Lc37;)Z
    .locals 14

    instance-of v0, p1, Ly08;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Ly08;->j:I

    iget v3, p0, Ly08;->k:I

    iget-object v4, p0, Ly08;->g:Ljava/lang/Object;

    iget-object v5, p0, Ly08;->h:Ljava/lang/Class;

    iget-object v6, p0, Ly08;->i:Lee0;

    iget-object v7, p0, Ly08;->l:Ljg6;

    iget-object p0, p0, Ly08;->n:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    move p0, v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Ly08;

    iget-object v8, p1, Ly08;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget v0, p1, Ly08;->j:I

    iget v9, p1, Ly08;->k:I

    iget-object v10, p1, Ly08;->g:Ljava/lang/Object;

    iget-object v11, p1, Ly08;->h:Ljava/lang/Class;

    iget-object v12, p1, Ly08;->i:Lee0;

    iget-object v13, p1, Ly08;->l:Ljg6;

    iget-object p1, p1, Ly08;->n:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_2
    move p1, v1

    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_8

    if-ne v3, v9, :cond_8

    const/4 v0, 0x1

    if-nez v4, :cond_4

    if-nez v10, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    instance-of v2, v4, Ljc5;

    if-eqz v2, :cond_5

    check-cast v4, Ljc5;

    invoke-interface {v4}, Ljc5;->a()Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v6, :cond_7

    if-nez v12, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v12}, Lee0;->j(Lee0;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_8

    if-ne v7, v13, :cond_8

    if-ne p0, p1, :cond_8

    return v0

    :cond_8
    :goto_4
    return v1

    :goto_5
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Ly08;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ly08;->b:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-object v0, p0, Ly08;->m:Lwk8;

    invoke-interface {v0, p0}, Lwk8;->removeCallback(Lv18;)V

    iget-object v0, p0, Ly08;->r:Lkz2$d;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lkz2$d;->c:Lkz2;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lkz2$d;->a:Luz2;

    iget-object v0, v0, Lkz2$d;->b:Ly08;

    invoke-virtual {v2, v0}, Luz2;->h(Ly08;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Ly08;->r:Lkz2$d;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void

    :cond_1
    const-string p0, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Ly08;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Ly08;->i:Lee0;

    iget-object v1, v0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v1, p0, Ly08;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget v2, v0, Lee0;->g:I

    if-lez v2, :cond_1

    iget-object v0, v0, Lee0;->r:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Ly08;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    invoke-static {v1, v1, v2, v0}, Lcs2;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ly08;->w:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, " this: "

    invoke-static {p1, v0}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Ly08;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlideRequest"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 9

    const-string v0, "Load failed for ["

    iget-object v1, p0, Ly08;->b:Lc78$a;

    invoke-virtual {v1}, Lc78$a;->a()V

    iget-object v1, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Ly08;->f:Lwq3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    if-gt v2, p2, :cond_0

    const-string p2, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ly08;->g:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] with dimensions ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ly08;->y:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ly08;->z:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->e()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    :goto_0
    const/4 p2, 0x0

    iput-object p2, p0, Ly08;->r:Lkz2$d;

    sget-object v0, Ly08$a;->FAILED:Ly08$a;

    iput-object v0, p0, Ly08;->u:Ly08$a;

    iget-object v0, p0, Ly08;->d:Lj37;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lj37;->h(Lc37;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ly08;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Ly08;->n:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo37;

    iget-object v6, p0, Ly08;->g:Ljava/lang/Object;

    iget-object v7, p0, Ly08;->m:Lwk8;

    iget-object v8, p0, Ly08;->d:Lj37;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lj37;->getRoot()Lj37;

    move-result-object v8

    invoke-interface {v8}, Lj37;->a()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v0

    :goto_3
    invoke-interface {v5, p1, v6, v7, v8}, Lo37;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lwk8;Z)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :cond_4
    move v4, v2

    :cond_5
    if-nez v4, :cond_10

    iget-object p1, p0, Ly08;->d:Lj37;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lj37;->e(Lc37;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    iget-object p1, p0, Ly08;->g:Ljava/lang/Object;

    if-nez p1, :cond_9

    iget-object p1, p0, Ly08;->x:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_a

    iget-object p1, p0, Ly08;->i:Lee0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ly08;->x:Landroid/graphics/drawable/Drawable;

    :cond_9
    move-object p1, p2

    :cond_a
    if-nez p1, :cond_e

    iget-object p1, p0, Ly08;->v:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_c

    iget-object p1, p0, Ly08;->i:Lee0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ly08;->v:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lee0;->e:I

    if-lez p1, :cond_d

    iget-object p2, p0, Ly08;->e:Landroid/content/Context;

    iget-object v0, p0, Ly08;->i:Lee0;

    iget-object v0, v0, Lee0;->r:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_5
    invoke-static {p2, p2, p1, v0}, Lcs2;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Ly08;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_c
    move-object p2, p1

    :cond_d
    :goto_6
    move-object p1, p2

    :cond_e
    if-nez p1, :cond_f

    invoke-virtual {p0}, Ly08;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_f
    iget-object p2, p0, Ly08;->m:Lwk8;

    invoke-interface {p2, p1}, Lwk8;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_10
    :goto_7
    :try_start_2
    iput-boolean v2, p0, Ly08;->A:Z

    monitor-exit v1

    return-void

    :goto_8
    iput-boolean v2, p0, Ly08;->A:Z

    throw p1

    :goto_9
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ly08;->A:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Ly08;->b:Lc78$a;

    invoke-virtual {v1}, Lc78$a;->a()V

    sget v1, Lcv4;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p0, Ly08;->s:J

    iget-object v1, p0, Ly08;->g:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget v1, p0, Ly08;->j:I

    iget v2, p0, Ly08;->k:I

    invoke-static {v1, v2}, Leb9;->j(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ly08;->j:I

    iput v1, p0, Ly08;->y:I

    iget v1, p0, Ly08;->k:I

    iput v1, p0, Ly08;->z:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v1, p0, Ly08;->x:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Ly08;->i:Lee0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, Ly08;->x:Landroid/graphics/drawable/Drawable;

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Ly08;->h(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Ly08;->u:Ly08$a;

    sget-object v2, Ly08$a;->RUNNING:Ly08$a;

    if-eq v1, v2, :cond_d

    sget-object v2, Ly08$a;->COMPLETE:Ly08$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ly08;->q:Le47;

    sget-object v2, Ly82;->MEMORY_CACHE:Ly82;

    invoke-virtual {p0, v1, v2, v3}, Ly08;->j(Le47;Ly82;Z)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object v1, p0, Ly08;->n:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo37;

    goto :goto_2

    :cond_6
    :goto_3
    sget-object v1, Ly08$a;->WAITING_FOR_SIZE:Ly08$a;

    iput-object v1, p0, Ly08;->u:Ly08$a;

    iget v2, p0, Ly08;->j:I

    iget v4, p0, Ly08;->k:I

    invoke-static {v2, v4}, Leb9;->j(II)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Ly08;->j:I

    iget v4, p0, Ly08;->k:I

    invoke-virtual {p0, v2, v4}, Ly08;->b(II)V

    goto :goto_4

    :cond_7
    iget-object v2, p0, Ly08;->m:Lwk8;

    invoke-interface {v2, p0}, Lwk8;->getSize(Lv18;)V

    :goto_4
    iget-object v2, p0, Ly08;->u:Ly08$a;

    sget-object v4, Ly08$a;->RUNNING:Ly08$a;

    if-eq v2, v4, :cond_8

    if-ne v2, v1, :cond_b

    :cond_8
    iget-object v1, p0, Ly08;->d:Lj37;

    if-eqz v1, :cond_9

    invoke-interface {v1, p0}, Lj37;->e(Lc37;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    iget-object v1, p0, Ly08;->m:Lwk8;

    invoke-virtual {p0}, Ly08;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lwk8;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    sget-boolean v1, Ly08;->C:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ly08;->s:J

    invoke-static {v2, v3}, Lcv4;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ly08;->g(Ljava/lang/String;)V

    :cond_c
    monitor-exit v0

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isComplete()Z
    .locals 2

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ly08;->u:Ly08$a;

    sget-object v1, Ly08$a;->COMPLETE:Ly08$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isRunning()Z
    .locals 2

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ly08;->u:Ly08$a;

    sget-object v1, Ly08$a;->RUNNING:Ly08$a;

    if-eq p0, v1, :cond_1

    sget-object v1, Ly08$a;->WAITING_FOR_SIZE:Ly08$a;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Le47;Ly82;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le47<",
            "*>;",
            "Ly82;",
            "Z)V"
        }
    .end annotation

    const-string v0, "Expected to receive an object of "

    const-string v1, "Expected to receive a Resource<R> with an object of "

    iget-object v2, p0, Ly08;->b:Lc78$a;

    invoke-virtual {v2}, Lc78$a;->a()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v2, p0, Ly08;->r:Lkz2$d;

    const/4 v4, 0x5

    if-nez p1, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ly08;->h:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Ly08;->h(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, Le47;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Ly08;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Ly08;->d:Lj37;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lj37;->f(Lc37;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    iput-object v2, p0, Ly08;->q:Le47;

    sget-object p2, Ly08$a;->COMPLETE:Ly08$a;

    iput-object p2, p0, Ly08;->u:Ly08$a;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object p0, p0, Ly08;->t:Lkz2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkz2;->f(Le47;)V

    return-void

    :catchall_1
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0, p1, v1, p2, p3}, Ly08;->k(Le47;Ljava/lang/Object;Ly82;Z)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_4
    :goto_2
    :try_start_4
    iput-object v2, p0, Ly08;->q:Le47;

    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ly08;->h:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but instead got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "} inside Resource{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string v0, ""

    goto :goto_4

    :cond_6
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_4
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Ly08;->h(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_7

    iget-object p0, p0, Ly08;->t:Lkz2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkz2;->f(Le47;)V

    :cond_7
    throw p1
.end method

.method public final k(Le47;Ljava/lang/Object;Ly82;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le47<",
            "TR;>;TR;",
            "Ly82;",
            "Z)V"
        }
    .end annotation

    const/4 p4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Ly08;->d:Lj37;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj37;->getRoot()Lj37;

    move-result-object v2

    invoke-interface {v2}, Lj37;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v8, p4

    :goto_1
    sget-object v2, Ly08$a;->COMPLETE:Ly08$a;

    iput-object v2, p0, Ly08;->u:Ly08$a;

    iput-object p1, p0, Ly08;->q:Le47;

    iget-object p1, p0, Ly08;->f:Lwq3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lj37;->b(Lc37;)V

    :cond_2
    iput-boolean p4, p0, Ly08;->A:Z

    :try_start_0
    iget-object p1, p0, Ly08;->n:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p4, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo37;

    iget-object v5, p0, Ly08;->g:Ljava/lang/Object;

    iget-object v6, p0, Ly08;->m:Lwk8;

    move-object v4, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lo37;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lwk8;Ly82;Z)Z

    move-result p2

    or-int/2addr p2, p4

    instance-of p3, v3, Lv33;

    if-eqz p3, :cond_3

    check-cast v3, Lv33;

    invoke-virtual {v3}, Lv33;->a()Z

    move-result p3

    or-int/2addr p2, p3

    :cond_3
    move p4, p2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :goto_3
    move-object p2, v4

    move-object p3, v7

    goto :goto_2

    :cond_4
    :goto_4
    move-object v4, p2

    move-object v7, p3

    goto :goto_5

    :cond_5
    move p4, v1

    goto :goto_4

    :goto_5
    if-nez p4, :cond_6

    iget-object p1, p0, Ly08;->o:Ll29;

    invoke-interface {p1, v7}, Ll29;->a(Ly82;)Lk29;

    move-result-object p1

    iget-object p2, p0, Ly08;->m:Lwk8;

    invoke-interface {p2, v4, p1}, Lwk8;->onResourceReady(Ljava/lang/Object;Lk29;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iput-boolean v1, p0, Ly08;->A:Z

    return-void

    :goto_6
    iput-boolean v1, p0, Ly08;->A:Z

    throw p1
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ly08;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ly08;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ly08;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly08;->g:Ljava/lang/Object;

    iget-object v2, p0, Ly08;->h:Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[model="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", transcodeClass="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
