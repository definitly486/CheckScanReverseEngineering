.class public abstract Lyads/d13;
.super Lyads/w93;
.source "SourceFile"

# interfaces
.implements Lyads/p1;


# instance fields
.field public final d:Lyads/n1;

.field public final e:Lyads/e4;

.field public final f:Lyads/o03;

.field public final g:Lyads/l5;

.field public final h:Lyads/t5;

.field public final i:Lyads/it5;

.field public final j:Lyads/l8;

.field public final k:Lyads/l1;

.field public l:Lyads/v03;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/o03;Lyads/l5;)V
    .locals 11

    new-instance v4, Lyads/t5;

    invoke-direct {v4}, Lyads/t5;-><init>()V

    sget-object v0, Lyads/it5;->b:Lyads/it5;

    if-nez v0, :cond_1

    sget-object v1, Lyads/it5;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/it5;->b:Lyads/it5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/it5;

    invoke-direct {v0}, Lyads/it5;-><init>()V

    sput-object v0, Lyads/it5;->b:Lyads/it5;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw v0

    :cond_1
    :goto_2
    sget-object v7, Lyads/it5;->b:Lyads/it5;

    if-eqz v7, :cond_2

    new-instance v5, Lyads/ah4;

    invoke-direct {v5, p3}, Lyads/ah4;-><init>(Lyads/e4;)V

    iput-object p2, v5, Lyads/ah4;->d:Lyads/d9;

    move-object v8, p4

    check-cast v8, Lyads/do6;

    iget-object v0, v8, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v0, v0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v6

    new-instance v0, Lyads/l8;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lyads/l8;-><init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/t5;Lyads/ah4;Lyads/q84;)V

    move-object v10, v0

    move-object v9, v4

    iget-object v0, v8, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v0, v0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v0

    new-instance v8, Lyads/l1;

    invoke-direct {v8, v0, p3, p2}, Lyads/l1;-><init>(Lyads/q84;Lyads/e4;Lyads/d9;)V

    invoke-direct/range {p0 .. p2}, Lyads/w93;-><init>(Landroid/content/Context;Lyads/d9;)V

    new-instance v0, Lyads/n1;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lyads/n1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/p1;Lyads/mt2;)V

    move-object v1, v0

    iput-object v1, p0, Lyads/d13;->d:Lyads/n1;

    iput-object p3, p0, Lyads/d13;->e:Lyads/e4;

    move-object/from16 v1, p5

    iput-object v1, p0, Lyads/d13;->f:Lyads/o03;

    move-object/from16 v1, p6

    iput-object v1, p0, Lyads/d13;->g:Lyads/l5;

    iput-object v9, p0, Lyads/d13;->h:Lyads/t5;

    iput-object v7, p0, Lyads/d13;->i:Lyads/it5;

    iput-object v10, p0, Lyads/d13;->j:Lyads/l8;

    iput-object v8, p0, Lyads/d13;->k:Lyads/l1;

    new-instance v1, Lyads/k2;

    invoke-direct {v1, p4}, Lyads/k2;-><init>(Lyads/bf5;)V

    sget-object v0, Lyads/q2;->b:Lyads/p2;

    invoke-virtual {v0}, Lyads/p2;->a()Lyads/q2;

    move-result-object v0

    const-string v2, "window_type_fullscreen"

    invoke-virtual {v0, v2, v1}, Lyads/q2;->a(Ljava/lang/String;Lyads/o2;)V

    return-void

    :cond_2
    const-string v0, "Required value was null."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 4

    .line 215
    sget-object v0, Lyads/z6;->b:Lyads/y6;

    .line 216
    invoke-static {v0}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    .line 217
    monitor-enter p0

    .line 218
    monitor-exit p0

    .line 219
    iget-object v0, p0, Lyads/d13;->h:Lyads/t5;

    sget-object v1, Lyads/s5;->f:Lyads/s5;

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v1, v2}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lyads/d13;->i:Lyads/it5;

    sget-object v2, Lyads/dr3;->c:Lyads/dr3;

    invoke-virtual {v0, v2, p0}, Lyads/it5;->b(Lyads/dr3;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lyads/d13;->f:Lyads/o03;

    invoke-virtual {p0}, Lyads/d13;->e()Lyads/d13;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lyads/o03;->a(Lyads/d13;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lyads/d13;->h:Lyads/t5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    .line 224
    invoke-static {p0}, Lyads/ya;->a(Lyads/nz;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lyads/d13;->i:Lyads/it5;

    invoke-virtual {v0, v2, p0}, Lyads/it5;->a(Lyads/dr3;Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lyads/d13;->f:Lyads/o03;

    .line 227
    iget-object v1, p0, Lyads/bp;->a:Landroid/content/Context;

    .line 228
    invoke-interface {v0, v1}, Lyads/o03;->a(Landroid/content/Context;)V

    .line 229
    invoke-super {p0}, Lyads/bp;->c()V

    :cond_0
    return-object p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-eqz p1, :cond_7

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lyads/d13;->b(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p1, p0, Lyads/d13;->i:Lyads/it5;

    sget-object p2, Lyads/dr3;->c:Lyads/dr3;

    invoke-virtual {p1, p2, p0}, Lyads/it5;->a(Lyads/dr3;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/d13;->l:Lyads/v03;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lyads/v03;->onAdDismissed()V

    return-void

    :cond_1
    iget-object p0, p0, Lyads/d13;->k:Lyads/l1;

    invoke-virtual {p0}, Lyads/l1;->a()V

    return-void

    :cond_2
    iget-object p0, p0, Lyads/d13;->k:Lyads/l1;

    invoke-virtual {p0}, Lyads/l1;->b()V

    return-void

    :cond_3
    iget-object p0, p0, Lyads/d13;->l:Lyads/v03;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lyads/v03;->onAdClicked()V

    return-void

    :cond_4
    const/4 p1, 0x0

    if-eqz p2, :cond_6

    const-string v0, "impression_data_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of v0, p2, Lyads/j5;

    if-eqz v0, :cond_5

    move-object p1, p2

    check-cast p1, Lyads/j5;

    :cond_5
    invoke-virtual {p0, p1}, Lyads/d13;->a(Lyads/j5;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lyads/d13;->a(Lyads/j5;)V

    return-void

    :cond_7
    iget-object p1, p0, Lyads/d13;->h:Lyads/t5;

    sget-object p2, Lyads/s5;->f:Lyads/s5;

    invoke-virtual {p1, p2}, Lyads/t5;->a(Lyads/s5;)V

    iget-object p1, p0, Lyads/d13;->j:Lyads/l8;

    iget-object p2, p1, Lyads/l8;->c:Lyads/ah4;

    invoke-virtual {p2}, Lyads/ah4;->a()Lyads/h75;

    move-result-object p2

    sget-object v0, Lyads/c75;->a:Ljava/lang/String;

    const-string v1, "adapter"

    invoke-virtual {p2, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lyads/l8;->e:Lyads/k8;

    invoke-virtual {v0}, Lyads/k8;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p2, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lyads/l8;->b:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->d:Lyads/tl5;

    iget-object v0, v0, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v1

    iget-object v1, v1, Lyads/rl5;->b:Ljava/lang/String;

    const-string v2, "size_type"

    invoke-virtual {p2, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lyads/sl5;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {p2, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lyads/sl5;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p2, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p1, Lyads/l8;->f:Lyads/fe5;

    if-eqz v0, :cond_9

    const-string v1, "banner_size_calculation_type"

    iget-object v0, v0, Lyads/fe5;->S:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p1, Lyads/l8;->a:Lyads/d9;

    iget-object v0, v0, Lyads/d9;->i:Lyads/c;

    iput-object v0, p2, Lyads/h75;->b:Lyads/c;

    new-instance v1, Lyads/g75;

    sget-object v2, Lyads/e75;->c:Lyads/e75;

    iget-object p2, p2, Lyads/h75;->a:Ljava/util/Map;

    const-string v2, "ad_rendering_result"

    invoke-static {p2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p1, p1, Lyads/l8;->d:Lyads/q84;

    invoke-virtual {p1, v1}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p0, p0, Lyads/d13;->l:Lyads/v03;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lyads/v03;->onAdShown()V

    :cond_a
    return-void
.end method

.method public final a(Lyads/j5;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lyads/d13;->l:Lyads/v03;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/v03;->onImpression(Lyads/j5;)V

    :cond_0
    return-void
.end method

.method public final b(ILandroid/os/Bundle;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lyads/d13;->d:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->a()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lyads/d13;->d:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->d()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lyads/d13;->f()V

    iget-object p0, p0, Lyads/d13;->d:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->c()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lyads/d13;->f()V

    iget-object p0, p0, Lyads/d13;->d:Lyads/n1;

    invoke-virtual {p0}, Lyads/n1;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lyads/i70;
    .locals 5

    iget-object v0, p0, Lyads/d13;->g:Lyads/l5;

    iget-object v1, p0, Lyads/bp;->b:Lyads/d9;

    iget-object v2, p0, Lyads/d13;->e:Lyads/e4;

    iget-object v3, p0, Lyads/d13;->f:Lyads/o03;

    invoke-interface {v3}, Lyads/o03;->getAdInfo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lyads/d13;->f:Lyads/o03;

    invoke-interface {v4}, Lyads/o03;->a()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lyads/d13;->f:Lyads/o03;

    invoke-interface {p0}, Lyads/o03;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lyads/d9;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, v2, Lyads/e4;->c:Lyads/ma;

    iget-object v0, v0, Lyads/ma;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Lyads/i70;

    invoke-direct {v1, v0, v3, v4, p0}, Lyads/i70;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public abstract e()Lyads/d13;
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lyads/d13;->l:Lyads/v03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/v03;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    return-void
.end method
