.class public final Lcom/my/target/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/w2$b;,
        Lcom/my/target/w2$a;
    }
.end annotation


# instance fields
.field public final b:Ld9a;

.field public final c:Lrt;

.field public final d:Lxda;

.field public final e:Lcom/my/target/l;

.field public final f:Lcom/my/target/m2$a;

.field public final g:Lcom/my/target/v;

.field public final h:Lcom/my/target/c;

.field public final i:Lcom/my/target/g2;

.field public final j:Lcom/my/target/i;

.field public k:Lcom/my/target/r0;

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>(Lcom/my/target/x2;Lxda;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Ln5;Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v5, p3

    iget-object v1, v2, Lcom/my/target/x2;->b:Landroid/content/Context;

    iget-object v10, v5, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lw4a;->g:Landroid/os/Handler;

    new-instance v11, Ld9a;

    const/16 v4, 0xc8

    invoke-direct {v11, v4, v3}, Ld9a;-><init>(ILandroid/os/Handler;)V

    iput-object v11, v0, Lcom/my/target/w2;->b:Ld9a;

    new-instance v12, Lrt;

    const/4 v3, 0x5

    invoke-direct {v12, v0, v3}, Lrt;-><init>(Ljava/lang/Object;I)V

    iput-object v12, v0, Lcom/my/target/w2;->c:Lrt;

    iput-object v9, v0, Lcom/my/target/w2;->d:Lxda;

    iput-object v5, v0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    new-instance v13, Lcom/my/target/w2$b;

    invoke-direct {v13, v0}, Lcom/my/target/w2$b;-><init>(Lcom/my/target/w2;)V

    iget-object v3, v9, Lxda;->Z:Lkha;

    iget-object v14, v9, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/my/target/g2;

    invoke-direct {v4, v1}, Lcom/my/target/g2;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/w2;->i:Lcom/my/target/g2;

    iput-object v4, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iget v4, v9, Lxda;->f0:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    new-instance v4, Lcom/my/target/eg;

    invoke-direct {v4, v1}, Lcom/my/target/eg;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/my/target/w2;->h:Lcom/my/target/c;

    iput-object v4, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/my/target/wf;

    invoke-direct {v4, v1, v2}, Lcom/my/target/wf;-><init>(Landroid/content/Context;Lcom/my/target/x2;)V

    iput-object v4, v0, Lcom/my/target/w2;->h:Lcom/my/target/c;

    iput-object v4, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    :goto_0
    iget-object v1, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v1, v13}, Lcom/my/target/l;->setInterstitialPromoViewListener(Lcom/my/target/l$a;)V

    iget-object v1, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v1}, Lcom/my/target/l;->getCloseButton()Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/my/target/w2$a;

    invoke-direct {v4, v0}, Lcom/my/target/w2$a;-><init>(Lcom/my/target/w2;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/my/target/w2;->h:Lcom/my/target/c;

    const/4 v15, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    move-wide/from16 v16, v6

    new-instance v7, Lv51;

    const/4 v6, 0x7

    invoke-direct {v7, v0, v6}, Lv51;-><init>(Ljava/lang/Object;I)V

    move-object v6, v1

    new-instance v1, Lcom/my/target/r0;

    move-object/from16 v8, p5

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object v13, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/my/target/r0;-><init>(Lcom/my/target/x2;Lkha;Lcom/my/target/c;Lcom/my/target/m2$a;Lcom/my/target/m2$b;Lv51;Ln5;)V

    iput-object v1, v0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    iget-object v2, v3, Lkha;->h0:Lxha;

    check-cast v2, Lrn9;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lxha;->d:Ljava/lang/Object;

    if-nez v2, :cond_2

    iput-boolean v15, v1, Lcom/my/target/r0;->n:Z

    :cond_2
    iget-boolean v2, v3, Lkha;->c0:Z

    iput-boolean v2, v1, Lcom/my/target/r0;->k:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    iget v2, v3, Lkha;->f0:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    iget-boolean v2, v3, Lkha;->Y:Z

    if-eqz v2, :cond_3

    const-string v2, "InterstitialMediaPresenter: Banner is allowed to close"

    invoke-static {v13, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/my/target/r0;->c()V

    :cond_3
    iget-boolean v2, v1, Lcom/my/target/r0;->k:Z

    if-eqz v2, :cond_4

    iget v2, v3, Lkha;->f0:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    iget-boolean v2, v3, Lkha;->Y:Z

    if-eqz v2, :cond_5

    :cond_4
    iput-boolean v15, v10, Lcom/my/target/r;->i:Z

    :cond_5
    iget v2, v3, Lao9;->z:F

    iput v2, v1, Lcom/my/target/r0;->i:F

    iget-boolean v2, v3, Lkha;->X:Z

    iput-boolean v2, v1, Lcom/my/target/r0;->j:Z

    if-eqz v2, :cond_6

    invoke-interface {v4, v15}, Lcom/my/target/c;->a(I)V

    goto :goto_1

    :cond_6
    iget-boolean v2, v3, Lkha;->Y:Z

    if-eqz v2, :cond_7

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/my/target/r0;->e(Landroid/content/Context;)V

    :cond_7
    const/4 v1, 0x2

    invoke-interface {v4, v1}, Lcom/my/target/c;->a(I)V

    :goto_1
    iget-boolean v1, v3, Lkha;->Y:Z

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/my/target/w2;->m:J

    goto :goto_2

    :cond_8
    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object v13, v1

    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v1, v9}, Lcom/my/target/l;->setBanner(Lxda;)V

    iget-object v1, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    iget-object v2, v9, Lao9;->r:Lt2a;

    invoke-interface {v1, v2}, Lcom/my/target/l;->setClickArea(Lt2a;)V

    if-eqz v3, :cond_a

    iget-boolean v1, v3, Lkha;->Y:Z

    if-nez v1, :cond_c

    :cond_a
    iget v1, v9, Ljia;->S:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/my/target/w2;->l:J

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterstitialPromoPresenter: Banner will be allowed to close in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/my/target/w2;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " millis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/my/target/w2;->m:J

    iput-boolean v15, v10, Lcom/my/target/r;->i:Z

    goto :goto_3

    :cond_b
    const-string v1, "InterstitialPromoPresenter: Banner is allowed to close"

    invoke-static {v13, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v1}, Lcom/my/target/l;->c()V

    :cond_c
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/my/target/w2;->i:Lcom/my/target/g2;

    if-eqz v1, :cond_d

    new-instance v2, Lcom/my/target/i;

    move-object/from16 v3, v19

    invoke-direct {v2, v3, v1}, Lcom/my/target/i;-><init>(Ljava/util/ArrayList;Lcom/my/target/g2;)V

    iput-object v2, v0, Lcom/my/target/w2;->j:Lcom/my/target/i;

    :cond_d
    iget-object v1, v0, Lcom/my/target/w2;->j:Lcom/my/target/i;

    if-eqz v1, :cond_e

    iput-object v5, v1, Lcom/my/target/i;->c:Lcom/my/target/m2$a;

    :cond_e
    iget-object v1, v9, Lao9;->H:Lcom/my/target/q;

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/my/target/q;->c:Ljava/util/List;

    if-eqz v2, :cond_f

    new-instance v2, Lex0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/my/target/v;

    invoke-direct {v3, v1, v2}, Lcom/my/target/v;-><init>(Lcom/my/target/q;Lex0;)V

    iput-object v3, v0, Lcom/my/target/w2;->g:Lcom/my/target/v;

    move-object/from16 v1, v18

    iput-object v1, v3, Lcom/my/target/v;->c:Lgv9;

    :cond_f
    iget-object v0, v0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lcom/my/target/m2$a;->o(Lao9;Landroid/view/View;)V

    iget v0, v9, Ljia;->S:F

    float-to-double v0, v0

    invoke-virtual {v5, v0, v1}, Lcom/my/target/m2$a;->n(D)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/w2;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/w2;->c:Lrt;

    invoke-virtual {v0, v1}, Ld9a;->e(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/r0;->d()V

    :cond_0
    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {p0}, Lcom/my/target/l;->getCloseButton()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w2;->e:Lcom/my/target/l;

    invoke-interface {p0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final pause()V
    .locals 7

    iget-object v0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/r0;->f()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/w2;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/w2;->c:Lrt;

    invoke-virtual {v0, v1}, Ld9a;->e(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/my/target/w2;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/my/target/w2;->m:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/my/target/w2;->l:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/my/target/w2;->l:J

    return-void

    :cond_1
    iput-wide v2, p0, Lcom/my/target/w2;->l:J

    :cond_2
    return-void
.end method

.method public final resume()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/my/target/w2;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/w2;->b:Ld9a;

    iget-object v1, p0, Lcom/my/target/w2;->c:Lrt;

    invoke-virtual {v0, v1}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/w2;->m:J

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean v0, p0, Lcom/my/target/r;->i:Z

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/my/target/r0;->d:Lcom/my/target/c;

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
