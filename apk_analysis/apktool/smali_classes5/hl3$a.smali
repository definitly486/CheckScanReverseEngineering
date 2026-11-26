.class public final Lhl3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final A:J
    .annotation runtime Lbq7;
        value = "shiftNumber"
    .end annotation
.end field

.field private final B:J
    .annotation runtime Lbq7;
        value = "operationType"
    .end annotation
.end field

.field private final C:Ljava/lang/Double;
    .annotation runtime Lbq7;
        value = "nds18"
    .end annotation
.end field

.field private final D:Ljava/lang/Long;
    .annotation runtime Lbq7;
        value = "receiptCode"
    .end annotation
.end field

.field private final E:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "operator"
    .end annotation
.end field

.field private final a:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fiscalSign"
    .end annotation
.end field

.field private final b:D
    .annotation runtime Lbq7;
        value = "provisionSum"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "user"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "machineNumber"
    .end annotation
.end field

.field private final e:D
    .annotation runtime Lbq7;
        value = "totalSum"
    .end annotation
.end field

.field private final f:J
    .annotation runtime Lbq7;
        value = "taxationType"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "buyerAddress"
    .end annotation
.end field

.field private final h:D
    .annotation runtime Lbq7;
        value = "cashTotalSum"
    .end annotation
.end field

.field private final i:D
    .annotation runtime Lbq7;
        value = "creditSum"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "dateTime"
    .end annotation
.end field

.field private final k:D
    .annotation runtime Lbq7;
        value = "ecashTotalSum"
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fiscalDocumentFormatVer"
    .end annotation
.end field

.field private final m:J
    .annotation runtime Lbq7;
        value = "fiscalDocumentNumber"
    .end annotation
.end field

.field private final n:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fiscalDriveNumber"
    .end annotation
.end field

.field private final o:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "fnsSite"
    .end annotation
.end field

.field private final p:J
    .annotation runtime Lbq7;
        value = "internetSign"
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "userInn"
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "retailPlace"
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "retailPlaceAddress"
    .end annotation
.end field

.field private final u:J
    .annotation runtime Lbq7;
        value = "prepaidSum"
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "kktRegId"
    .end annotation
.end field

.field private final w:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "paymentAgentType"
    .end annotation
.end field

.field private final x:J
    .annotation runtime Lbq7;
        value = "requestNumber"
    .end annotation
.end field

.field private final y:Ljava/lang/Double;
    .annotation runtime Lbq7;
        value = "nds10"
    .end annotation
.end field

