.class public final Lp95;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp95$a;
    }
.end annotation


# instance fields
.field public final a:Lsy6;


# direct methods
.method public constructor <init>(Lsy6;Lnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp95;->a:Lsy6;

    return-void
.end method


# virtual methods
.method public final a(Lb24;Lo95$b;Lt18;Lmd7;)Lo95$c;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lb24;->i:Lsx0;

    iget-object v4, v0, Lb24;->q:Lre6;

    invoke-virtual {v3}, Lsx0;->a()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v3, p0, Lp95;->a:Lsy6;

    invoke-virtual {v3}, Lsy6;->c()Lo95;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Lo95;->a(Lo95$b;)Lo95$c;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_18

    iget-object v6, v3, Lo95$c;->a:Lx04;

    instance-of v7, v6, Ldj0;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Ldj0;

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_1
    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, v7, Ldj0;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-nez v7, :cond_4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_4
    invoke-static {v0, v7}, Lnj;->b(Lb24;Landroid/graphics/Bitmap$Config;)Z

    move-result v7

    :goto_2
    if-nez v7, :cond_5

    goto/16 :goto_f

    :cond_5
    iget-object v1, v1, Lo95$b;->b:Ljava/util/Map;

    const-string v7, "coil#size"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lt18;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_e

    :cond_6
    iget-object v1, v3, Lo95$c;->b:Ljava/util/Map;

    const-string v7, "coil#is_sampled"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_9

    sget-object v1, Lt18;->c:Lt18;

    invoke-static {v2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lre6;->INEXACT:Lre6;

    if-ne v4, v1, :cond_9

    goto/16 :goto_e

    :cond_9
    invoke-interface {v6}, Lx04;->getWidth()I

    move-result v1

    invoke-interface {v6}, Lx04;->getHeight()I

    move-result v7

    instance-of v6, v6, Ldj0;

    if-eqz v6, :cond_a

    sget-object v6, Ld24;->b:Lb53$b;

    invoke-static {v0, v6}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt18;

    goto :goto_5

    :cond_a
    sget-object v0, Lt18;->c:Lt18;

    :goto_5
    iget-object v6, v2, Lt18;->a:Lhn2;

    instance-of v9, v6, Lhn2$a;

    const v10, 0x7fffffff

    if-eqz v9, :cond_b

    check-cast v6, Lhn2$a;

    iget v6, v6, Lhn2$a;->a:I

    goto :goto_6

    :cond_b
    move v6, v10

    :goto_6
    iget-object v9, v0, Lt18;->a:Lhn2;

    instance-of v11, v9, Lhn2$a;

    if-eqz v11, :cond_c

    check-cast v9, Lhn2$a;

    iget v9, v9, Lhn2$a;->a:I

    goto :goto_7

    :cond_c
    move v9, v10

    :goto_7
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v2, v2, Lt18;->b:Lhn2;

    instance-of v9, v2, Lhn2$a;

    if-eqz v9, :cond_d

    check-cast v2, Lhn2$a;

    iget v2, v2, Lhn2$a;->a:I

    goto :goto_8

    :cond_d
    move v2, v10

    :goto_8
    iget-object v0, v0, Lt18;->b:Lhn2;

    instance-of v9, v0, Lhn2$a;

    if-eqz v9, :cond_e

    check-cast v0, Lhn2$a;

    iget v0, v0, Lhn2$a;->a:I

    goto :goto_9

    :cond_e
    move v0, v10

    :goto_9
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v11, v6

    int-to-double v13, v1

    div-double/2addr v11, v13

    int-to-double v13, v0

    int-to-double v8, v7

    div-double/2addr v13, v8

    if-eq v6, v10, :cond_f

    if-eq v0, v10, :cond_f

    move-object/from16 v2, p4

    goto :goto_a

    :cond_f
    sget-object v2, Lmd7;->FIT:Lmd7;

    :goto_a
    sget-object v8, Lp95$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v8, v2

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_12

    if-ne v2, v8, :cond_11

    cmpg-double v2, v11, v13

    if-gez v2, :cond_10

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_b
    const/4 v9, 0x1

    goto :goto_d

    :cond_10
    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_c
    move-wide v11, v13

    goto :goto_b

    :cond_11
    invoke-static {}, Lme0;->e()V

    return-object v5

    :cond_12
    cmpl-double v2, v11, v13

    if-lez v2, :cond_13

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_b

    :cond_13
    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_c

    :goto_d
    if-gt v0, v9, :cond_14

    goto :goto_e

    :cond_14
    sget-object v0, Lp95$a;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eq v0, v9, :cond_16

    if-ne v0, v8, :cond_15

    cmpg-double v0, v11, v1

    if-gtz v0, :cond_18

    goto :goto_e

    :cond_15
    invoke-static {}, Lme0;->e()V

    return-object v5

    :cond_16
    cmpg-double v0, v11, v1

    if-nez v0, :cond_18

    :cond_17
    :goto_e
    return-object v3

    :cond_18
    :goto_f
    return-object v5
.end method

.method public final b(Lb24;Ljava/lang/Object;Lzz5;La13;)Lo95$b;
    .locals 5

    iget-object p4, p1, Lb24;->i:Lsx0;

    iget-object v0, p1, Lb24;->d:Ljava/util/Map;

    sget-object v1, Lsx0;->DISABLED:Lsx0;

    const/4 v2, 0x0

    if-ne p4, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lp95;->a:Lsy6;

    iget-object p0, p0, Lsy6;->d:Lfs1;

    iget-object p0, p0, Lfs1;->c:Ljava/util/List;

    move-object p4, p0

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb36;

    iget-object v4, v3, Lb36;->b:Ljava/lang/Object;

    check-cast v4, Ltf4;

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Lne4;

    invoke-interface {v3, p2}, Lne4;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, p2, p3}, Ltf4;->a(Ljava/lang/Object;Lzz5;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_3

    :goto_2
    return-object v2

    :cond_3
    sget-object p0, Ld24;->a:Lb53$b;

    invoke-static {p1, p0}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object p1, p3, Lzz5;->b:Lt18;

    invoke-virtual {p1}, Lt18;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "coil#size"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lo95$b;

    invoke-direct {p1, v3, p0}, Lo95$b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1

    :cond_4
    new-instance p0, Lo95$b;

    invoke-direct {p0, v3, v0}, Lo95$b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method
