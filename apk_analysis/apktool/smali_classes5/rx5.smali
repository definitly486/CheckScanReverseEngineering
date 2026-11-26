.class public final Lrx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljx5;
    .annotation runtime Lbq7;
        value = "badge"
    .end annotation
.end field

.field private final b:Lox5;
    .annotation runtime Lbq7;
        value = "button"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "favorite"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "imageUrl"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "profitTitle"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "subTitle"
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "terms"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvx5;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "restriction"
    .end annotation
.end field

.field private final k:Lry8;
    .annotation runtime Lbq7;
        value = "tracking"
    .end annotation
.end field

.field private final l:Lsx5$c;
    .annotation runtime Lbq7;
        value = "profit"
    .end annotation
.end field

.field private final m:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field

.field private final n:Lao6;
    .annotation runtime Lbq7;
        value = "promoInfo"
    .end annotation
.end field

.field private final o:Lxh6;
    .annotation runtime Lbq7;
        value = "productLinkChecker"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljx5;Lox5;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lry8;Lsx5$c;Lc06;Lao6;Lxh6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljx5;",
            "Lox5;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lvx5;",
            ">;",
            "Ljava/lang/String;",
            "Lry8;",
            "Lsx5$c;",
            "Lc06;",
            "Lao6;",
            "Lxh6;",
            ")V"
        }
    .end annotation

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lrx5;->a:Ljx5;

    .line 84
    iput-object p2, p0, Lrx5;->b:Lox5;

    .line 85
    iput-boolean p3, p0, Lrx5;->c:Z

    .line 86
    iput-object p4, p0, Lrx5;->d:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lrx5;->e:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lrx5;->f:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lrx5;->g:Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lrx5;->h:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lrx5;->i:Ljava/util/List;

    .line 92
    iput-object p10, p0, Lrx5;->j:Ljava/lang/String;

    .line 93
    iput-object p11, p0, Lrx5;->k:Lry8;

    .line 94
    iput-object p12, p0, Lrx5;->l:Lsx5$c;

    .line 95
    iput-object p13, p0, Lrx5;->m:Lc06;

    .line 96
    iput-object p14, p0, Lrx5;->n:Lao6;

    .line 97
    iput-object p15, p0, Lrx5;->o:Lxh6;

    return-void
.end method

.method public synthetic constructor <init>(Ljx5;Lox5;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lry8;Lsx5$c;Lc06;Lao6;Lxh6;ILjh2;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v12, v2

    :goto_6
    move-object/from16 v3, p0

    move/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    goto :goto_7

    :cond_6
    move-object/from16 v12, p9

    goto :goto_6

    :goto_7
    invoke-direct/range {v3 .. v18}, Lrx5;-><init>(Ljx5;Lox5;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lry8;Lsx5$c;Lc06;Lao6;Lxh6;)V

    return-void
.end method


# virtual methods
.method public final a()Ljx5;
    .locals 0

    iget-object p0, p0, Lrx5;->a:Ljx5;

    return-object p0
.end method

.method public final b()Lox5;
    .locals 0

    iget-object p0, p0, Lrx5;->b:Lox5;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lrx5;->c:Z

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrx5;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrx5;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrx5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrx5;

    iget-object v1, p0, Lrx5;->a:Ljx5;

    iget-object v3, p1, Lrx5;->a:Ljx5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrx5;->b:Lox5;

    iget-object v3, p1, Lrx5;->b:Lox5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lrx5;->c:Z

    iget-boolean v3, p1, Lrx5;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lrx5;->d:Ljava/lang/String;

    iget-object v3, p1, Lrx5;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lrx5;->e:Ljava/lang/String;

    iget-object v3, p1, Lrx5;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lrx5;->f:Ljava/lang/String;

    iget-object v3, p1, Lrx5;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lrx5;->g:Ljava/lang/String;

    iget-object v3, p1, Lrx5;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lrx5;->h:Ljava/lang/String;

    iget-object v3, p1, Lrx5;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lrx5;->i:Ljava/util/List;

    iget-object v3, p1, Lrx5;->i:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lrx5;->j:Ljava/lang/String;

    iget-object v3, p1, Lrx5;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lrx5;->k:Lry8;

    iget-object v3, p1, Lrx5;->k:Lry8;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lrx5;->l:Lsx5$c;

    iget-object v3, p1, Lrx5;->l:Lsx5$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lrx5;->m:Lc06;

    iget-object v3, p1, Lrx5;->m:Lc06;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lrx5;->n:Lao6;

    iget-object v3, p1, Lrx5;->n:Lao6;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object p0, p0, Lrx5;->o:Lxh6;

    iget-object p1, p1, Lrx5;->o:Lxh6;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final f()Lc06;
    .locals 0

    iget-object p0, p0, Lrx5;->m:Lc06;

    return-object p0
.end method

.method public final g()Lxh6;
    .locals 0

    iget-object p0, p0, Lrx5;->o:Lxh6;

    return-object p0
.end method

.method public final h()Lsx5$c;
    .locals 0

    iget-object p0, p0, Lrx5;->l:Lsx5$c;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lrx5;->a:Ljx5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljx5;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->b:Lox5;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lox5;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lrx5;->c:Z

    invoke-static {v0, v2, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v3, p0, Lrx5;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lrx5;->f:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->g:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->h:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->i:Ljava/util/List;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->j:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lrx5;->k:Lry8;

    invoke-virtual {v3}, Lry8;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lrx5;->l:Lsx5$c;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lsx5$c;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lrx5;->m:Lc06;

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lc06;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Lrx5;->n:Lao6;

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Lao6;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object p0, p0, Lrx5;->o:Lxh6;

    if-nez p0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lxh6;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v3, v1

    return v3
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrx5;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lao6;
    .locals 0

    iget-object p0, p0, Lrx5;->n:Lao6;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrx5;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrx5;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvx5;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lrx5;->i:Ljava/util/List;

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrx5;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final o()Lry8;
    .locals 0

    iget-object p0, p0, Lrx5;->k:Lry8;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx5;->a:Ljx5;

    iget-object v2, v0, Lrx5;->b:Lox5;

    iget-boolean v3, v0, Lrx5;->c:Z

    iget-object v4, v0, Lrx5;->d:Ljava/lang/String;

    iget-object v5, v0, Lrx5;->e:Ljava/lang/String;

    iget-object v6, v0, Lrx5;->f:Ljava/lang/String;

    iget-object v7, v0, Lrx5;->g:Ljava/lang/String;

    iget-object v8, v0, Lrx5;->h:Ljava/lang/String;

    iget-object v9, v0, Lrx5;->i:Ljava/util/List;

    iget-object v10, v0, Lrx5;->j:Ljava/lang/String;

    iget-object v11, v0, Lrx5;->k:Lry8;

    iget-object v12, v0, Lrx5;->l:Lsx5$c;

    iget-object v13, v0, Lrx5;->m:Lc06;

    iget-object v14, v0, Lrx5;->n:Lao6;

    iget-object v0, v0, Lrx5;->o:Lxh6;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 p0, v0

    const-string v0, "OnlineShopInfoResponse(badge="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", button="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", favorite="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", imageUrl="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", logoUrl="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", profitTitle="

    const-string v1, ", title="

    invoke-static {v15, v5, v0, v6, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", subTitle="

    const-string v1, ", terms="

    invoke-static {v15, v7, v0, v8, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", restriction="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tracking="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", profit="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ordInfo="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", promoInfo="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", productLinkChecker="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