.field private final z:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "messageFiscalSign"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;DJLjava/lang/String;DDLjava/lang/String;DLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/Double;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DJ",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl3$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lhl3$a;->b:D

    iput-object p4, p0, Lhl3$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lhl3$a;->d:Ljava/lang/String;

    iput-wide p6, p0, Lhl3$a;->e:D

    iput-wide p8, p0, Lhl3$a;->f:J

    iput-object p10, p0, Lhl3$a;->g:Ljava/lang/String;

    iput-wide p11, p0, Lhl3$a;->h:D

    iput-wide p13, p0, Lhl3$a;->i:D

    iput-object p15, p0, Lhl3$a;->j:Ljava/lang/String;

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lhl3$a;->k:D

    move-object/from16 p1, p18

    iput-object p1, p0, Lhl3$a;->l:Ljava/lang/String;

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lhl3$a;->m:J

    move-object/from16 p1, p21

    iput-object p1, p0, Lhl3$a;->n:Ljava/lang/String;

    move-object/from16 p1, p22

    iput-object p1, p0, Lhl3$a;->o:Ljava/lang/String;

    move-wide/from16 p1, p23

    iput-wide p1, p0, Lhl3$a;->p:J

    move-object/from16 p1, p25

    iput-object p1, p0, Lhl3$a;->q:Ljava/util/List;

    move-object/from16 p1, p26

    iput-object p1, p0, Lhl3$a;->r:Ljava/lang/String;

    move-object/from16 p1, p27

    iput-object p1, p0, Lhl3$a;->s:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lhl3$a;->t:Ljava/lang/String;

    move-wide/from16 p1, p29

    iput-wide p1, p0, Lhl3$a;->u:J

    move-object/from16 p1, p31

    iput-object p1, p0, Lhl3$a;->v:Ljava/lang/String;

    move-object/from16 p1, p32

    iput-object p1, p0, Lhl3$a;->w:Ljava/lang/String;

    move-wide/from16 p1, p33

    iput-wide p1, p0, Lhl3$a;->x:J

    move-object/from16 p1, p35

    iput-object p1, p0, Lhl3$a;->y:Ljava/lang/Double;

    move-object/from16 p1, p36

    iput-object p1, p0, Lhl3$a;->z:Ljava/lang/String;

    move-wide/from16 p1, p37

    iput-wide p1, p0, Lhl3$a;->A:J

    move-wide/from16 p1, p39

    iput-wide p1, p0, Lhl3$a;->B:J

    move-object/from16 p1, p41

    iput-object p1, p0, Lhl3$a;->C:Ljava/lang/Double;

    move-object/from16 p1, p42

    iput-object p1, p0, Lhl3$a;->D:Ljava/lang/Long;

    move-object/from16 p1, p43

    iput-object p1, p0, Lhl3$a;->E:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhl3$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lhl3$a;

    iget-object v1, p0, Lhl3$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lhl3$a;->b:D

    iget-wide v5, p1, Lhl3$a;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lhl3$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lhl3$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lhl3$a;->e:D

    iget-wide v5, p1, Lhl3$a;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lhl3$a;->f:J

    iget-wide v5, p1, Lhl3$a;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lhl3$a;->g:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lhl3$a;->h:D

    iget-wide v5, p1, Lhl3$a;->h:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lhl3$a;->i:D

    iget-wide v5, p1, Lhl3$a;->i:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lhl3$a;->j:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lhl3$a;->k:D

    iget-wide v5, p1, Lhl3$a;->k:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lhl3$a;->l:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lhl3$a;->m:J

    iget-wide v5, p1, Lhl3$a;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lhl3$a;->n:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lhl3$a;->o:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lhl3$a;->p:J

    iget-wide v5, p1, Lhl3$a;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lhl3$a;->q:Ljava/util/List;

    iget-object v3, p1, Lhl3$a;->q:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lhl3$a;->r:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lhl3$a;->s:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lhl3$a;->t:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lhl3$a;->u:J

    iget-wide v5, p1, Lhl3$a;->u:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lhl3$a;->v:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lhl3$a;->w:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Lhl3$a;->x:J

    iget-wide v5, p1, Lhl3$a;->x:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lhl3$a;->y:Ljava/lang/Double;

    iget-object v3, p1, Lhl3$a;->y:Ljava/lang/Double;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lhl3$a;->z:Ljava/lang/String;

    iget-object v3, p1, Lhl3$a;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-wide v3, p0, Lhl3$a;->A:J

    iget-wide v5, p1, Lhl3$a;->A:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lhl3$a;->B:J

    iget-wide v5, p1, Lhl3$a;->B:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lhl3$a;->C:Ljava/lang/Double;

    iget-object v3, p1, Lhl3$a;->C:Ljava/lang/Double;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lhl3$a;->D:Ljava/lang/Long;

    iget-object v3, p1, Lhl3$a;->D:Ljava/lang/Long;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object p0, p0, Lhl3$a;->E:Ljava/lang/String;

    iget-object p1, p1, Lhl3$a;->E:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lhl3$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lhl3$a;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lhl3$a;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lhl3$a;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lhl3$a;->f:J

    invoke-static {v2, v1, v3, v4}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lhl3$a;->h:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lhl3$a;->i:D

    invoke-static {v3, v4}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhl3$a;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lhl3$a;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lhl3$a;->l:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lhl3$a;->m:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->o:Ljava/lang/String;

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

    iget-wide v4, p0, Lhl3$a;->p:J

    invoke-static {v0, v1, v4, v5}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->q:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->t:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lhl3$a;->u:J

    invoke-static {v0, v1, v4, v5}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->w:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v4, p0, Lhl3$a;->x:J

    invoke-static {v0, v1, v4, v5}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->y:Ljava/lang/Double;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhl3$a;->z:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lhl3$a;->A:J

    invoke-static {v0, v1, v4, v5}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v4, p0, Lhl3$a;->B:J

    invoke-static {v0, v1, v4, v5}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Lhl3$a;->C:Ljava/lang/Double;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lhl3$a;->D:Ljava/lang/Long;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lhl3$a;->E:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lhl3$a;->a:Ljava/lang/String;

    iget-wide v2, v0, Lhl3$a;->b:D

    iget-object v4, v0, Lhl3$a;->c:Ljava/lang/String;

    iget-object v5, v0, Lhl3$a;->d:Ljava/lang/String;

    iget-wide v6, v0, Lhl3$a;->e:D

    iget-wide v8, v0, Lhl3$a;->f:J

    iget-object v10, v0, Lhl3$a;->g:Ljava/lang/String;

    iget-wide v11, v0, Lhl3$a;->h:D

    iget-wide v13, v0, Lhl3$a;->i:D

    iget-object v15, v0, Lhl3$a;->j:Ljava/lang/String;

    move-wide/from16 v16, v13

    iget-wide v13, v0, Lhl3$a;->k:D

    move-wide/from16 v18, v13

    iget-object v13, v0, Lhl3$a;->l:Ljava/lang/String;

    move-object/from16 v20, v13

    iget-wide v13, v0, Lhl3$a;->m:J

    move-wide/from16 v21, v13

    iget-object v13, v0, Lhl3$a;->n:Ljava/lang/String;

    iget-object v14, v0, Lhl3$a;->o:Ljava/lang/String;

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    iget-wide v13, v0, Lhl3$a;->p:J

    move-wide/from16 v25, v13

    iget-object v13, v0, Lhl3$a;->q:Ljava/util/List;

    iget-object v14, v0, Lhl3$a;->r:Ljava/lang/String;

    move-object/from16 v27, v14

    iget-object v14, v0, Lhl3$a;->s:Ljava/lang/String;

    move-object/from16 v28, v14

    iget-object v14, v0, Lhl3$a;->t:Ljava/lang/String;

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    iget-wide v13, v0, Lhl3$a;->u:J

    move-wide/from16 v31, v13

    iget-object v13, v0, Lhl3$a;->v:Ljava/lang/String;

    iget-object v14, v0, Lhl3$a;->w:Ljava/lang/String;

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    iget-wide v13, v0, Lhl3$a;->x:J

    move-wide/from16 v35, v13

    iget-object v13, v0, Lhl3$a;->y:Ljava/lang/Double;

    iget-object v14, v0, Lhl3$a;->z:Ljava/lang/String;

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    iget-wide v13, v0, Lhl3$a;->A:J

    move-wide/from16 v39, v13

    iget-wide v13, v0, Lhl3$a;->B:J

    move-wide/from16 v41, v13

    iget-object v13, v0, Lhl3$a;->C:Ljava/lang/Double;

    iget-object v14, v0, Lhl3$a;->D:Ljava/lang/Long;

    iget-object v0, v0, Lhl3$a;->E:Ljava/lang/String;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v43, v14

    const-string v14, "FullInfo(fiscalSign="

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", provisionSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    const-string v2, ", machineNumber="

    invoke-static {v0, v1, v4, v2, v5}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", totalSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", taxationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buyerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cashTotalSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", creditSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ecashTotalSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fiscalDocumentFormatVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiscalDocumentNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fiscalDriveNumber="

    const-string v2, ", fnsSite="

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-static {v0, v1, v3, v2, v4}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", internetSign="

    const-string v2, ", items="

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v3, v4, v2}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userInn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retailPlace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retailPlaceAddress="

    const-string v2, ", prepaidSum="

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", kktRegId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentAgentType="

    const-string v2, ", requestNumber="

    move-object/from16 v3, v34

    invoke-static {v0, v1, v3, v2}, Ln1;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nds10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageFiscalSign="

    const-string v2, ", shiftNumber="

    move-object/from16 v3, v38

    invoke-static {v0, v1, v3, v2}, Ln1;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", operationType="

    const-string v2, ", nds18="

    move-wide/from16 v3, v41

    invoke-static {v0, v1, v3, v4, v2}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receiptCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    move-object/from16 v2, p0

    invoke-static {v0, v2, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
