.class public final Lyads/io1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k13;


# instance fields
.field public final a:Lyads/fo1;

.field public final b:Lyads/e4;

.field public final c:Lyads/bf5;

.field public final d:Lyads/v40;

.field public final e:Lyads/x2;

.field public final f:Lyads/ln1;

.field public final g:I

.field public final h:Lyads/d81;


# direct methods
.method public constructor <init>(Lyads/fo1;Lyads/e4;Lyads/bf5;Lyads/v40;Lyads/x2;Lyads/ln1;I)V
    .locals 2

    new-instance v0, Lyads/d81;

    move-object v1, p3

    check-cast v1, Lyads/do6;

    iget-object v1, v1, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v1, v1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/d81;-><init>(Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/io1;->a:Lyads/fo1;

    iput-object p2, p0, Lyads/io1;->b:Lyads/e4;

    iput-object p3, p0, Lyads/io1;->c:Lyads/bf5;

    iput-object p4, p0, Lyads/io1;->d:Lyads/v40;

    iput-object p5, p0, Lyads/io1;->e:Lyads/x2;

    iput-object p6, p0, Lyads/io1;->f:Lyads/ln1;

    iput p7, p0, Lyads/io1;->g:I

    iput-object v0, p0, Lyads/io1;->h:Lyads/d81;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/h80;)Lyads/mr3;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    new-instance v10, Lyads/pz;

    iget-object v1, v0, Lyads/io1;->a:Lyads/fo1;

    iget-object v3, v1, Lyads/fo1;->h:Lyads/nn0;

    invoke-direct {v10, v3}, Lyads/pz;-><init>(Lyads/nn0;)V

    new-instance v8, Lyads/vn1;

    invoke-direct {v8, v10}, Lyads/vn1;-><init>(Lyads/pz;)V

    iget-object v3, v0, Lyads/io1;->h:Lyads/d81;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v9, Lyads/ni4;

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lyads/ym5;

    iget-object v3, v3, Lyads/d81;->a:Lyads/q84;

    invoke-direct {v4, v3}, Lyads/ym5;-><init>(Lyads/q84;)V

    move-object v3, v9

    check-cast v3, Lyads/ni4;

    invoke-virtual {v4, v1, v3}, Lyads/ym5;->a(Lyads/fo1;Lyads/ni4;)V

    invoke-static {v2, v4, v8}, Lyads/zm5;->a(Landroid/content/Context;Lyads/ym5;Lyads/vn1;)Lyads/c81;

    move-result-object v1

    :goto_0
    move-object v15, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lyads/eo1;

    invoke-direct {v1, v2, v8, v11}, Lyads/eo1;-><init>(Landroid/content/Context;Lyads/vn1;Lyads/kb0;)V

    iget-object v1, v1, Lyads/eo1;->d:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/c81;

    goto :goto_0

    :goto_1
    new-instance v14, Lyads/kn1;

    iget-object v3, v0, Lyads/io1;->b:Lyads/e4;

    iget-object v4, v0, Lyads/io1;->c:Lyads/bf5;

    iget-object v7, v0, Lyads/io1;->f:Lyads/ln1;

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v1, v14

    invoke-direct/range {v1 .. v8}, Lyads/kn1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/c60;Lyads/ln1;Lyads/vn1;)V

    iget-object v1, v0, Lyads/io1;->c:Lyads/bf5;

    check-cast v1, Lyads/do6;

    iget-object v1, v1, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v1, v1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v16

    new-instance v12, Lyads/un1;

    iget-object v1, v0, Lyads/io1;->a:Lyads/fo1;

    iget-object v13, v1, Lyads/fo1;->e:Lyads/db1;

    instance-of v1, v2, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    move-object v11, v2

    check-cast v11, Landroidx/lifecycle/LifecycleOwner;

    :cond_1
    move-object/from16 v17, v11

    const/16 v18, 0xd0

    invoke-direct/range {v12 .. v18}, Lyads/un1;-><init>(Lyads/db1;Lyads/kn1;Lyads/c81;Lyads/q84;Landroidx/lifecycle/LifecycleOwner;I)V

    new-instance v7, Lyads/v40;

    new-instance v8, Lyads/l85;

    iget-object v1, v0, Lyads/io1;->e:Lyads/x2;

    iget v2, v0, Lyads/io1;->g:I

    invoke-direct {v8, v1, v2}, Lyads/l85;-><init>(Lyads/x2;I)V

    new-instance v1, Lyads/e13;

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v2, v9

    move-object v5, v10

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lyads/e13;-><init>(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/pz;Lyads/q84;)V

    iget-object v0, v0, Lyads/io1;->d:Lyads/v40;

    const/4 v2, 0x4

    new-array v2, v2, [Lyads/on0;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    invoke-direct {v7, v2}, Lyads/v40;-><init>([Lyads/on0;)V

    new-instance v0, Lyads/ho1;

    move-object/from16 v5, p2

    invoke-direct {v0, v5}, Lyads/ho1;-><init>(Lyads/d9;)V

    new-instance v1, Lyads/mr3;

    sget v2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_divkit:I

    invoke-direct {v1, v2, v7, v0}, Lyads/mr3;-><init>(ILyads/on0;Lyads/pn0;)V

    return-object v1
.end method
