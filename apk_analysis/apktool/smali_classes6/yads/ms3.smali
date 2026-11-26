.class public final Lyads/ms3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ms3;->a:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/d9;Lyads/pg4;Lyads/h80;Lyads/m2;Lyads/b4;)Lyads/mr3;
    .locals 12

    invoke-interface {p3}, Lyads/pg4;->b()Lyads/vg4;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lyads/vg4;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/sd4;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lyads/sd4;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/ak;

    iget-object v3, v3, Lyads/ak;->a:Ljava/lang/String;

    const-string v4, "media"

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lyads/ak;

    if-eqz v2, :cond_4

    iget-object v0, v2, Lyads/ak;->c:Ljava/lang/Object;

    instance-of v2, v0, Lyads/v14;

    if-eqz v2, :cond_2

    check-cast v0, Lyads/v14;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, v0, Lyads/v14;->a:Lyads/by3;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lyads/by3;->a:Lyads/tz3;

    instance-of v2, v0, Lyads/rz3;

    if-eqz v2, :cond_3

    check-cast v0, Lyads/rz3;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, v0, Lyads/rz3;->a:Ljava/lang/String;

    move-object v8, v0

    goto :goto_3

    :cond_4
    move-object v8, v1

    :goto_3
    if-nez v8, :cond_5

    return-object v1

    :cond_5
    new-instance v7, Lyads/vs3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v7, p1}, Lyads/vs3;-><init>(Landroid/content/Context;)V

    new-instance v5, Lyads/pz;

    sget-object p1, Lyads/nn0;->b:Lyads/nn0;

    invoke-direct {v5, p1}, Lyads/pz;-><init>(Lyads/nn0;)V

    new-instance v2, Lyads/ks3;

    new-instance v6, Lyads/cs3;

    invoke-direct {v6, v5}, Lyads/cs3;-><init>(Lyads/pz;)V

    iget-object p0, p0, Lyads/ms3;->a:Lyads/bf5;

    check-cast p0, Lyads/do6;

    iget-object p0, p0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p0, p0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v9

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lyads/ks3;-><init>(Lyads/pg4;Lyads/h80;Lyads/pz;Lyads/cs3;Lyads/vs3;Ljava/lang/String;Lyads/q84;Lyads/m2;Lyads/b4;)V

    new-instance p0, Lyads/mr3;

    sget p1, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_divkit:I

    new-instance p3, Lyads/ls3;

    invoke-direct {p3, p2}, Lyads/ls3;-><init>(Lyads/d9;)V

    invoke-direct {p0, p1, v2, p3}, Lyads/mr3;-><init>(ILyads/on0;Lyads/pn0;)V

    return-object p0
.end method
