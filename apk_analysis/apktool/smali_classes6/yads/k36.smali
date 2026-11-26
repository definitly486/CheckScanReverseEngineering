.class public final Lyads/k36;
.super Lyads/xk5;
.source "SourceFile"


# instance fields
.field public final m:Lyads/os4;

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Ljava/lang/String;

.field public final r:F

.field public final s:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    invoke-direct {p0}, Lyads/xk5;-><init>()V

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/k36;->m:Lyads/os4;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    aget-byte v5, p1, v0

    iput v5, p0, Lyads/k36;->o:I

    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lyads/k36;->p:I

    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v0}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Lyads/k36;->q:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lyads/k36;->s:I

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lyads/k36;->n:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f733333    # 0.95f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lyads/k36;->r:F

    return-void

    :cond_3
    iput v1, p0, Lyads/k36;->r:F

    return-void

    :cond_4
    iput v3, p0, Lyads/k36;->o:I

    const/4 p1, -0x1

    iput p1, p0, Lyads/k36;->p:I

    iput-object v2, p0, Lyads/k36;->q:Ljava/lang/String;

    iput-boolean v3, p0, Lyads/k36;->n:Z

    iput v1, p0, Lyads/k36;->r:F

    iput p1, p0, Lyads/k36;->s:I

    return-void
.end method

