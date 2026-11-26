.class public final Lio/appmetrica/analytics/impl/ll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

.field public final b:Lio/appmetrica/analytics/impl/bb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;Lio/appmetrica/analytics/impl/ek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ll;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ll;->b:Lio/appmetrica/analytics/impl/bb;

    return-void
.end method


# virtual methods
.method public final a(JLio/appmetrica/analytics/impl/r9;Ljava/util/List;Lio/appmetrica/analytics/impl/rh;ILio/appmetrica/analytics/impl/Yg;)Lio/appmetrica/analytics/impl/Ni;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, v0, Lio/appmetrica/analytics/impl/Yg;->a:I

    iget v4, v0, Lio/appmetrica/analytics/impl/Yg;->b:I

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Yg;->c:Ljava/lang/Integer;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v4

    move-object v8, v6

    move v4, v3

    move-object v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const/16 v10, 0x64

    if-ge v7, v10, :cond_b

    new-instance v10, Lio/appmetrica/analytics/impl/Z8;

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/Z8;-><init>(Landroid/content/ContentValues;)V

    :try_start_0
    iget-object v0, v10, Lio/appmetrica/analytics/impl/Z8;->h:Lio/appmetrica/analytics/impl/pb;

    if-eqz v0, :cond_0

    sget-object v11, Lio/appmetrica/analytics/impl/dg;->d:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/g9;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_2

    :cond_0
    sget-object v0, Lio/appmetrica/analytics/impl/dg;->a:Ljava/util/Map;

    move-object v0, v6

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/impl/g9;->i:Lio/appmetrica/analytics/impl/g9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object/from16 v11, p5

    :try_start_1
    invoke-virtual {v0, v10, v11}, Lio/appmetrica/analytics/impl/g9;->a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)Lio/appmetrica/analytics/impl/q9;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    iget-object v12, v1, Lio/appmetrica/analytics/impl/ll;->b:Lio/appmetrica/analytics/impl/bb;

    const-string v13, "protobuf_serialization_error"

    invoke-interface {v12, v13, v0}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_3
    if-nez v0, :cond_2

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v12, Lio/appmetrica/analytics/impl/l0;

    iget-object v13, v10, Lio/appmetrica/analytics/impl/Z8;->u:Ljava/lang/String;

    iget-wide v14, v10, Lio/appmetrica/analytics/impl/Z8;->v:J

    invoke-direct {v12, v13, v14, v15}, Lio/appmetrica/analytics/impl/l0;-><init>(Ljava/lang/String;J)V

    if-nez v8, :cond_5

    if-nez v3, :cond_4

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    move v10, v9

    :catchall_2
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v14, Lio/appmetrica/analytics/impl/k9;

    invoke-direct {v14}, Lio/appmetrica/analytics/impl/k9;-><init>()V

    iput-object v13, v14, Lio/appmetrica/analytics/impl/k9;->a:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v14, Lio/appmetrica/analytics/impl/k9;->b:Ljava/lang/String;

    const/4 v13, 0x7

    invoke-static {v13, v14}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/2addr v10, v13

    goto :goto_5

    :catchall_3
    move v10, v9

    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/2addr v4, v10

    :cond_4
    move-object v8, v12

    goto :goto_6

    :cond_5
    invoke-virtual {v8, v12}, Lio/appmetrica/analytics/impl/l0;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    :goto_6
    iget-object v10, v1, Lio/appmetrica/analytics/impl/ll;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    iget-object v12, v0, Lio/appmetrica/analytics/impl/q9;->e:[B

    invoke-interface {v10, v12}, Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget-object v12, v0, Lio/appmetrica/analytics/impl/q9;->e:[B

    if-eq v12, v10, :cond_9

    iget v13, v0, Lio/appmetrica/analytics/impl/q9;->i:I

    if-eqz v12, :cond_7

    array-length v12, v12

    goto :goto_7

    :cond_7
    move v12, v9

    :goto_7
    if-eqz v10, :cond_8

    array-length v14, v10

    goto :goto_8

    :cond_8
    move v14, v9

    :goto_8
    sub-int/2addr v12, v14

    add-int/2addr v12, v13

    iput v12, v0, Lio/appmetrica/analytics/impl/q9;->i:I

    iput-object v10, v0, Lio/appmetrica/analytics/impl/q9;->e:[B

    :cond_9
    const/4 v10, 0x3

    invoke-static {v10, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v10

    add-int/2addr v4, v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez p6, :cond_a

    const/high16 v10, 0x100000

    if-lt v4, v10, :cond_c

    goto :goto_9

    :cond_a
    const v10, 0x3d400

    if-lt v4, v10, :cond_c

    :cond_b
    :goto_9
    move v0, v9

    goto :goto_a

    :cond_c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v6

    :cond_d
    new-instance v1, Lio/appmetrica/analytics/impl/s9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/s9;-><init>()V

    move-wide/from16 v5, p1

    iput-wide v5, v1, Lio/appmetrica/analytics/impl/s9;->a:J

    move-object/from16 v5, p3

    iput-object v5, v1, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/r9;

    new-array v5, v9, [Lio/appmetrica/analytics/impl/q9;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/appmetrica/analytics/impl/q9;

    iput-object v2, v1, Lio/appmetrica/analytics/impl/s9;->c:[Lio/appmetrica/analytics/impl/q9;

    new-instance v2, Lio/appmetrica/analytics/impl/Ni;

    move/from16 p3, v0

    move-object/from16 p1, v1

    move-object/from16 p0, v2

    move-object/from16 p6, v3

    move/from16 p4, v4

    move/from16 p5, v7

    move-object/from16 p2, v8

    invoke-direct/range {p0 .. p6}, Lio/appmetrica/analytics/impl/Ni;-><init>(Lio/appmetrica/analytics/impl/s9;Lio/appmetrica/analytics/impl/l0;ZIILjava/lang/Integer;)V

    move-object/from16 v0, p0

    return-object v0
.end method
