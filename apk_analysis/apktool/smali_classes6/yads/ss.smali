.class public final Lyads/ss;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ua3;

.field public final b:Lyads/rv;


# direct methods
.method public constructor <init>(Lyads/ua3;)V
    .locals 1

    new-instance v0, Lyads/rv;

    invoke-direct {v0}, Lyads/rv;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ss;->a:Lyads/ua3;

    iput-object v0, p0, Lyads/ss;->b:Lyads/rv;

    return-void
.end method


# virtual methods
.method public final a(Lyads/r75;)Lyads/en4;
    .locals 14

    const-string v0, "]"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p1, Lyads/r75;->p:Lyads/wv;

    if-nez v5, :cond_0

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v6, v4

    move-object v8, v6

    goto/16 :goto_4

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v5, Lyads/wv;->b:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v8, "If-None-Match"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v7, v5, Lyads/wv;->d:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_2

    const-string v5, "If-Modified-Since"

    const-string v9, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    new-instance v10, Ljava/text/SimpleDateFormat;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v9, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v9, "GMT"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v5, v6

    :goto_1
    iget-object v6, p0, Lyads/ss;->a:Lyads/ua3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v5, Lyads/oa3;->c:Lyads/oa3;

    const-string v5, "User-Agent"

    iget-object v8, v6, Lyads/ua3;->b:Lyads/r56;

    iget-object v8, v8, Lyads/r56;->a:Lyads/ku5;

    invoke-virtual {v8}, Lyads/ku5;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v6, Lyads/ua3;->a:Lyads/i94;

    invoke-virtual {v5, p1, v7}, Lyads/i94;->a(Lyads/r75;Ljava/util/Map;)Lyads/sa3;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v6, v5, Lyads/sa3;->a:I

    iget-object v7, v5, Lyads/sa3;->b:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x130

    if-ne v6, v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {p1, v7}, Lyads/pn4;->a(Lyads/r75;Ljava/util/List;)Lyads/en4;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    move-object v8, v4

    goto :goto_4

    :cond_3
    iget-object v8, v5, Lyads/sa3;->d:Ljava/io/InputStream;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v5, Lyads/sa3;->e:[B

    if-eqz v8, :cond_5

    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, v5, Lyads/sa3;->e:[B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_2

    :cond_5
    move-object v8, v4

    :goto_2
    if-eqz v8, :cond_6

    iget v9, v5, Lyads/sa3;->c:I

    iget-object v10, p0, Lyads/ss;->b:Lyads/rv;

    invoke-static {v8, v9, v10}, Lyads/pn4;->a(Ljava/io/InputStream;ILyads/rv;)[B

    move-result-object v8

    goto :goto_3

    :cond_6
    new-array v8, v3, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    sget-boolean v11, Lyads/li6;->a:Z

    if-nez v11, :cond_7

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-lez v9, :cond_8

    :cond_7
    iget-object v9, p1, Lyads/r75;->o:Lyads/am0;

    iget v9, v9, Lyads/am0;->b:I

    :cond_8
    const/16 v9, 0xc8

    if-lt v6, v9, :cond_9

    const/16 v9, 0x12b

    if-gt v6, v9, :cond_9

    new-instance v9, Lyads/en4;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v9, v6, v8, v3, v7}, Lyads/en4;-><init>(I[BZLjava/util/List;)V

    return-object v9

    :catch_2
    move-exception v6

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    goto :goto_4

    :cond_9
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    instance-of v7, v5, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_a

    new-instance v3, Lyads/on4;

    new-instance v4, Lyads/mx5;

    invoke-direct {v4}, Lyads/mx5;-><init>()V

    const-string v5, "socket"

    invoke-direct {v3, v5, v4}, Lyads/on4;-><init>(Ljava/lang/String;Lyads/hi6;)V

    goto/16 :goto_7

    :cond_a
    instance-of v7, v5, Ljava/net/MalformedURLException;

    if-nez v7, :cond_14

    if-eqz v6, :cond_11

    iget v4, v6, Lyads/sa3;->a:I

    invoke-virtual {p1}, Lyads/r75;->g()Ljava/lang/String;

    sget-boolean v5, Lyads/li6;->a:Z

    if-eqz v8, :cond_10

    iget-object v5, v6, Lyads/sa3;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lyads/en4;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {v6, v4, v8, v3, v5}, Lyads/en4;-><init>(I[BZLjava/util/List;)V

    const/16 v3, 0x191

    if-eq v4, v3, :cond_f

    const/16 v3, 0x193

    if-ne v4, v3, :cond_b

    goto :goto_6

    :cond_b
    const/16 v3, 0x190

    if-lt v4, v3, :cond_d

    const/16 v3, 0x1f3

    if-le v4, v3, :cond_c

    goto :goto_5

    :cond_c
    new-instance p0, Lyads/o00;

    invoke-direct {p0, v6}, Lyads/o00;-><init>(Lyads/en4;)V

    throw p0

    :cond_d
    :goto_5
    const/16 v3, 0x1f4

    if-lt v4, v3, :cond_e

    const/16 v3, 0x257

    if-gt v4, v3, :cond_e

    iget-boolean v3, p1, Lyads/r75;->m:Z

    if-eqz v3, :cond_e

    new-instance v3, Lyads/on4;

    new-instance v4, Lyads/vi5;

    invoke-direct {v4, v6}, Lyads/vi5;-><init>(Lyads/en4;)V

    const-string v5, "server"

    invoke-direct {v3, v5, v4}, Lyads/on4;-><init>(Ljava/lang/String;Lyads/hi6;)V

    goto :goto_7

    :cond_e
    new-instance p0, Lyads/vi5;

    invoke-direct {p0, v6}, Lyads/vi5;-><init>(Lyads/en4;)V

    throw p0

    :cond_f
    :goto_6
    new-instance v3, Lyads/on4;

    new-instance v4, Lyads/ym;

    invoke-direct {v4, v6}, Lyads/ym;-><init>(Lyads/en4;)V

    const-string v5, "auth"

    invoke-direct {v3, v5, v4}, Lyads/on4;-><init>(Ljava/lang/String;Lyads/hi6;)V

    goto :goto_7

    :cond_10
    new-instance v3, Lyads/on4;

    new-instance v4, Lyads/cn4;

    invoke-direct {v4}, Lyads/cn4;-><init>()V

    const-string v5, "network"

    invoke-direct {v3, v5, v4}, Lyads/on4;-><init>(Ljava/lang/String;Lyads/hi6;)V

    goto :goto_7

    :cond_11
    iget-boolean v3, p1, Lyads/r75;->n:Z

    if-eqz v3, :cond_13

    new-instance v3, Lyads/on4;

    new-instance v4, Lyads/do4;

    invoke-direct {v4}, Lyads/do4;-><init>()V

    const-string v5, "connection"

    invoke-direct {v3, v5, v4}, Lyads/on4;-><init>(Ljava/lang/String;Lyads/hi6;)V

    :goto_7
    iget-object v4, p1, Lyads/r75;->o:Lyads/am0;

    iget v5, v4, Lyads/am0;->a:I

    :try_start_3
    iget-object v6, v3, Lyads/on4;->b:Lyads/hi6;

    iget v7, v4, Lyads/am0;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lyads/am0;->b:I

    int-to-float v8, v5

    iget v9, v4, Lyads/am0;->d:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v5

    iput v8, v4, Lyads/am0;->a:I

    iget v4, v4, Lyads/am0;->c:I
    :try_end_3
    .catch Lyads/hi6; {:try_start_3 .. :try_end_3} :catch_3

    if-gt v7, v4, :cond_12

    iget-object v3, v3, Lyads/on4;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-retry [timeout="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lyads/r75;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    :try_start_4
    throw v6
    :try_end_4
    .catch Lyads/hi6; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p0

    iget-object v1, v3, Lyads/on4;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-timeout-giveup [timeout="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/r75;->a(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Lyads/do4;

    invoke-direct {p0, v5}, Lyads/do4;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_14
    const-string p0, "Bad URL "

    invoke-virtual {p1}, Lyads/r75;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lxy;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v4
.end method
