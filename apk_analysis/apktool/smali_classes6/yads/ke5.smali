.class public final Lyads/ke5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ed;

.field public final b:Lyads/wn2;

.field public final c:Lyads/t5;

.field public final d:Lyads/te5;

.field public final e:Lyads/pe5;

.field public final f:Lyads/z75;

.field public final g:Lyads/qe5;

.field public final h:Lyads/pq5;

.field public final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/t5;Lyads/ed;Lyads/wn2;Lyads/q84;)V
    .locals 5

    new-instance v0, Lyads/te5;

    invoke-direct {v0, p1, p5}, Lyads/te5;-><init>(Landroid/content/Context;Lyads/q84;)V

    sget-object v1, Lyads/pe5;->c:Lyads/pe5;

    if-nez v1, :cond_1

    sget-object v1, Lyads/pe5;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/pe5;->c:Lyads/pe5;

    if-nez v2, :cond_0

    new-instance v2, Lyads/pe5;

    invoke-direct {v2}, Lyads/pe5;-><init>()V

    sput-object v2, Lyads/pe5;->c:Lyads/pe5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-static {}, Lyads/y75;->a()Lyads/z75;

    move-result-object v2

    new-instance v3, Lyads/qe5;

    invoke-direct {v3}, Lyads/qe5;-><init>()V

    new-instance v4, Lyads/pq5;

    invoke-direct {v4, p5}, Lyads/pq5;-><init>(Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ke5;->a:Lyads/ed;

    iput-object p4, p0, Lyads/ke5;->b:Lyads/wn2;

    iput-object p2, p0, Lyads/ke5;->c:Lyads/t5;

    iput-object v0, p0, Lyads/ke5;->d:Lyads/te5;

    iput-object v1, p0, Lyads/ke5;->e:Lyads/pe5;

    iput-object v2, p0, Lyads/ke5;->f:Lyads/z75;

    iput-object v3, p0, Lyads/ke5;->g:Lyads/qe5;

    iput-object v4, p0, Lyads/ke5;->h:Lyads/pq5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/ke5;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lyads/qi5;Lyads/kg3;Lyads/me5;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v2

    iget-object v3, v0, Lyads/ke5;->i:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lyads/ke5;->d:Lyads/te5;

    invoke-virtual {v3}, Lyads/te5;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lyads/p50;->d:Lyads/p50;

    iget-object v3, v1, Lyads/me5;->a:Lc31;

    invoke-virtual {v3}, Lc31;->t()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lno5;

    if-eqz v3, :cond_f

    iget-object v1, v1, Lyads/me5;->a:Lc31;

    new-instance v3, Lyads/ye5;

    invoke-direct {v3, v2, v0}, Lyads/ye5;-><init>(Lyads/fe5;Lyads/p50;)V

    invoke-virtual {v1, v3}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    new-instance v9, Lyads/ue5;

    iget-object v2, v0, Lyads/ke5;->i:Landroid/content/Context;

    iget-object v3, v0, Lyads/ke5;->e:Lyads/pe5;

    iget-object v4, v0, Lyads/ke5;->c:Lyads/t5;

    invoke-direct {v9, v2, v3, v1, v4}, Lyads/ue5;-><init>(Landroid/content/Context;Lyads/pe5;Lyads/me5;Lyads/t5;)V

    iget-object v1, v0, Lyads/ke5;->h:Lyads/pq5;

    iget-object v1, v1, Lyads/pq5;->a:Lyads/q84;

    new-instance v2, Lyads/g75;

    sget-object v3, Lyads/e75;->c:Lyads/e75;

    const-string v3, "call_source"

    move-object/from16 v4, p2

    iget-object v4, v4, Lyads/kg3;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "sdk_configuration_request"

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    invoke-direct {v2, v4, v5, v3}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    invoke-virtual {v1, v2}, Lyads/q84;->a(Lyads/g75;)V

    iget-object v1, v0, Lyads/ke5;->b:Lyads/wn2;

    iget-object v1, v1, Lyads/wn2;->a:Lyads/vn2;

    iget-object v2, v0, Lyads/ke5;->i:Landroid/content/Context;

    iget-object v4, v1, Lyads/vn2;->e:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v5, v0, Lyads/ke5;->g:Lyads/qe5;

    iget-object v6, v0, Lyads/ke5;->a:Lyads/ed;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, p1

    invoke-virtual {v7, v2}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result v7

    new-instance v8, Lyads/sw2;

    invoke-direct {v8, v7}, Lyads/sw2;-><init>(Z)V

    invoke-virtual {v1}, Lyads/vn2;->a()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lyads/sw2;->z:Ljava/lang/String;

    iget-object v10, v1, Lyads/vn2;->d:Ljava/lang/String;

    iput-object v10, v8, Lyads/sw2;->r:Ljava/lang/String;

    iget-object v10, v6, Lyads/ed;->a:Lyads/id;

    iget-boolean v11, v6, Lyads/ed;->c:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_5

    iget-boolean v14, v10, Lyads/id;->b:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v8, Lyads/sw2;->S:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v8, Lyads/sw2;->T:Ljava/lang/Boolean;

    iget-object v10, v10, Lyads/id;->a:Ljava/lang/String;

    iget-object v11, v8, Lyads/sw2;->e:Lyads/fd;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    const-string v11, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move v11, v13

    goto :goto_2

    :cond_4
    :goto_1
    move v11, v12

    :goto_2
    if-nez v7, :cond_5

    iget-object v14, v8, Lyads/sw2;->S:Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v14, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v11, :cond_5

    iput-object v10, v8, Lyads/sw2;->U:Ljava/lang/String;

    :cond_5
    iget-object v6, v6, Lyads/ed;->b:Lyads/id;

    if-eqz v6, :cond_8

    iget-boolean v10, v6, Lyads/id;->b:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v8, Lyads/sw2;->V:Ljava/lang/Boolean;

    iget-object v6, v6, Lyads/id;->a:Ljava/lang/String;

    iget-object v10, v8, Lyads/sw2;->e:Lyads/fd;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    const-string v10, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    move v10, v13

    goto :goto_4

    :cond_7
    :goto_3
    move v10, v12

    :goto_4
    if-nez v7, :cond_8

    iget-object v7, v8, Lyads/sw2;->V:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v10, :cond_8

    iput-object v6, v8, Lyads/sw2;->W:Ljava/lang/String;

    :cond_8
    iget-object v6, v8, Lyads/sw2;->c:Lyads/zg;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/dg;->a(Landroid/content/Context;)Lyads/vg;

    move-result-object v6

    :try_start_0
    iget-object v6, v6, Lyads/vg;->b:Lyads/ej0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryVersion()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-object v6, v3

    :goto_5
    iput-object v6, v8, Lyads/sw2;->G0:Ljava/lang/String;

    invoke-static {v2}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v8, Lyads/sw2;->H:Ljava/lang/Integer;

    invoke-static {v2}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v8, Lyads/sw2;->I:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v8, Lyads/sw2;->J:Ljava/lang/Float;

    invoke-static {v2}, Lyads/eh6;->a(Landroid/content/Context;)I

    move-result v6

    iput v6, v8, Lyads/sw2;->v0:I

    :try_start_1
    invoke-static {v2}, Lyads/xk6;->a(Landroid/content/Context;)Lyads/sp0;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    sget-object v6, Lyads/sp0;->g:Lyads/sp0;

    :goto_6
    iget v7, v6, Lyads/sp0;->a:F

    iput v7, v8, Lyads/sw2;->w0:F

    iget v7, v6, Lyads/sp0;->b:F

    iput v7, v8, Lyads/sw2;->x0:F

    iget v7, v6, Lyads/sp0;->c:F

    iput v7, v8, Lyads/sw2;->y0:F

    iget v7, v6, Lyads/sp0;->d:F

    iput v7, v8, Lyads/sw2;->z0:F

    iget v7, v6, Lyads/sp0;->e:F

    iput v7, v8, Lyads/sw2;->A0:F

    iget v6, v6, Lyads/sp0;->f:F

    iput v6, v8, Lyads/sw2;->B0:F

    invoke-virtual {v8}, Lyads/sw2;->b()Lyads/sw2;

    move-result-object v6

    invoke-static {v2}, Lyads/qi5;->a(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, v6, Lyads/sw2;->l:Z

    iget-object v7, v1, Lyads/vn2;->a:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lyads/sw2;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/sw2;

    move-result-object v6

    invoke-virtual {v6, v2}, Lyads/sw2;->c(Landroid/content/Context;)Lyads/sw2;

    move-result-object v6

    iget-object v7, v6, Lyads/sw2;->d:Lyads/gh5;

    const-string v8, "%d.%d%d"

    invoke-virtual {v7, v8}, Lyads/gh5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lyads/sw2;->E0:Ljava/lang/String;

    iget-object v7, v6, Lyads/sw2;->d:Lyads/gh5;

    const-string v8, "%d.%d.%d"

    invoke-virtual {v7, v8}, Lyads/gh5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lyads/sw2;->F0:Ljava/lang/String;

    invoke-virtual {v6}, Lyads/sw2;->c()Lyads/sw2;

    move-result-object v6

    iput-boolean v13, v6, Lyads/sw2;->k:Z

    invoke-virtual {v6}, Lyads/sw2;->a()Lyads/sw2;

    move-result-object v6

    new-instance v7, Lyads/uw2;

    invoke-direct {v7, v6}, Lyads/uw2;-><init>(Lyads/sw2;)V

    invoke-virtual {v7}, Lyads/uw2;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lyads/qe5;->a(Lyads/vn2;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    const/4 v7, 0x2

    if-ge v12, v7, :cond_a

    aget-object v7, v6, v12

    invoke-static {v7}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    const-string v14, "&"

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lyads/qe5;->a:Lyads/mn2;

    invoke-virtual {v5, v2, v6}, Lyads/mn2;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lad2;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4}, Lua8;->k0(Ljava/lang/CharSequence;)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v5, "v1/startup"

    const-string v6, "?"

    invoke-static {v4, v5, v6, v2}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_9

    :cond_c
    :goto_8
    move-object v6, v3

    :goto_9
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_a

    :cond_d
    new-instance v4, Lyads/se5;

    iget-object v5, v0, Lyads/ke5;->i:Landroid/content/Context;

    iget-object v7, v0, Lyads/ke5;->d:Lyads/te5;

    iget-object v8, v1, Lyads/vn2;->c:Ljava/util/Map;

    move-object v10, v9

    invoke-direct/range {v4 .. v10}, Lyads/se5;-><init>(Landroid/content/Context;Ljava/lang/String;Lyads/a85;Ljava/util/Map;Lyads/ue5;Lyads/ue5;)V

    iput-object v0, v4, Lyads/r75;->q:Ljava/lang/Object;

    iget-object v1, v0, Lyads/ke5;->c:Lyads/t5;

    sget-object v2, Lyads/s5;->l:Lyads/s5;

    invoke-virtual {v1, v2, v3}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    iget-object v1, v0, Lyads/ke5;->f:Lyads/z75;

    iget-object v0, v0, Lyads/ke5;->i:Landroid/content/Context;

    monitor-enter v1

    :try_start_2
    invoke-static {v0}, Lyads/qn4;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object v0

    invoke-virtual {v0, v4}, Lyads/e85;->a(Lyads/r75;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    goto :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_e
    :goto_a
    new-instance v0, Lyads/i4;

    sget-object v1, Lyads/o4;->j:Lyads/o4;

    invoke-direct {v0, v1}, Lyads/i4;-><init>(Lyads/o4;)V

    invoke-virtual {v9, v0}, Lyads/ue5;->a(Lyads/hi6;)V

    :cond_f
    :goto_b
    return-void
.end method