.method public static a(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 440
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 441
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 442
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 443
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 444
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final a([BIZ)Lyads/mt5;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lyads/k36;->m:Lyads/os4;

    move-object/from16 v3, p1

    iput-object v3, v2, Lyads/os4;->a:[B

    iput v1, v2, Lyads/os4;->c:I

    const/4 v3, 0x0

    iput v3, v2, Lyads/os4;->b:I

    const-string v4, "Unexpected subtitle format."

    const/4 v5, 0x2

    if-lt v1, v5, :cond_10

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v1

    const/16 v6, 0x8

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget v7, v2, Lyads/os4;->c:I

    iget v8, v2, Lyads/os4;->b:I

    sub-int/2addr v7, v8

    if-lt v7, v5, :cond_2

    iget-object v7, v2, Lyads/os4;->a:[B

    aget-byte v9, v7, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    const v8, 0xfeff

    if-eq v7, v8, :cond_1

    const v8, 0xfffe

    if-ne v7, v8, :cond_2

    :cond_1
    sget-object v7, Lyads/az;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1, v7}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v7, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1, v7}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lyads/l36;->c:Lyads/l36;

    return-object v0

    :cond_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v8, v0, Lyads/k36;->o:I

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/4 v10, 0x0

    const/high16 v12, 0xff0000

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lyads/k36;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v1, v0, Lyads/k36;->p:I

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const v8, 0xff0021

    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    and-int/lit16 v9, v1, 0xff

    shl-int/lit8 v9, v9, 0x18

    ushr-int/2addr v1, v6

    or-int/2addr v1, v9

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v9, v3, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget-object v1, v0, Lyads/k36;->q:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v9, "sans-serif"

    if-eq v1, v9, :cond_5

    new-instance v9, Landroid/text/style/TypefaceSpan;

    invoke-direct {v9, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v3, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget v1, v0, Lyads/k36;->r:F

    :goto_1
    iget-object v2, v0, Lyads/k36;->m:Lyads/os4;

    iget v8, v2, Lyads/os4;->c:I

    iget v13, v2, Lyads/os4;->b:I

    sub-int/2addr v8, v13

    if-lt v8, v6, :cond_f

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v2

    iget-object v8, v0, Lyads/k36;->m:Lyads/os4;

    invoke-virtual {v8}, Lyads/os4;->a()I

    move-result v8

    const v9, 0x7374796c

    if-ne v8, v9, :cond_b

    iget-object v8, v0, Lyads/k36;->m:Lyads/os4;

    iget v9, v8, Lyads/os4;->c:I

    iget v10, v8, Lyads/os4;->b:I

    sub-int/2addr v9, v10

    if-lt v9, v5, :cond_a

    invoke-virtual {v8}, Lyads/os4;->p()I

    move-result v14

    move v15, v3

    :goto_2
    if-ge v15, v14, :cond_e

    iget-object v8, v0, Lyads/k36;->m:Lyads/os4;

    iget v9, v8, Lyads/os4;->c:I

    iget v10, v8, Lyads/os4;->b:I

    sub-int/2addr v9, v10

    const/16 v10, 0xc

    if-lt v9, v10, :cond_9

    invoke-virtual {v8}, Lyads/os4;->p()I

    move-result v10

    invoke-virtual {v8}, Lyads/os4;->p()I

    move-result v9

    iget v11, v8, Lyads/os4;->b:I

    add-int/2addr v11, v5

    invoke-virtual {v8, v11}, Lyads/os4;->e(I)V

    invoke-virtual {v8}, Lyads/os4;->k()I

    move-result v11

    iget v12, v8, Lyads/os4;->b:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v8, v12}, Lyads/os4;->e(I)V

    invoke-virtual {v8}, Lyads/os4;->a()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const-string v3, "Tx3gDecoder"

    const-string v6, ")."

    if-le v9, v12, :cond_6

    const-string v12, "Truncating styl end ("

    const-string v5, ") to cueText.length() ("

    invoke-static {v9, v12, v5}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    :cond_6
    if-lt v10, v9, :cond_7

    const-string v5, "Ignoring styl with start ("

    const-string v8, ") >= end ("

    invoke-static {v10, v9, v5, v8, v6}, Lln;->c(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v3, v8

    move v8, v11

    move v11, v9

    iget v9, v0, Lyads/k36;->o:I

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lyads/k36;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v5, v0, Lyads/k36;->p:I

    if-eq v3, v5, :cond_8

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v7, v5, v10, v11, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x8

    goto/16 :goto_2

    :cond_9
    new-instance v0, Lyads/ot5;

    invoke-direct {v0, v4}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lyads/ot5;

    invoke-direct {v0, v4}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const v3, 0x74626f78

    if-ne v8, v3, :cond_d

    iget-boolean v3, v0, Lyads/k36;->n:Z

    if-eqz v3, :cond_d

    iget-object v1, v0, Lyads/k36;->m:Lyads/os4;

    iget v3, v1, Lyads/os4;->c:I

    iget v5, v1, Lyads/os4;->b:I

    sub-int/2addr v3, v5

    const/4 v5, 0x2

    if-lt v3, v5, :cond_c

    invoke-virtual {v1}, Lyads/os4;->p()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lyads/k36;->s:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sget v3, Lyads/u56;->a:I

    const v3, 0x3f733333    # 0.95f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_4

    :cond_c
    new-instance v0, Lyads/ot5;

    invoke-direct {v0, v4}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v5, 0x2

    :cond_e
    :goto_4
    iget-object v3, v0, Lyads/k36;->m:Lyads/os4;

    add-int/2addr v13, v2

    invoke-virtual {v3, v13}, Lyads/os4;->e(I)V

    const/4 v3, 0x0

    const/16 v6, 0x8

    goto/16 :goto_1

    :cond_f
    new-instance v0, Lyads/l36;

    move v6, v1

    new-instance v1, Lyads/sb0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, -0x800001

    const/high16 v10, -0x80000000

    const/high16 v11, -0x80000000

    const v12, -0x800001

    const v13, -0x800001

    const v14, -0x800001

    const/4 v15, 0x0

    const/high16 v16, -0x1000000

    const/high16 v17, -0x80000000

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lyads/sb0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    invoke-direct {v0, v1}, Lyads/l36;-><init>(Lyads/sb0;)V

    return-object v0

    :cond_10
    new-instance v0, Lyads/ot5;

    invoke-direct {v0, v4}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw v0
.end method
