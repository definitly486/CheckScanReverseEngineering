.class public final Luy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luy3$a;,
        Luy3$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lwu0;

.field public final c:Luy3$b;

.field public final d:Ljx3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lfy3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Luy3;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Liy6;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy3;->b:Lwu0;

    new-instance v0, Luy3$b;

    invoke-direct {v0, p1}, Luy3$b;-><init>(Lwu0;)V

    iput-object v0, p0, Luy3;->c:Luy3$b;

    new-instance p1, Ljx3$a;

    invoke-direct {p1, v0}, Ljx3$a;-><init>(Luy3$b;)V

    iput-object p1, p0, Luy3;->d:Ljx3$a;

    return-void
.end method


# virtual methods
.method public final a(ZLhy3$c;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Luy3;->b:Lwu0;

    const-wide/16 v3, 0x9

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v3, v4}, Lwu0;->c0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lgb9;->s(Lwu0;)I

    move-result v3

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_34

    invoke-interface {v2}, Lwu0;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-interface {v2}, Lwu0;->readByte()B

    move-result v7

    and-int/lit16 v8, v7, 0xff

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v9

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    sget-object v11, Luy3;->e:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    sget-object v12, Lfy3;->a:Lfy3;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v9, v3, v6, v8}, Lfy3;->a(ZIIII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v11, 0x4

    if-eqz p1, :cond_3

    if-ne v6, v11, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a SETTINGS frame but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lfy3;->a:Lfy3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lfy3;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v6, v3, :cond_2

    aget-object v2, v2, v6

    goto :goto_0

    :cond_2
    const-string v2, "0x%02x"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lgb9;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-wide/16 v14, 0x0

    move/from16 v16, v10

    const/4 v10, 0x5

    const/16 v12, 0x8

    packed-switch v6, :pswitch_data_0

    int-to-long v0, v3

    invoke-interface {v2, v0, v1}, Lwu0;->skip(J)V

    return v13

    :pswitch_0
    if-ne v3, v11, :cond_7

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v0

    const-wide/32 v2, 0x7fffffff

    int-to-long v6, v0

    and-long/2addr v2, v6

    cmp-long v0, v2, v14

    if-eqz v0, :cond_6

    iget-object v1, v1, Lhy3$c;->c:Lhy3;

    if-nez v9, :cond_4

    monitor-enter v1

    :try_start_1
    iget-wide v4, v1, Lhy3;->v:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lhy3;->v:J

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v13

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    invoke-virtual {v1, v9}, Lhy3;->b(I)Lvy3;

    move-result-object v1

    if-eqz v1, :cond_15

    monitor-enter v1

    :try_start_2
    iget-wide v4, v1, Lvy3;->f:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lvy3;->f:J

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    sget-object v0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v13

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_7
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_1
    if-lt v3, v12, :cond_f

    if-nez v9, :cond_e

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v0

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v4

    sub-int/2addr v3, v12

    sget-object v6, Lp03;->Companion:Lp03$a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lp03;->values()[Lp03;

    move-result-object v6

    array-length v7, v6

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lp03;->a()I

    move-result v10

    if-ne v10, v4, :cond_8

    move-object v12, v9

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_d

    sget-object v4, Lgx0;->e:Lgx0;

    if-lez v3, :cond_a

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lwu0;->i(J)Lgx0;

    move-result-object v4

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lgx0;->f()I

    iget-object v2, v1, Lhy3$c;->c:Lhy3;

    monitor-enter v2

    :try_start_3
    iget-object v3, v2, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-array v4, v5, [Lvy3;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    iput-boolean v13, v2, Lhy3;->g:Z

    sget-object v4, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v2

    check-cast v3, [Lvy3;

    array-length v2, v3

    :goto_4
    if-ge v5, v2, :cond_15

    aget-object v4, v3, v5

    iget v6, v4, Lvy3;->a:I

    if-le v6, v0, :cond_c

    invoke-virtual {v4}, Lvy3;->g()Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lp03;->REFUSED_STREAM:Lp03;

    monitor-enter v4

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lvy3;->m:Lp03;

    if-nez v7, :cond_b

    iput-object v6, v4, Lvy3;->m:Lp03;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_b
    :goto_5
    monitor-exit v4

    iget-object v6, v1, Lhy3$c;->c:Lhy3;

    iget v4, v4, Lvy3;->a:I

    invoke-virtual {v6, v4}, Lhy3;->e(I)Lvy3;

    goto :goto_7

    :goto_6
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_c
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_d
    const-string v0, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v4, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_e
    const-string v0, "TYPE_GOAWAY streamId != 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_f
    const-string v0, "TYPE_GOAWAY length < 8: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_2
    if-ne v3, v12, :cond_12

    if-nez v9, :cond_11

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v0

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v2

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_10

    move v5, v13

    :cond_10
    invoke-virtual {v1, v0, v2, v5}, Lhy3$c;->c(IIZ)V

    return v13

    :cond_11
    const-string v0, "TYPE_PING streamId != 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_12
    const-string v0, "TYPE_PING length != 8: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_3
    if-eqz v9, :cond_14

    and-int/lit8 v4, v7, 0x8

    if-eqz v4, :cond_13

    invoke-interface {v2}, Lwu0;->readByte()B

    move-result v4

    and-int/lit16 v5, v4, 0xff

    :cond_13
    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v2

    and-int v2, v2, v16

    sub-int/2addr v3, v11

    invoke-static {v3, v8, v5}, Luy3$a;->a(III)I

    move-result v3

    invoke-virtual {v0, v3, v5, v8, v9}, Luy3;->b(IIII)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lhy3$c;->d(ILjava/util/List;)V

    return v13

    :cond_14
    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_4
    if-nez v9, :cond_24

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_17

    if-nez v3, :cond_16

    :cond_15
    return v13

    :cond_16
    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_17
    rem-int/lit8 v0, v3, 0x6

    if-nez v0, :cond_23

    new-instance v0, Lor7;

    invoke-direct {v0}, Lor7;-><init>()V

    invoke-static {v5, v3}, Lkx6;->n(II)Ly74;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lkx6;->m(ILy74;)Lw74;

    move-result-object v3

    iget v6, v3, Lw74;->b:I

    iget v7, v3, Lw74;->c:I

    iget v3, v3, Lw74;->d:I

    if-lez v3, :cond_18

    if-le v6, v7, :cond_19

    :cond_18
    if-gez v3, :cond_22

    if-gt v7, v6, :cond_22

    :cond_19
    :goto_8
    invoke-interface {v2}, Lwu0;->readShort()S

    move-result v8

    sget-object v9, Lgb9;->a:[B

    const v9, 0xffff

    and-int/2addr v8, v9

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v9

    const/4 v12, 0x2

    if-eq v8, v12, :cond_1f

    const/4 v12, 0x3

    if-eq v8, v12, :cond_1e

    if-eq v8, v11, :cond_1c

    if-eq v8, v10, :cond_1a

    goto :goto_9

    :cond_1a
    if-lt v9, v4, :cond_1b

    const v12, 0xffffff

    if-gt v9, v12, :cond_1b

    goto :goto_9

    :cond_1b
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v9, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_1c
    if-ltz v9, :cond_1d

    const/4 v8, 0x7

    goto :goto_9

    :cond_1d
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_1e
    move v8, v11

    goto :goto_9

    :cond_1f
    if-eqz v9, :cond_21

    if-ne v9, v13, :cond_20

    goto :goto_9

    :cond_20
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_21
    :goto_9
    invoke-virtual {v0, v8, v9}, Lor7;->b(II)V

    if-eq v6, v7, :cond_22

    add-int/2addr v6, v3

    goto :goto_8

    :cond_22
    iget-object v2, v1, Lhy3$c;->c:Lhy3;

    iget-object v3, v2, Lhy3;->i:Ldo8;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lhy3;->d:Ljava/lang/String;

    const-string v5, " applyAndAckSettings"

    invoke-static {v4, v2, v5}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lky3;

    invoke-direct {v4, v2, v1, v0}, Lky3;-><init>(Ljava/lang/String;Lhy3$c;Lor7;)V

    invoke-virtual {v3, v4, v14, v15}, Ldo8;->c(Ljl8;J)V

    return v13

    :cond_23
    const-string v0, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_24
    const-string v0, "TYPE_SETTINGS streamId != 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_5
    if-ne v3, v11, :cond_29

    if-eqz v9, :cond_28

    invoke-interface {v2}, Lwu0;->readInt()I

    move-result v0

    sget-object v2, Lp03;->Companion:Lp03$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lp03;->values()[Lp03;

    move-result-object v2

    array-length v3, v2

    move v4, v5

    :goto_a
    if-ge v4, v3, :cond_26

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lp03;->a()I

    move-result v7

    if-ne v7, v0, :cond_25

    move-object v12, v6

    goto :goto_b

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_26
    const/4 v12, 0x0

    :goto_b
    if-eqz v12, :cond_27

    invoke-virtual {v1, v9, v12}, Lhy3$c;->e(ILp03;)V

    return v13

    :cond_27
    const-string v1, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v0, v1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_28
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_29
    const-string v0, "TYPE_RST_STREAM length: "

    const-string v1, " != 4"

    invoke-static {v3, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_6
    if-ne v3, v10, :cond_2b

    if-eqz v9, :cond_2a

    invoke-virtual {v0, v1, v9}, Luy3;->e(Lhy3$c;I)V

    return v13

    :cond_2a
    const-string v0, "TYPE_PRIORITY streamId == 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_2b
    const-string v0, "TYPE_PRIORITY length: "

    const-string v1, " != 5"

    invoke-static {v3, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_7
    if-eqz v9, :cond_2f

    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_2c

    move v4, v13

    goto :goto_c

    :cond_2c
    move v4, v5

    :goto_c
    and-int/lit8 v6, v7, 0x8

    if-eqz v6, :cond_2d

    invoke-interface {v2}, Lwu0;->readByte()B

    move-result v2

    and-int/lit16 v5, v2, 0xff

    :cond_2d
    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v1, v9}, Luy3;->e(Lhy3$c;I)V

    add-int/lit8 v3, v3, -0x5

    :cond_2e
    invoke-static {v3, v8, v5}, Luy3$a;->a(III)I

    move-result v2

    invoke-virtual {v0, v2, v5, v8, v9}, Luy3;->b(IIII)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v9, v0, v4}, Lhy3$c;->b(ILjava/util/List;Z)V

    return v13

    :cond_2f
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :pswitch_8
    if-eqz v9, :cond_33

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_30

    move v0, v13

    goto :goto_d

    :cond_30
    move v0, v5

    :goto_d
    and-int/lit8 v4, v7, 0x20

    if-nez v4, :cond_32

    and-int/lit8 v4, v7, 0x8

    if-eqz v4, :cond_31

    invoke-interface {v2}, Lwu0;->readByte()B

    move-result v4

    and-int/lit16 v5, v4, 0xff

    :cond_31
    invoke-static {v3, v8, v5}, Luy3$a;->a(III)I

    move-result v3

    invoke-virtual {v1, v0, v9, v2, v3}, Lhy3$c;->a(ZILwu0;I)V

    int-to-long v0, v5

    invoke-interface {v2, v0, v1}, Lwu0;->skip(J)V

    return v13

    :cond_32
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_33
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return v5

    :cond_34
    const-string v0, "FRAME_SIZE_ERROR: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    :catch_0
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(IIII)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lav3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luy3;->c:Luy3$b;

    iput p1, v0, Luy3$b;->f:I

    iput p1, v0, Luy3$b;->c:I

    iput p2, v0, Luy3$b;->g:I

    iput p3, v0, Luy3$b;->d:I

    iput p4, v0, Luy3$b;->e:I

    iget-object p0, p0, Luy3;->d:Ljx3$a;

    iget-object p1, p0, Ljx3$a;->c:Liy6;

    iget-object p2, p0, Ljx3$a;->b:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Liy6;->m()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p1}, Liy6;->readByte()B

    move-result p3

    sget-object p4, Lgb9;->a:[B

    and-int/lit16 p4, p3, 0xff

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-eq p4, v1, :cond_b

    and-int/lit16 v2, p3, 0x80

    if-ne v2, v1, :cond_3

    const/16 p3, 0x7f

    invoke-virtual {p0, p4, p3}, Ljx3$a;->e(II)I

    move-result p3

    add-int/lit8 p4, p3, -0x1

    if-ltz p4, :cond_1

    sget-object v1, Ljx3;->a:[Lav3;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt p4, v2, :cond_1

    aget-object p3, v1, p4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Ljx3;->a:[Lav3;

    array-length v1, v1

    sub-int/2addr p4, v1

    iget v1, p0, Ljx3$a;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p4

    if-ltz v1, :cond_2

    iget-object p4, p0, Ljx3$a;->d:[Lav3;

    array-length v2, p4

    if-ge v1, v2, :cond_2

    aget-object p3, p4, v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "Header index too large "

    invoke-static {p3, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/16 v1, 0x40

    if-ne p4, v1, :cond_4

    sget-object p3, Ljx3;->a:[Lav3;

    invoke-virtual {p0}, Ljx3$a;->d()Lgx0;

    move-result-object p3

    invoke-static {p3}, Ljx3;->a(Lgx0;)V

    invoke-virtual {p0}, Ljx3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lav3;

    invoke-direct {v0, p3, p4}, Lav3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p0, v0}, Ljx3$a;->c(Lav3;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p3, 0x40

    if-ne v2, v1, :cond_5

    const/16 p3, 0x3f

    invoke-virtual {p0, p4, p3}, Ljx3$a;->e(II)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Ljx3$a;->b(I)Lgx0;

    move-result-object p3

    invoke-virtual {p0}, Ljx3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lav3;

    invoke-direct {v0, p3, p4}, Lav3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p0, v0}, Ljx3$a;->c(Lav3;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p3, p3, 0x20

    const/16 v1, 0x20

    if-ne p3, v1, :cond_8

    const/16 p3, 0x1f

    invoke-virtual {p0, p4, p3}, Ljx3$a;->e(II)I

    move-result p3

    iput p3, p0, Ljx3$a;->a:I

    if-ltz p3, :cond_7

    const/16 p4, 0x1000

    if-gt p3, p4, :cond_7

    iget p4, p0, Ljx3$a;->g:I

    if-ge p3, p4, :cond_0

    if-nez p3, :cond_6

    iget-object p3, p0, Ljx3$a;->d:[Lav3;

    array-length p4, p3

    const/4 v1, 0x0

    invoke-static {v0, p3, v1, p4}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    iget-object p3, p0, Ljx3$a;->d:[Lav3;

    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Ljx3$a;->e:I

    iput v1, p0, Ljx3$a;->f:I

    iput v1, p0, Ljx3$a;->g:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p4, p3

    invoke-virtual {p0, p4}, Ljx3$a;->a(I)I

    goto/16 :goto_0

    :cond_7
    const-string p1, "Invalid dynamic table size update "

    iget p0, p0, Ljx3$a;->a:I

    invoke-static {p0, p1}, Ljn;->d(ILjava/lang/String;)V

    return-object v0

    :cond_8
    const/16 p3, 0x10

    if-eq p4, p3, :cond_a

    if-nez p4, :cond_9

    goto :goto_1

    :cond_9
    const/16 p3, 0xf

    invoke-virtual {p0, p4, p3}, Ljx3$a;->e(II)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Ljx3$a;->b(I)Lgx0;

    move-result-object p3

    invoke-virtual {p0}, Ljx3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lav3;

    invoke-direct {v0, p3, p4}, Lav3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p3, Ljx3;->a:[Lav3;

    invoke-virtual {p0}, Ljx3$a;->d()Lgx0;

    move-result-object p3

    invoke-static {p3}, Ljx3;->a(Lgx0;)V

    invoke-virtual {p0}, Ljx3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lav3;

    invoke-direct {v0, p3, p4}, Lav3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string p0, "index == 0"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v0

    :cond_c
    invoke-static {p2}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Luy3;->b:Lwu0;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final e(Lhy3$c;I)V
    .locals 0

    iget-object p0, p0, Luy3;->b:Lwu0;

    invoke-interface {p0}, Lwu0;->readInt()I

    invoke-interface {p0}, Lwu0;->readByte()B

    sget-object p0, Lgb9;->a:[B

    return-void
.end method
