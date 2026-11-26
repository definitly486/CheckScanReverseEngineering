.class public final Lst6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Lyt6;
    .annotation runtime Lbq7;
        value = "type"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "advanceAvailable"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "campaignIconUrl"
    .end annotation
.end field

.field private final e:J
    .annotation runtime Lbq7;
        value = "cashbackValue"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "imageGuideText"
    .end annotation
.end field

.field private final i:Lxt6;
    .annotation runtime Lbq7;
        value = "submitInfo"
    .end annotation
.end field

.field private final j:Lqt6;
    .annotation runtime Lbq7;
        value = "bankImageInfo"
    .end annotation
.end field

.field private final k:Lut6;
    .annotation runtime Lbq7;
        value = "shopImageInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLyt6;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxt6;Lqt6;Lut6;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lst6;->a:J

    .line 161
    iput-object p3, p0, Lst6;->b:Lyt6;

    .line 162
    iput-boolean p4, p0, Lst6;->c:Z

    .line 163
    iput-object p5, p0, Lst6;->d:Ljava/lang/String;

    .line 164
    iput-wide p6, p0, Lst6;->e:J

    .line 165
    iput-object p8, p0, Lst6;->f:Ljava/lang/String;

    .line 166
    iput-object p9, p0, Lst6;->g:Ljava/lang/String;

    .line 167
    iput-object p10, p0, Lst6;->h:Ljava/lang/String;

    .line 168
    iput-object p11, p0, Lst6;->i:Lxt6;

    .line 169
    iput-object p12, p0, Lst6;->j:Lqt6;

    .line 170
    iput-object p13, p0, Lst6;->k:Lut6;

    return-void
.end method

.method public synthetic constructor <init>(JLyt6;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxt6;Lqt6;Lut6;ILjh2;)V
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    move-wide v8, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    new-instance v1, Lxt6;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object/from16 p4, v1

    move/from16 p8, v2

    move-object/from16 p9, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v13

    invoke-direct/range {p4 .. p9}, Lxt6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    move-object v13, v1

    goto :goto_6

    :cond_6
    move-object/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    new-instance v1, Lqt6;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Lqt6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    move-object v14, v1

    goto :goto_7

    :cond_7
    move-object/from16 v14, p12

    :goto_7
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    new-instance v0, Lut6;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p4, v0

    move/from16 p8, v1

    move-object/from16 p9, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    invoke-direct/range {p4 .. p9}, Lut6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjh2;)V

    move-object v15, v0

    :goto_8
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    goto :goto_9

    :cond_8
    move-object/from16 v15, p13

    goto :goto_8

    :goto_9
    invoke-direct/range {v2 .. v15}, Lst6;-><init>(JLyt6;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxt6;Lqt6;Lut6;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lst6;->c:Z

    return p0
.end method

.method public final b()Lqt6;
    .locals 0

    iget-object p0, p0, Lst6;->j:Lqt6;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lst6;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lst6;->e:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lst6;->a:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lst6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lst6;

    iget-wide v3, p0, Lst6;->a:J

    iget-wide v5, p1, Lst6;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lst6;->b:Lyt6;

    iget-object v3, p1, Lst6;->b:Lyt6;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lst6;->c:Z

    iget-boolean v3, p1, Lst6;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lst6;->d:Ljava/lang/String;

    iget-object v3, p1, Lst6;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lst6;->e:J

    iget-wide v5, p1, Lst6;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lst6;->f:Ljava/lang/String;

    iget-object v3, p1, Lst6;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lst6;->g:Ljava/lang/String;

    iget-object v3, p1, Lst6;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lst6;->h:Ljava/lang/String;

    iget-object v3, p1, Lst6;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lst6;->i:Lxt6;

    iget-object v3, p1, Lst6;->i:Lxt6;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lst6;->j:Lqt6;

    iget-object v3, p1, Lst6;->j:Lqt6;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lst6;->k:Lut6;

    iget-object p1, p1, Lst6;->k:Lut6;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lst6;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Lut6;
    .locals 0

    iget-object p0, p0, Lst6;->k:Lut6;

    return-object p0
.end method

.method public final h()Lxt6;
    .locals 0

    iget-object p0, p0, Lst6;->i:Lxt6;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lst6;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lst6;->b:Lyt6;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lst6;->c:Z

    invoke-static {v2, v1, v0}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lst6;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lst6;->e:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lst6;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lst6;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lst6;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lst6;->i:Lxt6;

    invoke-virtual {v2}, Lxt6;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lst6;->j:Lqt6;

    invoke-virtual {v0}, Lqt6;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lst6;->k:Lut6;

    invoke-virtual {p0}, Lut6;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lst6;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lst6;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Lyt6;
    .locals 0

    iget-object p0, p0, Lst6;->b:Lyt6;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lst6;->a:J

    iget-object v2, p0, Lst6;->b:Lyt6;

    iget-boolean v3, p0, Lst6;->c:Z

    iget-object v4, p0, Lst6;->d:Ljava/lang/String;

    iget-wide v5, p0, Lst6;->e:J

    iget-object v7, p0, Lst6;->f:Ljava/lang/String;

    iget-object v8, p0, Lst6;->g:Ljava/lang/String;

    iget-object v9, p0, Lst6;->h:Ljava/lang/String;

    iget-object v10, p0, Lst6;->i:Lxt6;

    iget-object v11, p0, Lst6;->j:Lqt6;

    iget-object p0, p0, Lst6;->k:Lut6;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "PurchaseResponse(id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", advanceAvailable="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", campaignIconUrl="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cashbackValue="

    const-string v1, ", title="

    invoke-static {v12, v0, v5, v6, v1}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, ", text="

    const-string v1, ", imageGuideText="

    invoke-static {v12, v7, v0, v8, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", submitInfo="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bankImageInfo="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shopImageInfo="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
