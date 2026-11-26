.class public final Lyads/vb0;
.super Lyads/ur;
.source "SourceFile"


# instance fields
.field public final e:Lnl3;

.field public final f:C

.field public final g:Ljava/util/List;

.field public h:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Lnl3;)V
    .locals 4

    new-instance v0, Lyads/sr;

    const-string v1, ""

    const/4 v2, 0x0

    sget-object v3, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, v3, v2}, Lyads/sr;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lyads/ur;-><init>(Lyads/sr;)V

    iput-object p2, p0, Lyads/vb0;->e:Lnl3;

    const/16 p2, 0xa4

    iput-char p2, p0, Lyads/vb0;->f:C

    const/16 p2, 0x2e

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Character;

    move-result-object p2

    invoke-static {p2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lyads/vb0;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/vb0;->a(Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    return-void
.end method

.method public static a(Lyads/aw5;I)Z
    .locals 1

    .line 605
    iget v0, p0, Lyads/aw5;->a:I

    if-gt v0, p1, :cond_0

    .line 606
    iget p0, p0, Lyads/aw5;->b:I

    add-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 7

    .line 607
    instance-of v0, p1, Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/text/DecimalFormat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 608
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 611
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 612
    iget-char v6, p0, Lyads/vb0;->f:C

    if-eq v5, v6, :cond_1

    .line 613
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 614
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 615
    invoke-static {p0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 616
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0xa0

    invoke-static {v3, v1, v4}, Lra8;->z(CLjava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyads/zv5;->a(Ljava/lang/String;Ljava/lang/String;)Lyads/aw5;

    move-result-object v2

    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    add-int/2addr v5, v6

    if-ltz v5, :cond_2

    :goto_0
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_0

    goto :goto_2

    :cond_0
    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    move v5, v6

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    if-ltz v4, :cond_5

    :goto_3
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_3

    goto :goto_5

    :cond_3
    if-gez v7, :cond_4

    goto :goto_4

    :cond_4
    move v4, v7

    goto :goto_3

    :cond_5
    :goto_4
    move v4, v6

    :goto_5
    const/4 v8, 0x1

    if-ne v5, v4, :cond_7

    if-ne v5, v6, :cond_6

    if-ne v4, v6, :cond_6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    move v4, v8

    :goto_7
    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_8

    invoke-static {v2, v9}, Lyads/vb0;->a(Lyads/aw5;I)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_9
    move v9, v6

    :goto_9
    iget v10, v2, Lyads/aw5;->b:I

    if-ne v10, v8, :cond_a

    iget v10, v2, Lyads/aw5;->c:I

    if-nez v10, :cond_a

    iget v10, v2, Lyads/aw5;->a:I

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    iget-object v11, v0, Lyads/vb0;->g:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, v2, Lyads/aw5;->a:I

    goto :goto_a

    :cond_a
    move v10, v6

    :goto_a
    iget-object v11, v0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    invoke-virtual {v11}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v11

    if-eq v9, v6, :cond_d

    move v12, v9

    move v13, v11

    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_c

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v2, v12}, Lyads/vb0;->a(Lyads/aw5;I)Z

    move-result v14

    if-nez v14, :cond_b

    add-int/lit8 v13, v13, -0x1

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_c
    move/from16 v16, v8

    goto :goto_e

    :cond_d
    move/from16 v16, v8

    move v13, v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v12, v8, :cond_10

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v17, v14, 0x1

    invoke-static {v2, v14}, Lyads/vb0;->a(Lyads/aw5;I)Z

    move-result v14

    if-ne v8, v5, :cond_e

    move/from16 v15, v16

    goto :goto_d

    :cond_e
    if-nez v14, :cond_f

    if-eqz v15, :cond_f

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v13, v13, -0x1

    :cond_f
    :goto_d
    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v17

    goto :goto_c

    :cond_10
    :goto_e
    invoke-static {v1, v5}, Lta8;->E(Ljava/lang/CharSequence;C)Z

    move-result v8

    if-nez v8, :cond_12

    if-eq v10, v6, :cond_11

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    goto :goto_10

    :cond_12
    :goto_f
    move/from16 v8, v16

    :goto_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    :goto_11
    if-ltz v14, :cond_1a

    const/16 v17, 0x0

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v6, v11, :cond_13

    move/from16 v6, v16

    goto :goto_12

    :cond_13
    move/from16 v6, v17

    :goto_12
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-static {v2, v14}, Lyads/vb0;->a(Lyads/aw5;I)Z

    move-result v6

    if-eqz v6, :cond_15

    if-nez v15, :cond_15

    if-eqz v8, :cond_15

    if-lez v13, :cond_14

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, -0x1

    :cond_14
    :goto_13
    const/4 v1, -0x1

    goto :goto_15

    :cond_15
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_16
    const/4 v1, -0x1

    if-eqz v6, :cond_17

    if-ne v9, v1, :cond_17

    if-ne v14, v10, :cond_17

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_14
    move/from16 v15, v16

    goto :goto_15

    :cond_17
    if-eqz v6, :cond_19

    if-ne v7, v5, :cond_19

    if-eq v9, v14, :cond_18

    if-ne v9, v1, :cond_19

    :cond_18
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v14

    goto :goto_14

    :cond_19
    :goto_15
    add-int/lit8 v14, v14, -0x1

    move v6, v1

    move-object/from16 v1, p2

    goto :goto_11

    :cond_1a
    move v1, v6

    const/16 v17, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v7, v17

    :goto_16
    if-ge v7, v6, :cond_1c

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v9

    if-eq v8, v9, :cond_1b

    move v6, v7

    goto :goto_17

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_1c
    move v6, v1

    :goto_17
    if-gtz v6, :cond_1d

    goto :goto_18

    :cond_1d
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    if-ne v1, v7, :cond_1e

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v5}, Lua8;->h0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_18

    :cond_1e
    invoke-static {v6, v5}, Lua8;->h0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_18
    iget-object v1, v0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    invoke-static {v5, v3}, Lta8;->Z(Ljava/lang/CharSequence;C)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_1f
    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_20
    move-object v3, v5

    :goto_19
    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_21
    invoke-virtual {v0, v2}, Lyads/ur;->a(Lyads/aw5;)V

    if-eqz v4, :cond_22

    invoke-virtual {v0, v1}, Lyads/vb0;->a(Ljava/lang/Number;)V

    :cond_22
    const/4 v1, 0x0

    move/from16 v3, v17

    invoke-virtual {v0, v5, v3, v1}, Lyads/ur;->a(Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, v2, Lyads/aw5;->a:I

    if-le v1, v3, :cond_24

    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, v2, Lyads/aw5;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    if-ne v1, v2, :cond_24

    if-eqz p1, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1b

    :cond_23
    iget v1, v0, Lyads/ur;->d:I

    goto :goto_1b

    :cond_24
    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz p1, :cond_25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1a

    :cond_25
    iget v3, v0, Lyads/ur;->d:I

    :goto_1a
    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_1b
    invoke-virtual {v0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_26

    move v1, v2

    :cond_26
    iput v1, v0, Lyads/ur;->d:I

    return-void
.end method

.method public final a(Ljava/lang/Number;)V
    .locals 7

    .line 588
    iget-object v0, p0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 590
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 591
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 592
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 594
    new-instance v0, Lyads/tr;

    const-string v2, "\\d"

    const/16 v3, 0x30

    invoke-direct {v0, v4, v2, v3}, Lyads/tr;-><init>(CLjava/lang/String;C)V

    .line 595
    new-instance v2, Lyads/tr;

    .line 596
    invoke-virtual {p0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    .line 597
    invoke-virtual {p0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    invoke-virtual {p0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    .line 599
    invoke-direct {v2, v3, v4, v5}, Lyads/tr;-><init>(CLjava/lang/String;C)V

    filled-new-array {v0, v2}, [Lyads/tr;

    move-result-object v0

    .line 600
    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 601
    new-instance v2, Lyads/sr;

    invoke-virtual {p0}, Lyads/ur;->c()Lyads/sr;

    move-result-object v3

    invoke-virtual {v3}, Lyads/sr;->a()Z

    move-result v3

    invoke-direct {v2, p1, v0, v3}, Lyads/sr;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0, v2, v1}, Lyads/ur;->a(Lyads/sr;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 603
    :cond_0
    invoke-virtual {p0, v0}, Lyads/vb0;->a(Ljava/lang/Number;)V

    .line 604
    invoke-super {p0, p1}, Lyads/ur;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Locale;)V
    .locals 5

    .line 574
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/rr;

    .line 577
    instance-of v4, v3, Lyads/pr;

    if-eqz v4, :cond_0

    .line 578
    check-cast v3, Lyads/pr;

    .line 579
    iget-object v3, v3, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    const/16 v2, 0x2e

    .line 583
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/vb0;->a(Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    .line 585
    invoke-virtual {p0}, Lyads/vb0;->e()Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p1

    .line 586
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0, p1}, Lyads/vb0;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/regex/PatternSyntaxException;)V
    .locals 0

    .line 617
    iget-object p0, p0, Lyads/vb0;->e:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()Ljava/text/DecimalFormatSymbols;
    .locals 0

    iget-object p0, p0, Lyads/vb0;->h:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    return-object p0
.end method
