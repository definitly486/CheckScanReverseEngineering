.class public final Lyads/j13;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Lyads/bf5;

.field public final d:Lyads/bj4;

.field public final e:Lyads/sr3;

.field public final f:Lyads/c4;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/d9;Landroid/widget/RelativeLayout;Lyads/m2;Lyads/i2;ILyads/x2;Lyads/e4;Lyads/bf5;)V
    .locals 10

    move-object/from16 v6, p7

    new-instance v9, Lyads/bj4;

    new-instance v0, Lyads/z03;

    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_0

    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
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

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v1, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/z03;-><init>(Lyads/fe5;)V

    invoke-direct {v9, v6, v0}, Lyads/bj4;-><init>(Lyads/x2;Lyads/z03;)V

    new-instance v0, Lyads/sr3;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lyads/sr3;-><init>(Landroid/app/Activity;Lyads/d9;Lyads/m2;Lyads/i2;ILyads/x2;Lyads/e4;Lyads/bf5;)V

    new-instance p1, Lyads/c4;

    invoke-direct {p1, v6}, Lyads/c4;-><init>(Lyads/x2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/j13;->a:Lyads/d9;

    iput-object p3, p0, Lyads/j13;->b:Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lyads/j13;->c:Lyads/bf5;

    iput-object v9, p0, Lyads/j13;->d:Lyads/bj4;

    iput-object v0, p0, Lyads/j13;->e:Lyads/sr3;

    iput-object p1, p0, Lyads/j13;->f:Lyads/c4;

    return-void
.end method
