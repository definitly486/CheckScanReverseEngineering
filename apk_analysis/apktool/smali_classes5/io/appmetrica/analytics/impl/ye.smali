.class public final Lio/appmetrica/analytics/impl/ye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/m8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ce;

.field public final b:Lio/appmetrica/analytics/impl/x3;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

.field public final d:Lio/appmetrica/analytics/impl/Xf;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/Ce;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ce;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/x3;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/x3;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    new-instance v3, Lio/appmetrica/analytics/impl/Xf;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Xf;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/ye;-><init>(Lio/appmetrica/analytics/impl/Ce;Lio/appmetrica/analytics/impl/x3;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;Lio/appmetrica/analytics/impl/Xf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ce;Lio/appmetrica/analytics/impl/x3;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;Lio/appmetrica/analytics/impl/Xf;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ye;->a:Lio/appmetrica/analytics/impl/Ce;

    .line 28
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ye;->b:Lio/appmetrica/analytics/impl/x3;

    .line 29
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ye;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    .line 30
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ye;->d:Lio/appmetrica/analytics/impl/Xf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/xe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;)",
            "Lio/appmetrica/analytics/impl/xe;"
        }
    .end annotation

    .line 458
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/xe;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/xe;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    iget v3, v1, Lio/appmetrica/analytics/impl/xe;->a:I

    iput v3, v2, Lio/appmetrica/analytics/impl/F8;->a:I

    new-instance v3, Lio/appmetrica/analytics/impl/u8;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/u8;-><init>()V

    iput-object v3, v2, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/xe;->b:Lio/appmetrica/analytics/impl/ze;

    new-instance v3, Lio/appmetrica/analytics/impl/s8;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/s8;-><init>()V

    iget-object v4, v1, Lio/appmetrica/analytics/impl/ze;->a:Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lio/appmetrica/analytics/impl/s8;->a:[B

    iget-object v4, v0, Lio/appmetrica/analytics/impl/ye;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/ze;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;->trim(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v4

    iget-object v5, v4, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v3, Lio/appmetrica/analytics/impl/s8;->b:[B

    iget-object v5, v1, Lio/appmetrica/analytics/impl/ze;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v3, Lio/appmetrica/analytics/impl/s8;->e:I

    iget-object v5, v1, Lio/appmetrica/analytics/impl/ze;->d:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v6, v0, Lio/appmetrica/analytics/impl/ye;->a:Lio/appmetrica/analytics/impl/Ce;

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/impl/Ce;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v5

    iget-object v6, v5, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v6, Lio/appmetrica/analytics/impl/w8;

    iput-object v6, v3, Lio/appmetrica/analytics/impl/s8;->c:Lio/appmetrica/analytics/impl/w8;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v2, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iput-object v3, v6, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    const/4 v3, 0x2

    new-array v6, v3, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object v5

    iget-object v1, v1, Lio/appmetrica/analytics/impl/ze;->c:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lio/appmetrica/analytics/impl/ye;->d:Lio/appmetrica/analytics/impl/Xf;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v2, Lio/appmetrica/analytics/impl/F8;->a:I

    new-instance v9, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    iget v9, v9, Lio/appmetrica/analytics/impl/F8;->a:I

    if-eq v8, v9, :cond_1

    iget v8, v2, Lio/appmetrica/analytics/impl/F8;->a:I

    invoke-static {v4, v8}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    iget-object v9, v2, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    if-eqz v9, :cond_2

    invoke-static {v3, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_2
    iget-object v9, v2, Lio/appmetrica/analytics/impl/F8;->c:Lio/appmetrica/analytics/impl/C8;

    if-eqz v9, :cond_3

    const/4 v10, 0x3

    invoke-static {v10, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_3
    iget-object v9, v2, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    const/4 v10, 0x4

    if-eqz v9, :cond_4

    invoke-static {v10, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_4
    iget-object v9, v2, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    if-eqz v9, :cond_5

    const/4 v11, 0x5

    invoke-static {v11, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_5
    iget-object v9, v2, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    if-eqz v9, :cond_6

    const/4 v11, 0x6

    invoke-static {v11, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    iget v12, v2, Lio/appmetrica/analytics/impl/F8;->a:I

    iput v12, v11, Lio/appmetrica/analytics/impl/F8;->a:I

    new-instance v12, Lio/appmetrica/analytics/impl/u8;

    invoke-direct {v12}, Lio/appmetrica/analytics/impl/u8;-><init>()V

    iput-object v12, v11, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    new-instance v13, Lio/appmetrica/analytics/impl/s8;

    invoke-direct {v13}, Lio/appmetrica/analytics/impl/s8;-><init>()V

    iput-object v13, v12, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    iget-object v12, v11, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v12, v12, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    iget-object v13, v2, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v13, v13, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    iget-object v14, v13, Lio/appmetrica/analytics/impl/s8;->b:[B

    iput-object v14, v12, Lio/appmetrica/analytics/impl/s8;->b:[B

    iget-object v14, v13, Lio/appmetrica/analytics/impl/s8;->a:[B

    iput-object v14, v12, Lio/appmetrica/analytics/impl/s8;->a:[B

    iget v14, v13, Lio/appmetrica/analytics/impl/s8;->e:I

    iput v14, v12, Lio/appmetrica/analytics/impl/s8;->e:I

    iget-object v13, v13, Lio/appmetrica/analytics/impl/s8;->c:Lio/appmetrica/analytics/impl/w8;

    iput-object v13, v12, Lio/appmetrica/analytics/impl/s8;->c:Lio/appmetrica/analytics/impl/w8;

    move-object v13, v5

    move v12, v7

    move v14, v8

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_9

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/appmetrica/analytics/impl/y3;

    move/from16 p1, v4

    new-instance v4, Lio/appmetrica/analytics/impl/t8;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/t8;-><init>()V

    iput v12, v4, Lio/appmetrica/analytics/impl/t8;->a:I

    move/from16 v16, v7

    iget-object v7, v0, Lio/appmetrica/analytics/impl/ye;->b:Lio/appmetrica/analytics/impl/x3;

    invoke-virtual {v7, v15}, Lio/appmetrica/analytics/impl/x3;->a(Lio/appmetrica/analytics/impl/y3;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v7

    iget-object v15, v7, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v15, Lio/appmetrica/analytics/impl/p8;

    iput-object v15, v4, Lio/appmetrica/analytics/impl/t8;->b:Lio/appmetrica/analytics/impl/p8;

    iget-object v15, v7, Lio/appmetrica/analytics/impl/Li;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    invoke-interface {v15}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance v15, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {v15, v4, v7}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    iget-object v4, v0, Lio/appmetrica/analytics/impl/ye;->d:Lio/appmetrica/analytics/impl/Xf;

    iget-object v7, v15, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/t8;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v4

    invoke-static {v7}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v7

    and-int/lit8 v17, v7, -0x80

    if-nez v17, :cond_7

    move/from16 v17, v16

    goto :goto_3

    :cond_7
    invoke-static {v7}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v17

    :goto_3
    add-int/2addr v4, v7

    add-int v4, v4, v17

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    add-int v7, v14, v4

    const v10, 0x32000

    if-le v7, v10, :cond_8

    iget-object v7, v11, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lio/appmetrica/analytics/impl/t8;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lio/appmetrica/analytics/impl/t8;

    iput-object v9, v7, Lio/appmetrica/analytics/impl/s8;->d:[Lio/appmetrica/analytics/impl/t8;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {v9, v11, v13}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    iget v10, v2, Lio/appmetrica/analytics/impl/F8;->a:I

    iput v10, v9, Lio/appmetrica/analytics/impl/F8;->a:I

    new-instance v10, Lio/appmetrica/analytics/impl/u8;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/u8;-><init>()V

    iput-object v10, v9, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    new-instance v11, Lio/appmetrica/analytics/impl/s8;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/s8;-><init>()V

    iput-object v11, v10, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    iget-object v10, v9, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v10, v10, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    iget-object v11, v2, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v11, v11, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    iget-object v13, v11, Lio/appmetrica/analytics/impl/s8;->b:[B

    iput-object v13, v10, Lio/appmetrica/analytics/impl/s8;->b:[B

    iget-object v13, v11, Lio/appmetrica/analytics/impl/s8;->a:[B

    iput-object v13, v10, Lio/appmetrica/analytics/impl/s8;->a:[B

    iget v13, v11, Lio/appmetrica/analytics/impl/s8;->e:I

    iput v13, v10, Lio/appmetrica/analytics/impl/s8;->e:I

    iget-object v11, v11, Lio/appmetrica/analytics/impl/s8;->c:Lio/appmetrica/analytics/impl/w8;

    iput-object v11, v10, Lio/appmetrica/analytics/impl/s8;->c:Lio/appmetrica/analytics/impl/w8;

    move-object v13, v5

    move v14, v8

    move-object v11, v9

    move-object v9, v7

    :cond_8
    iget-object v7, v15, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/t8;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v15, Lio/appmetrica/analytics/impl/Li;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    new-array v10, v3, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    aput-object v13, v10, v16

    aput-object v7, v10, p1

    invoke-static {v10}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object v13

    add-int/2addr v14, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, p1

    move/from16 v7, v16

    const/4 v10, 0x4

    goto/16 :goto_2

    :cond_9
    iget-object v0, v11, Lio/appmetrica/analytics/impl/F8;->f:Lio/appmetrica/analytics/impl/u8;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/u8;->a:Lio/appmetrica/analytics/impl/s8;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/t8;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/appmetrica/analytics/impl/t8;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/s8;->d:[Lio/appmetrica/analytics/impl/t8;

    new-instance v0, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {v0, v11, v13}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/xe;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ye;->a(Lio/appmetrica/analytics/impl/xe;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
