.class public final Lyads/yb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ha3;


# instance fields
.field public final a:Lyads/vb4;

.field public final b:Lyads/kb4;

.field public final c:Lyads/gd6;

.field public final d:Lyads/dk6;

.field public final e:Lyads/gb4;

.field public final f:Lyads/ca3;

.field public final g:Lyads/fe5;

.field public h:Lyads/e00;

.field public i:Z


# direct methods
.method public constructor <init>(Lyads/vb4;Lyads/kb4;)V
    .locals 6

    new-instance v0, Lyads/gd6;

    invoke-direct {v0}, Lyads/gd6;-><init>()V

    new-instance v1, Lyads/dk6;

    invoke-direct {v1, p1}, Lyads/dk6;-><init>(Lyads/vb4;)V

    new-instance v2, Lyads/gb4;

    invoke-direct {v2}, Lyads/gb4;-><init>()V

    new-instance v3, Lyads/ca3;

    invoke-direct {v3}, Lyads/ca3;-><init>()V

    sget-object v4, Lyads/zg5;->l:Lyads/zg5;

    if-nez v4, :cond_1

    sget-object v4, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lyads/zg5;->l:Lyads/zg5;

    if-nez v5, :cond_0

    new-instance v5, Lyads/zg5;

    invoke-direct {v5}, Lyads/zg5;-><init>()V

    sput-object v5, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4

    move-object v4, v5

    goto :goto_2

    :goto_1
    monitor-exit v4

    throw p0

    :cond_1
    :goto_2
    iget-object v5, p1, Lyads/ls4;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yb4;->a:Lyads/vb4;

    iput-object p2, p0, Lyads/yb4;->b:Lyads/kb4;

    iput-object v0, p0, Lyads/yb4;->c:Lyads/gd6;

    iput-object v1, p0, Lyads/yb4;->d:Lyads/dk6;

    iput-object v2, p0, Lyads/yb4;->e:Lyads/gb4;

    iput-object v3, p0, Lyads/yb4;->f:Lyads/ca3;

    iput-object v4, p0, Lyads/yb4;->g:Lyads/fe5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lyads/yb4;->i:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/yb4;->g:Lyads/fe5;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lyads/fe5;->F0:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lyads/yb4;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, v0, Lyads/yb4;->h:Lyads/e00;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lyads/yb4;->a:Lyads/vb4;

    check-cast v1, Lyads/db4;

    iget-object v3, v1, Lyads/db4;->a:Lyads/ot3;

    iget-object v5, v3, Lyads/ot3;->a:Ljava/util/ArrayList;

    iget-object v6, v3, Lyads/ot3;->b:Lyads/mt2;

    iget-object v7, v3, Lyads/ot3;->c:Ljava/util/List;

    iget-wide v9, v3, Lyads/ot3;->e:J

    new-instance v16, Lyads/ot3;

    const/4 v11, 0x0

    move-object/from16 v8, p1

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v11}, Lyads/ot3;-><init>(Ljava/util/ArrayList;Lyads/mt2;Ljava/util/List;Ljava/lang/String;JZ)V

    iget-object v1, v1, Lyads/db4;->b:Lyads/h00;

    iget-object v14, v1, Lyads/h00;->c:Lyads/dh4;

    iget-object v3, v14, Lyads/dh4;->a:Lyads/i00;

    iget-object v12, v1, Lyads/h00;->a:Lyads/ak;

    iget-object v13, v1, Lyads/h00;->b:Lyads/a4;

    iget-object v15, v1, Lyads/h00;->d:Lyads/l65;

    iget-object v1, v1, Lyads/h00;->e:Lyads/we3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lyads/kf4;

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lyads/kf4;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/ot3;Lyads/tz2;)V

    invoke-virtual {v11, v2}, Lyads/kf4;->onClick(Landroid/view/View;)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/yb4;->i:Z

    return-void
.end method

.method public final a(Lyads/vb4;Ljava/util/Map;)V
    .locals 0

    .line 77
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 76
    return-void
.end method
