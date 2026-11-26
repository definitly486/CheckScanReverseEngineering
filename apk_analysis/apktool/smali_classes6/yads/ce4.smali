.class public final Lyads/ce4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ce4;->a:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lyads/hm4;Lyads/fm4;Lyads/of4;Lyads/sz2;Lyads/sd4;Lyads/ba;)Lyads/rt;
    .locals 13

    sget-object v0, Lyads/yh4;->b:Lyads/yh4;

    if-nez v0, :cond_1

    sget-object v1, Lyads/yh4;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/yh4;->b:Lyads/yh4;

    if-nez v0, :cond_0

    new-instance v0, Lyads/yh4;

    invoke-direct {v0}, Lyads/yh4;-><init>()V

    sput-object v0, Lyads/yh4;->b:Lyads/yh4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/ae4;

    move-object/from16 v5, p3

    iget-object v2, v5, Lyads/hm4;->a:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lyads/ae4;-><init>(Ljava/util/List;Lyads/yh4;)V

    new-instance v4, Lyads/ch4;

    iget-object v2, p2, Lyads/ee4;->b:Lyads/d9;

    invoke-direct {v4, v1, v2}, Lyads/ch4;-><init>(Lyads/ae4;Lyads/d9;)V

    new-instance v8, Lyads/x5;

    move-object/from16 v2, p6

    invoke-direct {v8, v2}, Lyads/x5;-><init>(Lyads/sz2;)V

    new-instance v9, Lyads/lh4;

    invoke-direct {v9, p1, v1, v0}, Lyads/lh4;-><init>(Landroid/content/Context;Lyads/ae4;Lyads/yh4;)V

    new-instance v2, Lyads/rt;

    iget-object v10, p0, Lyads/ce4;->a:Lyads/bf5;

    move-object v3, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lyads/rt;-><init>(Lyads/ee4;Lyads/ch4;Lyads/hm4;Lyads/fm4;Lyads/of4;Lyads/yi4;Lyads/lh4;Lyads/bf5;Lyads/sd4;Lyads/ba;)V

    return-object v2
.end method
