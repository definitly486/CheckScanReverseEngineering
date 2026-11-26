.class public final Ldm9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldm9$a;,
        Ldm9$b;,
        Ldm9$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static b(Ldm9$b;Ljava/nio/ByteBuffer;I)V
    .locals 5

    iget v0, p0, Ldm9$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldm9$b;->c:Ljava/nio/ByteBuffer;

    iget v1, p0, Ldm9$b;->d:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p2, p0, Ldm9$b;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    mul-int v3, v2, v1

    iget v4, p0, Ldm9$b;->a:I

    invoke-static {v0, v3, v4}, Ldm9;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "use removePaddingCompact with pixelStride == 1"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroidx/camera/core/ImageProxy;Ljava/nio/ByteBuffer;)Ldm9$a;
    .locals 18

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v4}, Ldm9;->d(IILandroidx/camera/core/ImageProxy$PlaneProxy;)Ldm9$b;

    move-result-object v4

    div-int/lit8 v5, v0, 0x2

    div-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v8}, Ldm9;->d(IILandroidx/camera/core/ImageProxy$PlaneProxy;)Ldm9$b;

    move-result-object v8

    iget v9, v8, Ldm9$b;->e:I

    const/4 v10, 0x2

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v2}, Ldm9;->d(IILandroidx/camera/core/ImageProxy$PlaneProxy;)Ldm9$b;

    move-result-object v2

    iget-object v5, v2, Ldm9$b;->c:Ljava/nio/ByteBuffer;

    iget v6, v8, Ldm9$b;->d:I

    iget v11, v2, Ldm9$b;->d:I

    iget v12, v2, Ldm9$b;->e:I

    iget v13, v4, Ldm9$b;->e:I

    if-ne v13, v7, :cond_c

    if-ne v9, v12, :cond_b

    if-ne v6, v11, :cond_b

    const/4 v11, 0x0

    if-eq v9, v7, :cond_1

    if-ne v9, v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Supported pixel strides for U and V planes are 1 and 2"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v11

    :cond_1
    :goto_0
    if-ne v9, v7, :cond_2

    sget-object v12, Ldm9$c;->YUV_I420:Ldm9$c;

    goto :goto_1

    :cond_2
    sget-object v12, Ldm9$c;->YUV_NV21:Ldm9$c;

    :goto_1
    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v10

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-lt v1, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v1, v4, Ldm9$b;->a:I

    iget v13, v4, Ldm9$b;->b:I

    mul-int/2addr v13, v1

    iget v14, v8, Ldm9$b;->a:I

    iget v15, v8, Ldm9$b;->b:I

    move-object/from16 p0, v11

    iget-object v11, v8, Ldm9$b;->c:Ljava/nio/ByteBuffer;

    mul-int v16, v14, v15

    move/from16 v17, v7

    iget v7, v4, Ldm9$b;->d:I

    if-le v7, v1, :cond_5

    invoke-static {v4, v0, v3}, Ldm9;->b(Ldm9$b;Ljava/nio/ByteBuffer;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v4, Ldm9$b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_4
    sget-object v1, Ldm9$c;->YUV_I420:Ldm9$c;

    if-ne v12, v1, :cond_7

    if-le v6, v14, :cond_6

    invoke-static {v8, v0, v13}, Ldm9;->b(Ldm9$b;Ljava/nio/ByteBuffer;I)V

    add-int v13, v13, v16

    invoke-static {v2, v0, v13}, Ldm9;->b(Ldm9$b;Ljava/nio/ByteBuffer;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int v13, v13, v16

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_7
    mul-int/2addr v14, v10

    if-le v6, v14, :cond_a

    if-ne v9, v10, :cond_9

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v15, v15, -0x1

    :goto_5
    if-ge v3, v15, :cond_8

    mul-int v1, v3, v6

    invoke-static {v5, v1, v14}, Ldm9;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    mul-int/2addr v15, v6

    add-int/lit8 v15, v15, -0x1

    invoke-static {v11, v15, v14}, Ldm9;->a(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_9
    const-string v0, "use removePaddingNotCompact pixelStride == 2"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object p0

    :cond_a
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v1, Ldm9$a;

    invoke-direct {v1, v12, v0}, Ldm9$a;-><init>(Ldm9$c;Ljava/nio/ByteBuffer;)V

    return-object v1

    :cond_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "U and V planes must have the same pixel and row strides but got pixel=%d row=%d for U and pixel=%d and row=%d for V"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move/from16 v17, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pixel stride for Y plane must be 1 but got %d instead"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static d(IILandroidx/camera/core/ImageProxy$PlaneProxy;)Ldm9$b;
    .locals 6

    new-instance v0, Ldm9$b;

    invoke-interface {p2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    move-result v4

    invoke-interface {p2}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    move-result v5

    move v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ldm9$b;-><init>(Ljava/nio/ByteBuffer;IIII)V

    return-object v0
.end method
