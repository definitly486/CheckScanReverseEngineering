.class public final Lba9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba9$a;,
        Lba9$b;,
        Lba9$c;,
        Lba9$d;
    }
.end annotation


# instance fields
.field private final a:J
    .annotation runtime Lbq7;
        value = "userId"
    .end annotation
.end field

.field private final b:J
    .annotation runtime Lbq7;
        value = "cashbackBalance"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "inviteCode"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "avatarUrl"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "birthdate"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fullName"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "gender"
    .end annotation
.end field

.field private final h:Lba9$a;
    .annotation runtime Lbq7;
        value = "deeplinks"
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "email"
    .end annotation
.end field

.field private final j:Lba9$d;
    .annotation runtime Lbq7;
        value = "userCity"
    .end annotation
.end field

.field private final k:Z
    .annotation runtime Lbq7;
        value = "isElectroReceiptRegistered"
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "phone"
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "referralLink"
    .end annotation
.end field

.field private final n:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "isInvited"
    .end annotation
.end field

.field private final o:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "registrationDate"
    .end annotation
.end field

.field private final p:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "hadWithdrawOperations"
    .end annotation
.end field

.field private final q:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "tasksAvailable"
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "scanButtonLogoUrl"
    .end annotation
.end field

.field private final s:Lba9$c;
    .annotation runtime Lbq7;
        value = "profileFormBlock"
    .end annotation
.end field

.field private final t:Lzp6;
    .annotation runtime Lbq7;
        value = "promocodeBlock"
    .end annotation
.end field

.field private final u:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "faqUrl"
    .end annotation
.end field

.field private final v:Lba9$b;
    .annotation runtime Lbq7;
        value = "privacyPolicy"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lba9$a;Ljava/lang/String;Lba9$d;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lba9$c;Lzp6;Ljava/lang/String;Lba9$b;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lba9;->a:J

    iput-wide p3, p0, Lba9;->b:J

    iput-object p5, p0, Lba9;->c:Ljava/lang/String;

    iput-object p6, p0, Lba9;->d:Ljava/lang/String;

    iput-object p7, p0, Lba9;->e:Ljava/lang/String;

    iput-object p8, p0, Lba9;->f:Ljava/lang/String;

    iput-object p9, p0, Lba9;->g:Ljava/lang/String;

    iput-object p10, p0, Lba9;->h:Lba9$a;

    iput-object p11, p0, Lba9;->i:Ljava/lang/String;

    iput-object p12, p0, Lba9;->j:Lba9$d;

    iput-boolean p13, p0, Lba9;->k:Z

    iput-object p14, p0, Lba9;->l:Ljava/lang/String;

    iput-object p15, p0, Lba9;->m:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lba9;->n:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    iput-object p1, p0, Lba9;->o:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lba9;->p:Ljava/lang/Boolean;

    move-object/from16 p1, p19

    iput-object p1, p0, Lba9;->q:Ljava/lang/Boolean;

    move-object/from16 p1, p20

    iput-object p1, p0, Lba9;->r:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lba9;->s:Lba9$c;

    move-object/from16 p1, p22

    iput-object p1, p0, Lba9;->t:Lzp6;

    move-object/from16 p1, p23

    iput-object p1, p0, Lba9;->u:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lba9;->v:Lba9$b;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lba9$a;Ljava/lang/String;Lba9$d;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lba9$c;Lzp6;Ljava/lang/String;Lba9$b;ILjh2;)V
    .locals 27

    move/from16 v0, p25

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    goto :goto_0

    :cond_0
    move-object/from16 v18, p16

    :goto_0
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    move-object/from16 v19, v0

    :goto_1
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    goto :goto_2

    :cond_1
    move-object/from16 v19, p17

    goto :goto_1

    .line 77
    :goto_2
    invoke-direct/range {v2 .. v26}, Lba9;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lba9$a;Ljava/lang/String;Lba9$d;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lba9$c;Lzp6;Ljava/lang/String;Lba9$b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lba9;->b:J

    return-wide v0
.end method

