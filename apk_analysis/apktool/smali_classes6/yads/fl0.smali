.class public Lyads/fl0;
.super Lyads/dq;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Lyads/ma3;

.field public final i:Lyads/ma3;

.field public j:Ljava/net/HttpURLConnection;

.field public k:Ljava/io/InputStream;

.field public l:Z

.field public m:I

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILyads/ma3;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyads/dq;-><init>(Z)V

    iput-object p1, p0, Lyads/fl0;->g:Ljava/lang/String;

    iput p2, p0, Lyads/fl0;->e:I

    iput p3, p0, Lyads/fl0;->f:I

    iput-object p4, p0, Lyads/fl0;->h:Lyads/ma3;

    new-instance p1, Lyads/ma3;

    invoke-direct {p1}, Lyads/ma3;-><init>()V

    iput-object p1, p0, Lyads/fl0;->i:Lyads/ma3;

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;J)V
    .locals 2

    if-eqz p0, :cond_4

    .line 553
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 555
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_0

    .line 556
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 557
    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 558
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 559
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 563
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lyads/fl0;->o:J

    iput-wide v12, v1, Lyads/fl0;->n:J

    invoke-virtual {v1}, Lyads/dq;->h()V

    const/4 v14, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, Lyads/bd0;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lyads/bd0;->c:I

    iget-object v4, v0, Lyads/bd0;->d:[B

    iget-wide v5, v0, Lyads/bd0;->f:J

    iget-wide v7, v0, Lyads/bd0;->g:J

    iget v9, v0, Lyads/bd0;->i:I

    and-int/2addr v9, v14

    const/4 v15, 0x0

    if-ne v9, v14, :cond_0

    move v9, v14

    goto :goto_0

    :cond_0
    move v9, v15

    :goto_0
    iget-object v11, v0, Lyads/bd0;->e:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Lyads/fl0;->a(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iput-object v2, v1, Lyads/fl0;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v1, Lyads/fl0;->m:I

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    iget v3, v1, Lyads/fl0;->m:I

    const-string v4, "Content-Range"

    const/16 v5, 0xc8

    const-wide/16 v6, -0x1

    if-lt v3, v5, :cond_1

    const/16 v8, 0x12b

    if-le v3, v8, :cond_2

    :cond_1
    move-wide/from16 v16, v6

    move-wide/from16 v18, v12

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v3, v1, Lyads/fl0;->m:I

    if-ne v3, v5, :cond_3

    iget-wide v8, v0, Lyads/bd0;->f:J

    cmp-long v3, v8, v12

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v8, v12

    :goto_1
    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gzip"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iget-wide v10, v0, Lyads/bd0;->g:J

    if-nez v3, :cond_9

    cmp-long v5, v10, v6

    if-eqz v5, :cond_4

    iput-wide v10, v1, Lyads/fl0;->n:J

    goto/16 :goto_5

    :cond_4
    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lyads/va3;->a:Ljava/util/regex/Pattern;

    const-string v10, "Inconsistent headers ["

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v15, "HttpUtil"

    move-wide/from16 v16, v6

    const-string v6, "]"

    if-nez v11, :cond_5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v24, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v24

    goto :goto_2

    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected Content-Length ["

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lyads/va3;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x2

    :try_start_2
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1

    move-object v11, v15

    add-long v14, v20, v22

    cmp-long v18, v12, v18

    if-gez v18, :cond_6

    move-wide v12, v14

    goto :goto_3

    :cond_6
    cmp-long v18, v12, v14

    if-eqz v18, :cond_7

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-object v11, v15

    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected Content-Range ["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    cmp-long v4, v12, v16

    if-eqz v4, :cond_8

    sub-long v6, v12, v8

    goto :goto_4

    :cond_8
    move-wide/from16 v6, v16

    :goto_4
    iput-wide v6, v1, Lyads/fl0;->n:J

    goto :goto_5

    :cond_9
    iput-wide v10, v1, Lyads/fl0;->n:J

    :goto_5
    const/16 v4, 0x7d0

    :try_start_4
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lyads/fl0;->k:Ljava/io/InputStream;

    if-eqz v3, :cond_a

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v3, v1, Lyads/fl0;->k:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lyads/fl0;->k:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    const/4 v7, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v7, 0x1

    goto :goto_7

    :goto_6
    iput-boolean v7, v1, Lyads/fl0;->l:Z

    invoke-virtual/range {p0 .. p1}, Lyads/dq;->b(Lyads/bd0;)V

    :try_start_5
    invoke-virtual {v1, v8, v9}, Lyads/fl0;->a(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    iget-wide v0, v1, Lyads/fl0;->n:J

    return-wide v0

    :catch_4
    move-exception v0

    invoke-virtual {v1}, Lyads/fl0;->i()V

    instance-of v1, v0, Lyads/ja3;

    if-eqz v1, :cond_b

    check-cast v0, Lyads/ja3;

    throw v0

    :cond_b
    new-instance v1, Lyads/ja3;

    const/4 v7, 0x1

    invoke-direct {v1, v4, v7, v0}, Lyads/ja3;-><init>(IILjava/io/IOException;)V

    throw v1

    :goto_7
    invoke-virtual {v1}, Lyads/fl0;->i()V

    new-instance v1, Lyads/ja3;

    invoke-direct {v1, v4, v7, v0}, Lyads/ja3;-><init>(IILjava/io/IOException;)V

    throw v1

    :goto_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    iget v5, v1, Lyads/fl0;->m:I

    const/16 v6, 0x1a0

    if-ne v5, v6, :cond_f

    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lyads/va3;->a:Ljava/util/regex/Pattern;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    sget-object v5, Lyads/va3;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_a

    :goto_9
    move-wide/from16 v4, v16

    :goto_a
    iget-wide v8, v0, Lyads/bd0;->f:J

    cmp-long v4, v8, v4

    if-nez v4, :cond_f

    iput-boolean v7, v1, Lyads/fl0;->l:Z

    invoke-virtual/range {p0 .. p1}, Lyads/dq;->b(Lyads/bd0;)V

    iget-wide v0, v0, Lyads/bd0;->g:J

    cmp-long v2, v0, v16

    if-eqz v2, :cond_e

    return-wide v0

    :cond_e
    return-wide v18

    :cond_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_6
    sget v2, Lyads/u56;->a:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_b
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_10

    invoke-virtual {v4, v2, v15, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    goto :goto_c

    :cond_11
    sget v0, Lyads/u56;->a:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_c

    :catch_5
    sget v0, Lyads/u56;->a:I

    :goto_c
    invoke-virtual {v1}, Lyads/fl0;->i()V

    iget v0, v1, Lyads/fl0;->m:I

    if-ne v0, v6, :cond_12

    new-instance v0, Lyads/xc0;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Lyads/xc0;-><init>(I)V

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    :goto_d
    new-instance v2, Lyads/la3;

    iget v1, v1, Lyads/fl0;->m:I

    invoke-direct {v2, v1, v0, v3}, Lyads/la3;-><init>(ILyads/xc0;Ljava/util/Map;)V

    throw v2

    :catch_6
    move-exception v0

    invoke-virtual {v1}, Lyads/fl0;->i()V

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lyads/ja3;->a(Ljava/io/IOException;I)Lyads/ja3;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 545
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public final a(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    .line 507
    invoke-virtual {p0, p1}, Lyads/fl0;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 508
    iget v0, p0, Lyads/fl0;->e:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 509
    iget v0, p0, Lyads/fl0;->f:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    iget-object v1, p0, Lyads/fl0;->h:Lyads/ma3;

    if-eqz v1, :cond_1

    .line 512
    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v2, v1, Lyads/ma3;->b:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 514
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v1, Lyads/ma3;->a:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lyads/ma3;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 515
    :cond_0
    :goto_0
    monitor-exit v1

    .line 516
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    .line 517
    :cond_1
    :goto_2
    iget-object v1, p0, Lyads/fl0;->i:Lyads/ma3;

    invoke-virtual {v1}, Lyads/ma3;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 518
    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 519
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_3
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 521
    :cond_2
    sget-object p10, Lyads/va3;->a:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    cmp-long p10, p4, v0

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    if-nez p10, :cond_3

    cmp-long p10, p6, v1

    if-nez p10, :cond_3

    move-object p4, v0

    goto :goto_4

    .line 522
    :cond_3
    const-string p10, "bytes="

    .line 523
    const-string v3, "-"

    .line 524
    invoke-static {p4, p5, p10, v3}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p10

    cmp-long v1, p6, v1

    if-eqz v1, :cond_4

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    .line 525
    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 526
    :cond_4
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_4
    if-eqz p4, :cond_5

    .line 527
    const-string p5, "Range"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_5
    iget-object p0, p0, Lyads/fl0;->g:Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 529
    const-string p4, "User-Agent"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_6
    const-string p0, "Accept-Encoding"

    if-eqz p8, :cond_7

    const-string p4, "gzip"

    goto :goto_5

    :cond_7
    const-string p4, "identity"

    :goto_5
    invoke-virtual {p1, p0, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x1

    if-eqz p3, :cond_8

    move p4, p0

    goto :goto_6

    :cond_8
    const/4 p4, 0x0

    .line 532
    :goto_6
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 533
    sget p4, Lyads/bd0;->k:I

    if-eq p2, p0, :cond_b

    const/4 p0, 0x2

    if-eq p2, p0, :cond_a

    const/4 p0, 0x3

    if-ne p2, p0, :cond_9

    .line 534
    const-string p0, "HEAD"

    goto :goto_7

    .line 535
    :cond_9
    invoke-static {}, Lud;->g()V

    return-object v0

    .line 536
    :cond_a
    const-string p0, "POST"

    goto :goto_7

    .line 537
    :cond_b
    const-string p0, "GET"

    .line 538
    :goto_7
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_c

    .line 539
    array-length p0, p3

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 540
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 541
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 542
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 543
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-object p1

    .line 544
    :cond_c
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method public final a(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1000

    .line 546
    new-array v2, v2, [B

    :goto_0
    cmp-long v3, p1, v0

    if-lez v3, :cond_3

    const-wide/16 v3, 0x1000

    .line 547
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 548
    iget-object v4, p0, Lyads/fl0;->k:Ljava/io/InputStream;

    sget v5, Lyads/u56;->a:I

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    int-to-long v4, v3

    sub-long/2addr p1, v4

    .line 550
    invoke-virtual {p0, v3}, Lyads/dq;->c(I)V

    goto :goto_0

    .line 551
    :cond_1
    new-instance p0, Lyads/ja3;

    invoke-direct {p0}, Lyads/ja3;-><init>()V

    throw p0

    .line 552
    :cond_2
    new-instance p0, Lyads/ja3;

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 p2, 0x7d0

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p1}, Lyads/ja3;-><init>(IILjava/io/IOException;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lyads/fl0;->j:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    sget-object p0, Lyads/p55;->h:Lyads/p55;

    return-object p0

    :cond_0
    new-instance v0, Lyads/el0;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/el0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final c([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lyads/fl0;->n:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lyads/fl0;->o:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Lyads/fl0;->k:Ljava/io/InputStream;

    sget v1, Lyads/u56;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    return v3

    :cond_3
    iget-wide p2, p0, Lyads/fl0;->o:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lyads/fl0;->o:J

    invoke-virtual {p0, p1}, Lyads/dq;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    sget p1, Lyads/u56;->a:I

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lyads/ja3;->a(Ljava/io/IOException;I)Lyads/ja3;

    move-result-object p0

    throw p0
.end method

.method public final close()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lyads/fl0;->k:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    iget-wide v3, p0, Lyads/fl0;->n:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lyads/fl0;->o:J

    sub-long v5, v3, v5

    :goto_0
    iget-object v3, p0, Lyads/fl0;->j:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Lyads/fl0;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Lyads/ja3;

    sget v4, Lyads/u56;->a:I

    const/16 v4, 0x7d0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v2}, Lyads/ja3;-><init>(IILjava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    iput-object v1, p0, Lyads/fl0;->k:Ljava/io/InputStream;

    invoke-virtual {p0}, Lyads/fl0;->i()V

    iget-boolean v1, p0, Lyads/fl0;->l:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lyads/fl0;->l:Z

    invoke-virtual {p0}, Lyads/dq;->g()V

    :cond_2
    return-void

    :goto_2
    iput-object v1, p0, Lyads/fl0;->k:Ljava/io/InputStream;

    invoke-virtual {p0}, Lyads/fl0;->i()V

    iget-boolean v1, p0, Lyads/fl0;->l:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lyads/fl0;->l:Z

    invoke-virtual {p0}, Lyads/dq;->g()V

    :cond_3
    throw v2
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/fl0;->j:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lyads/fl0;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    invoke-static {v1, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultHttpDataSource"

    invoke-static {v1, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/fl0;->j:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method
