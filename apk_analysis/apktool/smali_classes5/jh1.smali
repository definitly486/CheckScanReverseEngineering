.class public final Ljh1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljh1$a;
    }
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "purchaseDateTime"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lbq7;
        value = "totalSum"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "qrCode"
    .end annotation
.end field

.field private e:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "personalDataRequired"
    .end annotation
.end field

.field private f:Luu7;
    .annotation runtime Lbq7;
        value = "shop"
    .end annotation
.end field

.field private final g:Ljh1$a;
    .annotation runtime Lbq7;
        value = "promotionInfo"
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgi6;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "inn"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "organizationName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Luu7;Ljh1$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Luu7;",
            "Ljh1$a;",
            "Ljava/util/List<",
            "Lgi6;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Ljh1;->a:I

    .line 64
    iput-object p2, p0, Ljh1;->b:Ljava/lang/String;

    .line 65
    iput p3, p0, Ljh1;->c:I

    .line 66
    iput-object p4, p0, Ljh1;->d:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Ljh1;->e:Ljava/lang/Boolean;

    .line 68
    iput-object p6, p0, Ljh1;->f:Luu7;

    .line 69
    iput-object p7, p0, Ljh1;->g:Ljh1$a;

    .line 70
    iput-object p8, p0, Ljh1;->h:Ljava/util/List;

    .line 71
    iput-object p9, p0, Ljh1;->i:Ljava/lang/String;

    .line 72
    iput-object p10, p0, Ljh1;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Luu7;Ljh1$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjh2;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v5, v1

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v10, v2

    move v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    :goto_3
    invoke-direct/range {v2 .. v12}, Ljh1;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Luu7;Ljh1$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ljh1;->a:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljh1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Luu7;
    .locals 0

    iget-object p0, p0, Ljh1;->f:Luu7;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Ljh1;->c:I

    return p0
.end method

.method public final e()Lhd1;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Ljh1;->f:Luu7;

    invoke-virtual {v1}, Luu7;->b()Llu7;

    move-result-object v7

    iget v1, v0, Ljh1;->a:I

    iget-object v2, v0, Ljh1;->b:Ljava/lang/String;

    iget v3, v0, Ljh1;->c:I

    iget-object v4, v0, Ljh1;->d:Ljava/lang/String;

    iget-object v5, v0, Ljh1;->g:Ljh1$a;

    iget-object v6, v0, Ljh1;->e:Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_0
    move/from16 v16, v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :goto_1
    iget-object v6, v0, Ljh1;->h:Ljava/util/List;

    if-eqz v6, :cond_2

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgi6;

    move-object v9, v2

    new-instance v2, Lvg6;

    move v10, v3

    move-object v11, v4

    invoke-virtual {v6}, Lgi6;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lgi6;->c()Ljava/lang/String;

    move-result-object v12

    const-string v13, "^\\d*[:)* &]*\\d*[ ]*"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v13}, Lgi6;->d()I

    move-result v6

    move-object v14, v7

    invoke-virtual {v13}, Lgi6;->a()I

    move-result v7

    move-object v15, v8

    invoke-virtual {v13}, Lgi6;->f()F

    move-result v8

    move-object/from16 v18, v9

    invoke-virtual {v13}, Lgi6;->g()I

    move-result v9

    move/from16 v19, v10

    invoke-virtual {v13}, Lgi6;->h()Z

    move-result v10

    invoke-virtual {v13}, Lgi6;->e()J

    move-result-wide v20

    iget-object v13, v0, Ljh1;->b:Ljava/lang/String;

    move-object/from16 v22, v15

    const-string v15, ""

    move/from16 v23, v1

    move-object/from16 v1, v22

    move-wide/from16 v24, v20

    move-object/from16 v21, v5

    move-object/from16 v20, v11

    move-object v5, v12

    move-wide/from16 v11, v24

    invoke-direct/range {v2 .. v15}, Lvg6;-><init>(JLjava/lang/String;IIFIZJLjava/lang/String;Llu7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v1

    move-object v7, v14

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v1, v23

    goto :goto_2

    :cond_1
    move/from16 v23, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object v14, v7

    move-object v1, v8

    move-object v10, v1

    goto :goto_3

    :cond_2
    move/from16 v23, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object v14, v7

    const/4 v8, 0x0

    move-object v10, v8

    :goto_3
    iget-object v11, v0, Ljh1;->i:Ljava/lang/String;

    iget-object v12, v0, Ljh1;->j:Ljava/lang/String;

    new-instance v2, Lhd1;

    move-object v7, v14

    move/from16 v9, v16

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move/from16 v3, v23

    invoke-direct/range {v2 .. v12}, Lhd1;-><init>(ILjava/lang/String;ILjava/lang/String;Llu7;Ljh1$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljh1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljh1;

    iget v1, p0, Ljh1;->a:I

    iget v3, p1, Ljh1;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ljh1;->b:Ljava/lang/String;

    iget-object v3, p1, Ljh1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ljh1;->c:I

    iget v3, p1, Ljh1;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ljh1;->d:Ljava/lang/String;

    iget-object v3, p1, Ljh1;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ljh1;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Ljh1;->e:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ljh1;->f:Luu7;

    iget-object v3, p1, Ljh1;->f:Luu7;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ljh1;->g:Ljh1$a;

    iget-object v3, p1, Ljh1;->g:Ljh1$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ljh1;->h:Ljava/util/List;

    iget-object v3, p1, Ljh1;->h:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ljh1;->i:Ljava/lang/String;

    iget-object v3, p1, Ljh1;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Ljh1;->j:Ljava/lang/String;

    iget-object p1, p1, Ljh1;->j:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Ljh1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljh1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Ljh1;->c:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Ljh1;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljh1;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljh1;->f:Luu7;

    invoke-virtual {v2}, Luu7;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Ljh1;->g:Ljh1$a;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljh1$a;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Ljh1;->h:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Ljh1;->i:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Ljh1;->j:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Ljh1;->a:I

    iget-object v1, p0, Ljh1;->b:Ljava/lang/String;

    iget v2, p0, Ljh1;->c:I

    iget-object v3, p0, Ljh1;->d:Ljava/lang/String;

    iget-object v4, p0, Ljh1;->e:Ljava/lang/Boolean;

    iget-object v5, p0, Ljh1;->f:Luu7;

    iget-object v6, p0, Ljh1;->g:Ljh1$a;

    iget-object v7, p0, Ljh1;->h:Ljava/util/List;

    iget-object v8, p0, Ljh1;->i:Ljava/lang/String;

    iget-object p0, p0, Ljh1;->j:Ljava/lang/String;

    const-string v9, ", purchaseDateTime="

    const-string v10, ", totalSum="

    const-string v11, "ChequeResponse(id="

    invoke-static {v0, v11, v9, v1, v10}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", qrCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPersonalDataRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promotion_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nameLegalFace="

    const-string v2, ")"

    invoke-static {v0, v8, v1, p0, v2}, Ldg;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
