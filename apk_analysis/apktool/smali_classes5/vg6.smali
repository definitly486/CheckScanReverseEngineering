.class public final Lvg6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "name"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lbq7;
        value = "price"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lbq7;
        value = "catId"
    .end annotation
.end field

.field private final e:F
    .annotation runtime Lbq7;
        value = "quantity"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lbq7;
        value = "isPromotional"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lbq7;
        value = "prodId"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "datetime"
    .end annotation
.end field

.field private j:Llu7;
    .annotation runtime Lbq7;
        value = "shop"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "categoryName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;IIFIZJLjava/lang/String;Llu7;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lvg6;->a:J

    .line 47
    iput-object p3, p0, Lvg6;->b:Ljava/lang/String;

    .line 48
    iput p4, p0, Lvg6;->c:I

    .line 49
    iput p5, p0, Lvg6;->d:I

    .line 50
    iput p6, p0, Lvg6;->e:F

    .line 51
    iput p7, p0, Lvg6;->f:I

    .line 52
    iput-boolean p8, p0, Lvg6;->g:Z

    .line 53
    iput-wide p9, p0, Lvg6;->h:J

    .line 54
    iput-object p11, p0, Lvg6;->i:Ljava/lang/String;

    .line 55
    iput-object p12, p0, Lvg6;->j:Llu7;

    .line 56
    iput-object p13, p0, Lvg6;->k:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;IIFIZJLjava/lang/String;Llu7;Ljava/lang/String;ILjh2;)V
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v15, v0

    :goto_1
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    goto :goto_2

    :cond_1
    move-object/from16 v15, p13

    goto :goto_1

    :goto_2
    invoke-direct/range {v2 .. v15}, Lvg6;-><init>(JLjava/lang/String;IIFIZJLjava/lang/String;Llu7;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lvg6;->d:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvg6;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lvg6;->a:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvg6;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lvg6;->c:I

    return p0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lvg6;->h:J

    return-wide v0
.end method

.method public final g()F
    .locals 0

    iget p0, p0, Lvg6;->e:F

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lvg6;->f:I

    return p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvg6;->k:Ljava/lang/String;

    return-void
.end method
