.class public final Lyads/jv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/jv4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/jv4;

    invoke-direct {v0}, Lyads/jv4;-><init>()V

    sput-object v0, Lyads/jv4;->a:Lyads/jv4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.core.configuration.model.PlayBackOptimizationConfig"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "minBufferMs"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "maxBufferMs"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "bufferForPlaybackMs"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "bufferForPlaybackAfterRebufferMs"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "targetBufferBytes"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/jv4;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 6

    sget-object p0, Lz74;->a:Lz74;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v3

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v4, 0x5

    new-array v4, v4, [Ldf4;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 22

    sget-object v0, Lyads/jv4;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v7, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v0, v6, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v1, v0, v5, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v0, v3, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v0, v4, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/16 v4, 0x1f

    move-object/from16 v20, v3

    move/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    :goto_0
    move-object/from16 v21, v2

    goto/16 :goto_3

    :cond_0
    move v14, v6

    move v10, v7

    move-object v2, v8

    move-object v9, v2

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    :goto_1
    if-eqz v14, :cond_7

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v15

    move-object/from16 p0, v8

    const/4 v8, -0x1

    if-eq v15, v8, :cond_6

    if-eqz v15, :cond_5

    if-eq v15, v6, :cond_4

    if-eq v15, v5, :cond_3

    if-eq v15, v3, :cond_2

    if-ne v15, v4, :cond_1

    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v4, v8, v2}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    or-int/lit8 v10, v10, 0x10

    :goto_2
    move-object/from16 v8, p0

    goto :goto_1

    :cond_1
    invoke-static {v15}, Lpg;->h(I)V

    return-object p0

    :cond_2
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v3, v8, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    or-int/lit8 v10, v10, 0x8

    goto :goto_2

    :cond_3
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v5, v8, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/Integer;

    or-int/lit8 v10, v10, 0x4

    goto :goto_2

    :cond_4
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v6, v8, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/Integer;

    or-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_5
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v7, v8, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/lang/Integer;

    or-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p0

    move v14, v7

    goto :goto_1

    :cond_7
    move-object/from16 v20, v9

    move/from16 v16, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    goto :goto_0

    :goto_3
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v15, Lyads/lv4;

    invoke-direct/range {v15 .. v21}, Lyads/lv4;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v15
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/jv4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/lv4;

    sget-object p0, Lyads/jv4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lyads/lv4;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lz74;->a:Lz74;

    iget-object v2, p2, Lyads/lv4;->a:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lyads/lv4;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lz74;->a:Lz74;

    iget-object v2, p2, Lyads/lv4;->b:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lyads/lv4;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lz74;->a:Lz74;

    iget-object v2, p2, Lyads/lv4;->c:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p2, Lyads/lv4;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lz74;->a:Lz74;

    iget-object v2, p2, Lyads/lv4;->d:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x4

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p2, Lyads/lv4;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lz74;->a:Lz74;

    iget-object p2, p2, Lyads/lv4;->e:Ljava/lang/Integer;

    invoke-interface {p1, p0, v0, v1, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
