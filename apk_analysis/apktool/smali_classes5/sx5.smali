.class public final Lsx5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsx5$a;,
        Lsx5$b;,
        Lsx5$c;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "favorite"
    .end annotation
.end field

.field private final d:Lsx5$c;
    .annotation runtime Lbq7;
        value = "profit"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "previewLogoUrl"
    .end annotation
.end field

.field private final f:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field

.field private final g:Z
    .annotation runtime Lbq7;
        value = "adult"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLsx5$c;Ljava/lang/String;Lc06;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lsx5;->a:I

    .line 27
    iput-object p2, p0, Lsx5;->b:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lsx5;->c:Z

    .line 29
    iput-object p4, p0, Lsx5;->d:Lsx5$c;

    .line 30
    iput-object p5, p0, Lsx5;->e:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lsx5;->f:Lc06;

    .line 32
    iput-boolean p7, p0, Lsx5;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLsx5$c;Ljava/lang/String;Lc06;ZILjh2;)V
    .locals 8

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    move v7, p2

    :goto_0
    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_1
    move v7, p7

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v7}, Lsx5;-><init>(ILjava/lang/String;ZLsx5$c;Ljava/lang/String;Lc06;Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lsx5;->g:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lsx5;->a:I

    return p0
.end method

.method public final c()Ldn1;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ldn1;

    move-object v2, v1

    iget v1, v0, Lsx5;->a:I

    iget-object v3, v0, Lsx5;->b:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    iget-boolean v5, v0, Lsx5;->c:Z

    move-object v6, v4

    new-instance v4, Ldn1$c;

    iget-object v7, v0, Lsx5;->d:Lsx5$c;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lsx5$c;->c()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v8

    :goto_0
    iget-object v9, v0, Lsx5;->d:Lsx5$c;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lsx5$c;->d()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_1
    iget-object v10, v0, Lsx5;->d:Lsx5$c;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lsx5$c;->a()Lsx5$a;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lsx5$a;->a()Ldn1$a;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v8

    :goto_2
    invoke-direct {v4, v7, v9, v10}, Ldn1$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ldn1$a;)V

    iget-object v7, v0, Lsx5;->f:Lc06;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_3
    move v11, v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :goto_4
    iget-object v7, v0, Lsx5;->f:Lc06;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lc06;->b()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object v7, v8

    :goto_5
    if-nez v7, :cond_6

    move-object v12, v6

    goto :goto_6

    :cond_6
    move-object v12, v7

    :goto_6
    iget-object v7, v0, Lsx5;->f:Lc06;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lc06;->e()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_7
    move-object v7, v8

    :goto_7
    if-nez v7, :cond_8

    move-object v13, v6

    goto :goto_8

    :cond_8
    move-object v13, v7

    :goto_8
    iget-object v7, v0, Lsx5;->f:Lc06;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lc06;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_9
    move-object v7, v8

    :goto_9
    if-nez v7, :cond_a

    move-object v14, v6

    goto :goto_a

    :cond_a
    move-object v14, v7

    :goto_a
    iget-object v7, v0, Lsx5;->f:Lc06;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lc06;->d()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_b
    move-object v7, v8

    :goto_b
    if-nez v7, :cond_c

    move-object v10, v6

    goto :goto_c

    :cond_c
    move-object v10, v7

    :goto_c
    new-instance v9, Lb06;

    invoke-direct/range {v9 .. v14}, Lb06;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    iget-boolean v6, v0, Lsx5;->g:Z

    iget-object v10, v0, Lsx5;->d:Lsx5$c;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lsx5$c;->b()Lfw3;

    move-result-object v10

    goto :goto_d

    :cond_d
    move-object v10, v8

    :goto_d
    if-nez v10, :cond_e

    move-object v7, v8

    :goto_e
    move-object v0, v2

    move-object v2, v3

    move v3, v5

    move-object v5, v9

    goto :goto_10

    :cond_e
    new-instance v10, Lew3;

    iget-object v11, v0, Lsx5;->d:Lsx5$c;

    invoke-virtual {v11}, Lsx5$c;->b()Lfw3;

    move-result-object v11

    invoke-virtual {v11}, Lfw3;->a()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_f

    goto :goto_f

    :cond_f
    move-object v7, v11

    :goto_f
    iget-object v0, v0, Lsx5;->d:Lsx5$c;

    invoke-virtual {v0}, Lsx5$c;->b()Lfw3;

    move-result-object v0

    invoke-virtual {v0}, Lfw3;->b()Lme6;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v11, Ldn1$b;

    invoke-virtual {v0}, Lme6;->c()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0}, Lme6;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lme6;->d()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v0}, Lme6;->e()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lme6;->a()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v11 .. v16}, Ldn1$b;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v11

    :cond_10
    invoke-direct {v10, v7, v8}, Lew3;-><init>(Ljava/lang/String;Ldn1$b;)V

    move-object v7, v10

    goto :goto_e

    :goto_10
    invoke-direct/range {v0 .. v7}, Ldn1;-><init>(ILjava/lang/String;ZLdn1$c;Lb06;ZLew3;)V

    return-object v0
.end method

.method public final d()Len1;
    .locals 1

    iget-object v0, p0, Lsx5;->d:Lsx5$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsx5$c;->b()Lfw3;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Len1$b;

    invoke-virtual {p0}, Lsx5;->c()Ldn1;

    move-result-object p0

    invoke-direct {v0, p0}, Len1$b;-><init>(Ldn1;)V

    return-object v0

    :cond_1
    new-instance v0, Len1$a;

    invoke-virtual {p0}, Lsx5;->c()Ldn1;

    move-result-object p0

    invoke-direct {v0, p0}, Len1$a;-><init>(Ldn1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsx5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsx5;

    iget v1, p0, Lsx5;->a:I

    iget v3, p1, Lsx5;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lsx5;->b:Ljava/lang/String;

    iget-object v3, p1, Lsx5;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lsx5;->c:Z

    iget-boolean v3, p1, Lsx5;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lsx5;->d:Lsx5$c;

    iget-object v3, p1, Lsx5;->d:Lsx5$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lsx5;->e:Ljava/lang/String;

    iget-object v3, p1, Lsx5;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lsx5;->f:Lc06;

    iget-object v3, p1, Lsx5;->f:Lc06;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lsx5;->g:Z

    iget-boolean p1, p1, Lsx5;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lsx5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lsx5;->b:Ljava/lang/String;

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

    iget-boolean v2, p0, Lsx5;->c:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lsx5;->d:Lsx5$c;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lsx5$c;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lsx5;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lsx5;->f:Lc06;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lc06;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lsx5;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lsx5;->a:I

    iget-object v1, p0, Lsx5;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lsx5;->c:Z

    iget-object v3, p0, Lsx5;->d:Lsx5$c;

    iget-object v4, p0, Lsx5;->e:Ljava/lang/String;

    iget-object v5, p0, Lsx5;->f:Lc06;

    iget-boolean p0, p0, Lsx5;->g:Z

    const-string v6, ", logoUrl="

    const-string v7, ", isFavorite="

    const-string v8, "OnlineShopResponse(id="

    invoke-static {v0, v8, v6, v1, v7}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewLogoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
