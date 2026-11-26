.class public final Lyads/rt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/en;


# instance fields
.field public final a:Lyads/k55;

.field public final b:I


# direct methods
.method public constructor <init>(ILyads/k55;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/rt3;->b:I

    iput-object p2, p0, Lyads/rt3;->a:Lyads/k55;

    return-void
.end method

.method public static a(ILyads/os4;)Lyads/rt3;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "initialCapacity"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lyads/h20;->a(ILjava/lang/String;)I

    new-array v1, v2, [Ljava/lang/Object;

    iget v3, v0, Lyads/os4;->c:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    move v6, v4

    :goto_0
    iget v7, v0, Lyads/os4;->c:I

    iget v8, v0, Lyads/os4;->b:I

    sub-int/2addr v7, v8

    const/16 v8, 0x8

    if-le v7, v8, :cond_16

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v7

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v9

    iget v10, v0, Lyads/os4;->b:I

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Lyads/os4;->d(I)V

    const v9, 0x5453494c

    const/4 v11, 0x2

    const v12, 0x68727473

    const/4 v13, 0x1

    if-ne v7, v9, :cond_0

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v7

    invoke-static {v7, v0}, Lyads/rt3;->a(ILyads/os4;)Lyads/rt3;

    move-result-object v7

    goto/16 :goto_5

    :cond_0
    const v9, 0x66727473

    const/4 v14, 0x0

    if-eq v7, v9, :cond_4

    const v9, 0x68697661

    if-eq v7, v9, :cond_3

    if-eq v7, v12, :cond_2

    const v8, 0x6e727473

    if-eq v7, v8, :cond_1

    :goto_1
    move-object v7, v14

    goto/16 :goto_5

    :cond_1
    new-instance v7, Lyads/cs5;

    iget v8, v0, Lyads/os4;->c:I

    iget v9, v0, Lyads/os4;->b:I

    sub-int/2addr v8, v9

    sget-object v9, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8, v9}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lyads/cs5;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v15

    iget v7, v0, Lyads/os4;->b:I

    add-int/lit8 v7, v7, 0xc

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->c()I

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v16

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v17

    iget v7, v0, Lyads/os4;->b:I

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v18

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v19

    iget v7, v0, Lyads/os4;->b:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    new-instance v14, Lyads/jn;

    invoke-direct/range {v14 .. v19}, Lyads/jn;-><init>(IIIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v7

    iget v9, v0, Lyads/os4;->b:I

    add-int/2addr v9, v8

    invoke-virtual {v0, v9}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v8

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v9

    iget v14, v0, Lyads/os4;->b:I

    add-int/2addr v14, v2

    invoke-virtual {v0, v14}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->c()I

    iget v14, v0, Lyads/os4;->b:I

    add-int/lit8 v14, v14, 0xc

    invoke-virtual {v0, v14}, Lyads/os4;->e(I)V

    new-instance v14, Lyads/in;

    invoke-direct {v14, v7, v8, v9}, Lyads/in;-><init>(III)V

    goto :goto_1

    :cond_4
    const-string v7, "StreamFormatChunk"

    if-ne v5, v11, :cond_6

    iget v8, v0, Lyads/os4;->b:I

    add-int/2addr v8, v2

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v8

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v9

    iget v15, v0, Lyads/os4;->b:I

    add-int/2addr v15, v2

    invoke-virtual {v0, v15}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    move-object v2, v14

    goto :goto_3

    :sswitch_0
    const-string v16, "video/mjpeg"

    :goto_2
    move-object/from16 v2, v16

    goto :goto_3

    :sswitch_1
    const-string v16, "video/mp43"

    goto :goto_2

    :sswitch_2
    const-string v16, "video/mp42"

    goto :goto_2

    :sswitch_3
    const-string v16, "video/avc"

    goto :goto_2

    :sswitch_4
    const-string v16, "video/mp4v-es"

    goto :goto_2

    :goto_3
    if-nez v2, :cond_5

    const-string v2, "Ignoring track with unsupported compression "

    invoke-static {v15, v2, v7}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    new-instance v7, Lyads/uz2;

    invoke-direct {v7}, Lyads/uz2;-><init>()V

    iput v8, v7, Lyads/uz2;->p:I

    iput v9, v7, Lyads/uz2;->q:I

    iput-object v2, v7, Lyads/uz2;->k:Ljava/lang/String;

    new-instance v2, Lyads/zr5;

    new-instance v8, Lyads/vz2;

    invoke-direct {v8, v7}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-direct {v2, v8}, Lyads/zr5;-><init>(Lyads/vz2;)V

    move-object v7, v2

    goto/16 :goto_5

    :cond_6
    if-ne v5, v13, :cond_f

    invoke-virtual {v0}, Lyads/os4;->f()I

    move-result v2

    const-string v8, "audio/raw"

    const-string v9, "audio/mp4a-latm"

    if-eq v2, v13, :cond_b

    const/16 v15, 0x55

    if-eq v2, v15, :cond_a

    const/16 v15, 0xff

    if-eq v2, v15, :cond_9

    const/16 v15, 0x2000

    if-eq v2, v15, :cond_8

    const/16 v15, 0x2001

    if-eq v2, v15, :cond_7

    move-object v15, v14

    goto :goto_4

    :cond_7
    const-string v15, "audio/vnd.dts"

    goto :goto_4

    :cond_8
    const-string v15, "audio/ac3"

    goto :goto_4

    :cond_9
    move-object v15, v9

    goto :goto_4

    :cond_a
    const-string v15, "audio/mpeg"

    goto :goto_4

    :cond_b
    move-object v15, v8

    :goto_4
    if-nez v15, :cond_c

    const-string v8, "Ignoring track with unsupported format tag "

    invoke-static {v2, v8, v7}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lyads/os4;->f()I

    move-result v2

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v7

    iget v14, v0, Lyads/os4;->b:I

    add-int/lit8 v14, v14, 0x6

    invoke-virtual {v0, v14}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v14

    invoke-static {v14}, Lyads/u56;->b(I)I

    move-result v14

    invoke-virtual {v0}, Lyads/os4;->f()I

    move-result v11

    new-array v13, v11, [B

    invoke-virtual {v0, v13, v4, v11}, Lyads/os4;->a([BII)V

    new-instance v4, Lyads/uz2;

    invoke-direct {v4}, Lyads/uz2;-><init>()V

    iput-object v15, v4, Lyads/uz2;->k:Ljava/lang/String;

    iput v2, v4, Lyads/uz2;->x:I

    iput v7, v4, Lyads/uz2;->y:I

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v14, :cond_d

    iput v14, v4, Lyads/uz2;->z:I

    :cond_d
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-lez v11, :cond_e

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    iput-object v2, v4, Lyads/uz2;->m:Ljava/util/List;

    :cond_e
    new-instance v7, Lyads/zr5;

    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v4}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-direct {v7, v2}, Lyads/zr5;-><init>(Lyads/vz2;)V

    goto :goto_5

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring strf box for unsupported track type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lyads/u56;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-eqz v7, :cond_15

    invoke-interface {v7}, Lyads/en;->getType()I

    move-result v2

    if-ne v2, v12, :cond_13

    move-object v2, v7

    check-cast v2, Lyads/jn;

    iget v4, v2, Lyads/jn;->a:I

    const v5, 0x73646976

    if-eq v4, v5, :cond_12

    const v5, 0x73647561

    if-eq v4, v5, :cond_11

    const v5, 0x73747874

    if-eq v4, v5, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found unsupported streamType fourCC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lyads/jn;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AviStreamHeaderChunk"

    invoke-static {v4, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_6

    :cond_10
    const/4 v5, 0x3

    goto :goto_6

    :cond_11
    const/4 v5, 0x1

    goto :goto_6

    :cond_12
    const/4 v5, 0x2

    :cond_13
    :goto_6
    add-int/lit8 v2, v6, 0x1

    array-length v4, v1

    if-ge v4, v2, :cond_14

    array-length v4, v1

    invoke-static {v4, v2}, Lyads/he3;->a(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_14
    aput-object v7, v1, v6

    move v6, v2

    :cond_15
    invoke-virtual {v0, v10}, Lyads/os4;->e(I)V

    invoke-virtual {v0, v3}, Lyads/os4;->d(I)V

    const/4 v2, 0x4

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_16
    new-instance v0, Lyads/rt3;

    invoke-static {v6, v1}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object v1

    move/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lyads/rt3;-><init>(ILyads/k55;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30355844 -> :sswitch_4
        0x31435641 -> :sswitch_3
        0x31637661 -> :sswitch_3
        0x3234504d -> :sswitch_2
        0x3334504d -> :sswitch_1
        0x34363248 -> :sswitch_3
        0x34504d46 -> :sswitch_4
        0x44495633 -> :sswitch_4
        0x44495658 -> :sswitch_4
        0x47504a4d -> :sswitch_0
        0x58564944 -> :sswitch_4
        0x64697678 -> :sswitch_4
        0x67706a6d -> :sswitch_0
        0x78766964 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lyads/en;
    .locals 2

    .line 524
    iget-object p0, p0, Lyads/rt3;->a:Lyads/k55;

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, v0}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object p0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lyads/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/g;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/en;

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lyads/rt3;->b:I

    return p0
.end method
