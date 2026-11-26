.class public Ld31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcm1;
.implements Lu39;
.implements Lrxa;


# static fields
.field public static final c:Lbh8;

.field public static final d:[I

.field public static final e:Ld31;

.field public static final synthetic f:Ld31;

.field public static final synthetic g:Ld31;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh8;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld31;->c:Lbh8;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ld31;->d:[I

    new-instance v0, Ld31;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ld31;-><init>(I)V

    sput-object v0, Ld31;->e:Ld31;

    new-instance v0, Ld31;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ld31;-><init>(I)V

    sput-object v0, Ld31;->f:Ld31;

    new-instance v0, Ld31;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ld31;-><init>(I)V

    sput-object v0, Ld31;->g:Ld31;

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld31;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final n(Lne4;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lxk1;

    invoke-interface {p0}, Lxk1;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final o(Lne4;)Ljava/lang/Class;
    .locals 2

    check-cast p0, Lxk1;

    invoke-interface {p0}, Lxk1;->c()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    return-object p0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    return-object p0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    return-object p0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    return-object p0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    return-object p0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    return-object p0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    return-object p0

    :cond_9
    const-class p0, Ljava/lang/Double;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static p(Ljava/util/Comparator;Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lhi5;->b:Lhi5;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lt48;

    if-eqz v0, :cond_2

    check-cast p1, Lt48;

    invoke-interface {p1}, Lt48;->comparator()Ljava/util/Comparator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final q(JJ)Lpp2;
    .locals 25

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_11

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    goto/16 :goto_7

    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v10, v2, v8

    const-wide/16 v11, 0x1

    if-nez v10, :cond_2

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v10, v0, v13

    if-nez v10, :cond_1

    :goto_0
    move-wide v13, v4

    goto :goto_1

    :cond_1
    neg-long v13, v0

    goto :goto_1

    :cond_2
    cmp-long v10, v2, v11

    if-nez v10, :cond_3

    move-wide v13, v0

    goto :goto_1

    :cond_3
    mul-long v13, v0, v2

    div-long v15, v13, v2

    cmp-long v10, v15, v0

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    cmp-long v10, v13, v4

    const-wide/32 v15, 0x3b9aca00

    if-eqz v10, :cond_5

    new-instance v0, Lpp2;

    div-long v1, v13, v15

    rem-long/2addr v13, v15

    invoke-direct {v0, v1, v2, v13, v14}, Lpp2;-><init>(JJ)V

    return-object v0

    :cond_5
    cmp-long v10, v2, v15

    if-nez v10, :cond_6

    new-instance v2, Lpp2;

    invoke-direct {v2, v0, v1, v4, v5}, Lpp2;-><init>(JJ)V

    return-object v2

    :cond_6
    cmp-long v10, v0, v15

    if-nez v10, :cond_7

    new-instance v0, Lpp2;

    invoke-direct {v0, v2, v3, v4, v5}, Lpp2;-><init>(JJ)V

    return-object v0

    :cond_7
    if-ltz v6, :cond_8

    move-wide v13, v4

    goto :goto_2

    :cond_8
    move-wide v13, v8

    :goto_2
    if-ltz v7, :cond_9

    move-wide v8, v4

    :cond_9
    const-wide v6, 0xffffffffL

    and-long v17, v0, v6

    const/16 v10, 0x20

    shr-long/2addr v0, v10

    and-long/2addr v0, v6

    and-long v19, v2, v6

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    mul-long v21, v13, v2

    mul-long v23, v0, v8

    add-long v23, v23, v21

    mul-long v13, v13, v19

    mul-long v21, v0, v2

    add-long v21, v21, v13

    mul-long v8, v8, v17

    add-long v8, v8, v21

    mul-long v0, v0, v19

    mul-long v2, v2, v17

    mul-long v17, v17, v19

    and-long v13, v17, v6

    and-long v19, v0, v6

    and-long v21, v2, v6

    add-long v19, v19, v21

    shr-long v17, v17, v10

    and-long v17, v17, v6

    add-long v19, v19, v17

    and-long v17, v19, v6

    shr-long v19, v19, v10

    and-long v19, v19, v6

    and-long v21, v8, v6

    add-long v19, v19, v21

    shr-long/2addr v0, v10

    and-long/2addr v0, v6

    add-long v19, v19, v0

    shr-long v0, v2, v10

    and-long/2addr v0, v6

    add-long v19, v19, v0

    and-long v0, v19, v6

    shr-long v2, v19, v10

    and-long/2addr v2, v6

    shr-long/2addr v8, v10

    and-long/2addr v8, v6

    add-long/2addr v2, v8

    and-long v6, v23, v6

    add-long/2addr v2, v6

    shl-long v6, v17, v10

    or-long/2addr v6, v13

    shl-long/2addr v2, v10

    or-long/2addr v0, v2

    const/16 v2, 0x3f

    shr-long v8, v0, v2

    and-long/2addr v8, v11

    cmp-long v3, v8, v11

    const/4 v9, -0x1

    if-nez v3, :cond_a

    move v3, v9

    goto :goto_3

    :cond_a
    const/4 v3, 0x1

    :goto_3
    if-ne v3, v9, :cond_b

    not-long v6, v6

    add-long/2addr v6, v11

    not-long v0, v0

    cmp-long v10, v6, v4

    if-nez v10, :cond_b

    add-long/2addr v0, v11

    :cond_b
    const/16 v10, 0x7f

    move-wide v13, v4

    move-wide/from16 v17, v13

    :goto_4
    if-ge v9, v10, :cond_10

    const/16 p0, 0x1

    const/16 v8, 0x40

    if-ge v10, v8, :cond_c

    shr-long v19, v6, v10

    :goto_5
    and-long v19, v19, v11

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v10, -0x40

    shr-long v19, v0, v8

    goto :goto_5

    :goto_6
    shl-long v17, v17, p0

    or-long v17, v17, v19

    cmp-long v8, v17, v15

    if-gez v8, :cond_d

    cmp-long v8, v17, v4

    if-gez v8, :cond_e

    :cond_d
    sub-long v17, v17, v15

    if-ge v10, v2, :cond_f

    shl-long v19, v11, v10

    or-long v13, v13, v19

    :cond_e
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The result of a multiplication followed by division overflows a long"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lpp2;

    int-to-long v1, v3

    mul-long/2addr v13, v1

    mul-long v1, v1, v17

    invoke-direct {v0, v13, v14, v1, v2}, Lpp2;-><init>(JJ)V

    return-object v0

    :cond_11
    :goto_7
    new-instance v0, Lpp2;

    invoke-direct {v0, v4, v5, v4, v5}, Lpp2;-><init>(JJ)V

    return-object v0
.end method

.method public static final r(Llz7;Lnl3;Lnl3;)Ld18;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld18;

    invoke-direct {v0, p1, p2}, Ld18;-><init>(Lnl3;Lnl3;)V

    invoke-virtual {p0, v0}, Llz7;->a(Ls08;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(Lqu1;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1}, Lvs3;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(Lyd2;)V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(Lxc2;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Ldm1;)V
    .locals 0

    return-void
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j(Lh88;)V
    .locals 0

    return-void
.end method

.method public k(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p2, p0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p3, p0

    int-to-float p0, p3

    mul-float/2addr p1, p0

    add-float/2addr p1, p2

    float-to-int p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public l(Ly54;)V
    .locals 0

    const-string p0, "noop"

    iget-object p1, p1, Ly54;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Ld31;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzap()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzA()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