.method public final d()Lba9$a;
    .locals 0

    iget-object p0, p0, Lba9;->h:Lba9$a;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lba9;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lba9;

    iget-wide v3, p0, Lba9;->a:J

    iget-wide v5, p1, Lba9;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lba9;->b:J

    iget-wide v5, p1, Lba9;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lba9;->c:Ljava/lang/String;

    iget-object v3, p1, Lba9;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lba9;->d:Ljava/lang/String;

    iget-object v3, p1, Lba9;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lba9;->e:Ljava/lang/String;

    iget-object v3, p1, Lba9;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lba9;->f:Ljava/lang/String;

    iget-object v3, p1, Lba9;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lba9;->g:Ljava/lang/String;

    iget-object v3, p1, Lba9;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lba9;->h:Lba9$a;

    iget-object v3, p1, Lba9;->h:Lba9$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lba9;->i:Ljava/lang/String;

    iget-object v3, p1, Lba9;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lba9;->j:Lba9$d;

    iget-object v3, p1, Lba9;->j:Lba9$d;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lba9;->k:Z

    iget-boolean v3, p1, Lba9;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lba9;->l:Ljava/lang/String;

    iget-object v3, p1, Lba9;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lba9;->m:Ljava/lang/String;

    iget-object v3, p1, Lba9;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lba9;->n:Ljava/lang/Boolean;

    iget-object v3, p1, Lba9;->n:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lba9;->o:Ljava/lang/String;

    iget-object v3, p1, Lba9;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lba9;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lba9;->p:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lba9;->q:Ljava/lang/Boolean;

    iget-object v3, p1, Lba9;->q:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lba9;->r:Ljava/lang/String;

    iget-object v3, p1, Lba9;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lba9;->s:Lba9$c;

    iget-object v3, p1, Lba9;->s:Lba9$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lba9;->t:Lzp6;

    iget-object v3, p1, Lba9;->t:Lzp6;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lba9;->u:Ljava/lang/String;

    iget-object v3, p1, Lba9;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object p0, p0, Lba9;->v:Lba9$b;

    iget-object p1, p1, Lba9;->v:Lba9$b;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lba9;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lba9;->b:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lba9;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lba9;->d:Ljava/lang/String;

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

    iget-object v2, p0, Lba9;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->f:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->h:Lba9$a;

    invoke-virtual {v2}, Lba9$a;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lba9;->i:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lba9;->j:Lba9$d;

    invoke-virtual {v0}, Lba9$d;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lba9;->k:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lba9;->l:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->m:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->n:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->o:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->p:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->q:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->r:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->s:Lba9$c;

    if-nez v2, :cond_c

    move v2, v3

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Lba9$c;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->t:Lzp6;

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Lzp6;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lba9;->u:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lba9;->v:Lba9$b;

    if-nez p0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Lba9$b;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Lba9$c;
    .locals 0

    iget-object p0, p0, Lba9;->s:Lba9$c;

    return-object p0
.end method

.method public final l()Lzp6;
    .locals 0

    iget-object p0, p0, Lba9;->t:Lzp6;

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lba9;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final n()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lba9;->q:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lba9;->a:J

    return-wide v0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lba9;->k:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-wide v1, v0, Lba9;->a:J

    iget-wide v3, v0, Lba9;->b:J

    iget-object v5, v0, Lba9;->c:Ljava/lang/String;

    iget-object v6, v0, Lba9;->d:Ljava/lang/String;

    iget-object v7, v0, Lba9;->e:Ljava/lang/String;

    iget-object v8, v0, Lba9;->f:Ljava/lang/String;

    iget-object v9, v0, Lba9;->g:Ljava/lang/String;

    iget-object v10, v0, Lba9;->h:Lba9$a;

    iget-object v11, v0, Lba9;->i:Ljava/lang/String;

    iget-object v12, v0, Lba9;->j:Lba9$d;

    iget-boolean v13, v0, Lba9;->k:Z

    iget-object v14, v0, Lba9;->l:Ljava/lang/String;

    iget-object v15, v0, Lba9;->m:Ljava/lang/String;

    move-object/from16 v16, v14

    iget-object v14, v0, Lba9;->n:Ljava/lang/Boolean;

    move-object/from16 v17, v14

    iget-object v14, v0, Lba9;->o:Ljava/lang/String;

    move-object/from16 v18, v14

    iget-object v14, v0, Lba9;->p:Ljava/lang/Boolean;

    move-object/from16 v19, v14

    iget-object v14, v0, Lba9;->q:Ljava/lang/Boolean;

    move-object/from16 v20, v14

    iget-object v14, v0, Lba9;->r:Ljava/lang/String;

    move-object/from16 v21, v14

    iget-object v14, v0, Lba9;->s:Lba9$c;

    move-object/from16 v22, v14

    iget-object v14, v0, Lba9;->t:Lzp6;

    move-object/from16 v23, v14

    iget-object v14, v0, Lba9;->u:Ljava/lang/String;

    iget-object v0, v0, Lba9;->v:Lba9$b;

    move-object/from16 p0, v0

    const-string v0, "UserProfileInfoResponse(userId="

    move-object/from16 v24, v14

    const-string v14, ", cashBackBalance="

    invoke-static {v1, v2, v0, v14}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inviteCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    const-string v2, ", birthDate="

    invoke-static {v0, v1, v6, v2, v7}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", fullName="

    const-string v2, ", fGender="

    invoke-static {v0, v1, v8, v2, v9}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", deepLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userCity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isElectroReceiptRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    const-string v2, ", referralLink="

    move-object/from16 v3, v16

    invoke-static {v0, v1, v3, v2, v15}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", isInvited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hadWithdrawOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tasksAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scanButtonLogoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileFormBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promocodeBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", faqUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
