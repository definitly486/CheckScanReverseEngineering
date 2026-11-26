.class public final Lt99;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lmn;
    .annotation runtime Lbq7;
        value = "apiBankAlfa"
    .end annotation
.end field

.field private final b:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "experimentOfferCardButton"
    .end annotation
.end field

.field private final c:Ls33;
    .annotation runtime Lbq7;
        value = "experimentOnlineShopTutorial"
    .end annotation
.end field

.field private final d:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "floatingButton"
    .end annotation
.end field

.field private final e:Lr33;
    .annotation runtime Lbq7;
        value = "experimentOnboardingNew"
    .end annotation
.end field

.field private final f:Lq33;
    .annotation runtime Lbq7;
        value = "experimentNewCreditBanner"
    .end annotation
.end field

.field private final g:Lo33;
    .annotation runtime Lbq7;
        value = "experimentGoodsShowcase"
    .end annotation
.end field

.field private final h:Lt33;
    .annotation runtime Lbq7;
        value = "experimentSearchString"
    .end annotation
.end field

.field private final i:Ll33;
    .annotation runtime Lbq7;
        value = "experimentAddReceiptButton"
    .end annotation
.end field

.field private final j:Lm33;
    .annotation runtime Lbq7;
        value = "experimentFloatingDK"
    .end annotation
.end field

.field private final k:Ln33;
    .annotation runtime Lbq7;
        value = "experimentGamesTabbar"
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "experimentGamesTabbarLink"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmn;Ljava/lang/Boolean;Ls33;Ljava/lang/Boolean;Lr33;Lq33;Lo33;Lt33;Ll33;Lm33;Ln33;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lt99;->a:Lmn;

    .line 52
    iput-object p2, p0, Lt99;->b:Ljava/lang/Boolean;

    .line 53
    iput-object p3, p0, Lt99;->c:Ls33;

    .line 54
    iput-object p4, p0, Lt99;->d:Ljava/lang/Boolean;

    .line 55
    iput-object p5, p0, Lt99;->e:Lr33;

    .line 56
    iput-object p6, p0, Lt99;->f:Lq33;

    .line 57
    iput-object p7, p0, Lt99;->g:Lo33;

    .line 58
    iput-object p8, p0, Lt99;->h:Lt33;

    .line 59
    iput-object p9, p0, Lt99;->i:Ll33;

    .line 60
    iput-object p10, p0, Lt99;->j:Lm33;

    .line 61
    iput-object p11, p0, Lt99;->k:Ln33;

    .line 62
    iput-object p12, p0, Lt99;->l:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lmn;Ljava/lang/Boolean;Ls33;Ljava/lang/Boolean;Lr33;Lq33;Lo33;Lt33;Ll33;Lm33;Ln33;Ljava/lang/String;ILjh2;)V
    .locals 15

    and-int/lit8 v0, p13, 0x1

    if-eqz v0, :cond_0

    new-instance v1, Lmn;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lmn;-><init>(ZJJLjava/util/List;ILjh2;)V

    move-object v3, v1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    goto :goto_1

    :cond_0
    move-object/from16 v3, p1

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v14}, Lt99;-><init>(Lmn;Ljava/lang/Boolean;Ls33;Ljava/lang/Boolean;Lr33;Lq33;Lo33;Lt33;Ll33;Lm33;Ln33;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lmn;
    .locals 0

    iget-object p0, p0, Lt99;->a:Lmn;

    return-object p0
.end method

.method public final b()Ll33;
    .locals 0

    iget-object p0, p0, Lt99;->i:Ll33;

    return-object p0
.end method

.method public final c()Lm33;
    .locals 0

    iget-object p0, p0, Lt99;->j:Lm33;

    return-object p0
.end method

.method public final d()Ln33;
    .locals 0

    iget-object p0, p0, Lt99;->k:Ln33;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt99;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt99;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lt99;

    iget-object v1, p0, Lt99;->a:Lmn;

    iget-object v3, p1, Lt99;->a:Lmn;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lt99;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lt99;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lt99;->c:Ls33;

    iget-object v3, p1, Lt99;->c:Ls33;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lt99;->d:Ljava/lang/Boolean;

    iget-object v3, p1, Lt99;->d:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lt99;->e:Lr33;

    iget-object v3, p1, Lt99;->e:Lr33;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lt99;->f:Lq33;

    iget-object v3, p1, Lt99;->f:Lq33;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lt99;->g:Lo33;

    iget-object v3, p1, Lt99;->g:Lo33;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lt99;->h:Lt33;

    iget-object v3, p1, Lt99;->h:Lt33;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lt99;->i:Ll33;

    iget-object v3, p1, Lt99;->i:Ll33;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lt99;->j:Lm33;

    iget-object v3, p1, Lt99;->j:Lm33;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lt99;->k:Ln33;

    iget-object v3, p1, Lt99;->k:Ln33;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lt99;->l:Ljava/lang/String;

    iget-object p1, p1, Lt99;->l:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final f()Lo33;
    .locals 0

    iget-object p0, p0, Lt99;->g:Lo33;

    return-object p0
.end method

.method public final g()Lq33;
    .locals 0

    iget-object p0, p0, Lt99;->f:Lq33;

    return-object p0
.end method

.method public final h()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lt99;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lt99;->a:Lmn;

    invoke-virtual {v0}, Lmn;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->b:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->c:Ls33;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->e:Lr33;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->f:Lq33;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->g:Lo33;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->h:Lt33;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->i:Ll33;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->j:Lm33;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt99;->k:Ln33;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lt99;->l:Ljava/lang/String;

    if-nez p0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Lr33;
    .locals 0

    iget-object p0, p0, Lt99;->e:Lr33;

    return-object p0
.end method

.method public final j()Ls33;
    .locals 0

    iget-object p0, p0, Lt99;->c:Ls33;

    return-object p0
.end method

.method public final k()Lt33;
    .locals 0

    iget-object p0, p0, Lt99;->h:Lt33;

    return-object p0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lt99;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lt99;->a:Lmn;

    iget-object v1, p0, Lt99;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lt99;->c:Ls33;

    iget-object v3, p0, Lt99;->d:Ljava/lang/Boolean;

    iget-object v4, p0, Lt99;->e:Lr33;

    iget-object v5, p0, Lt99;->f:Lq33;

    iget-object v6, p0, Lt99;->g:Lo33;

    iget-object v7, p0, Lt99;->h:Lt33;

    iget-object v8, p0, Lt99;->i:Ll33;

    iget-object v9, p0, Lt99;->j:Lm33;

    iget-object v10, p0, Lt99;->k:Ln33;

    iget-object p0, p0, Lt99;->l:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UserFeaturesResponse(apiBankAlpha="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentOfferCardButton="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentOnlineShopTutorial="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", floatingButton="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentOnboardingNew="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentNewCreditBanner="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentGoodsShowcase="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentSearchString="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentAddReceiptButton="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentFloatingDK="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentGamesTabbar="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", experimentGamesTabbarLink="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
