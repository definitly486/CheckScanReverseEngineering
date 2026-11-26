.class public final Lyads/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/o2;


# instance fields
.field public final a:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/k2;->a:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/x2;Lyads/i2;Landroid/view/Window;Lyads/f2;)Lyads/n2;
    .locals 12

    move-object/from16 v0, p6

    if-eqz v0, :cond_2

    iget-object v5, v0, Lyads/f2;->a:Lyads/d9;

    iget-object v8, v0, Lyads/f2;->b:Lyads/e4;

    iget-object v4, v0, Lyads/f2;->e:Lyads/pg4;

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
    invoke-virtual/range {p5 .. p5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v11

    if-eqz v4, :cond_2

    iget v10, v0, Lyads/f2;->f:I

    new-instance v0, Lyads/m2;

    iget-object v9, p0, Lyads/k2;->a:Lyads/bf5;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v11}, Lyads/m2;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/view/Window;Lyads/pg4;Lyads/d9;Lyads/x2;Lyads/i2;Lyads/e4;Lyads/bf5;ILyads/fe5;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
