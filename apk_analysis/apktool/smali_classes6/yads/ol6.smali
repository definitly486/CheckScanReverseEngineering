.class public final Lyads/ol6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/j86;

.field public final d:Lyads/ac6;

.field public final e:Lyads/t5;

.field public final f:Landroid/content/Context;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;Lyads/j86;Lyads/ac6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ol6;->a:Lyads/e4;

    iput-object p4, p0, Lyads/ol6;->b:Lyads/bf5;

    iput-object p5, p0, Lyads/ol6;->c:Lyads/j86;

    iput-object p6, p0, Lyads/ol6;->d:Lyads/ac6;

    iput-object p3, p0, Lyads/ol6;->e:Lyads/t5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/ol6;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;Lyads/mc6;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    iget v3, v0, Lyads/ol6;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lyads/ol6;->g:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_4

    iget-object v10, v0, Lyads/ol6;->f:Landroid/content/Context;

    iget-object v11, v0, Lyads/ol6;->a:Lyads/e4;

    iget-object v13, v0, Lyads/ol6;->b:Lyads/bf5;

    iget-object v15, v0, Lyads/ol6;->d:Lyads/ac6;

    iget-object v14, v0, Lyads/ol6;->c:Lyads/j86;

    iget-object v12, v0, Lyads/ol6;->e:Lyads/t5;

    new-instance v9, Lyads/ql6;

    invoke-direct/range {v9 .. v15}, Lyads/ql6;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;Lyads/j86;Lyads/ac6;)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lyads/ql6;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lyads/mc6;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object v2, v9, Lyads/ql6;->d:Lyads/mc6;

    iget-object v0, v9, Lyads/ql6;->a:Lyads/t5;

    sget-object v2, Lyads/s5;->y:Lyads/s5;

    invoke-virtual {v0, v2, v8}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lyads/t96;

    iget v0, v9, Lyads/ql6;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lyads/ql6;->e:I

    iget-object v0, v9, Lyads/ql6;->b:Lyads/ll6;

    new-instance v2, Lyads/pl6;

    invoke-direct {v2, v9, v8}, Lyads/pl6;-><init>(Lyads/ql6;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/ml6;

    invoke-direct {v3, v1, v6, v2}, Lyads/ml6;-><init>(Landroid/content/Context;Lyads/t96;Lyads/pl6;)V

    iget-object v11, v0, Lyads/ll6;->e:Lyads/pa6;

    iget-object v2, v0, Lyads/ll6;->b:Lyads/bf5;

    move-object v4, v2

    iget-object v2, v0, Lyads/ll6;->a:Lyads/e4;

    iget-object v5, v0, Lyads/ll6;->c:Lyads/j86;

    iget-object v0, v0, Lyads/ll6;->d:Lyads/ac6;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lyads/r86;

    invoke-direct {v7}, Lyads/r86;-><init>()V

    new-instance v12, Lyads/ha6;

    iget-object v12, v6, Lyads/t96;->i:Ljava/lang/String;

    if-nez v12, :cond_1

    const-string v12, ""

    :cond_1
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    sget-object v14, Lyads/ha6;->a:Lcl4;

    invoke-interface {v14}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v7, v1, v13, v2, v5}, Lyads/r86;->a(Landroid/content/Context;Landroid/net/Uri;Lyads/e4;Lyads/j86;)Ljava/lang/String;

    move-result-object v12

    :cond_2
    new-instance v7, Lyads/vl6;

    invoke-direct {v7, v0}, Lyads/vl6;-><init>(Lyads/ac6;)V

    new-instance v5, Lyads/qi6;

    invoke-direct {v5, v3}, Lyads/qi6;-><init>(Lyads/v75;)V

    new-instance v0, Lyads/v86;

    move-object v3, v4

    check-cast v3, Lyads/do6;

    iget-object v3, v3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v3, v3}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v3

    move-object v4, v12

    invoke-direct/range {v0 .. v7}, Lyads/v86;-><init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Lyads/qi6;Lyads/t96;Lyads/vl6;)V

    move-object v1, v0

    move-object/from16 v0, p4

    iput-object v0, v1, Lyads/r75;->q:Ljava/lang/Object;

    iget-object v2, v11, Lyads/pa6;->a:Lyads/e85;

    invoke-virtual {v2, v1}, Lyads/e85;->a(Lyads/r75;)V

    move-object/from16 v1, p1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v2}, Lyads/mc6;->a()V

    return-void
.end method
