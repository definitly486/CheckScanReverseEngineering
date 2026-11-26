.class public final Lyads/r45;
.super Lyads/dq;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/res/Resources;

.field public final f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:Landroid/content/res/AssetFileDescriptor;

.field public i:Ljava/io/FileInputStream;

.field public j:J

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyads/dq;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lyads/r45;->e:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyads/r45;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lyads/bd0;->a:Landroid/net/Uri;

    iput-object v2, v0, Lyads/r45;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawresource"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x3ec

    const/16 v5, 0x7d5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.resource"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    const-string v8, ":"

    invoke-static {v4, v8}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lyads/r45;->e:Landroid/content/res/Resources;

    iget-object v8, v0, Lyads/r45;->f:Ljava/lang/String;

    const-string v9, "raw"

    invoke-virtual {v4, v3, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lyads/q45;

    const-string v1, "Resource not found."

    invoke-direct {v0, v1, v7, v5}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_4
    new-instance v0, Lyads/q45;

    const-string v1, "URI must either use scheme rawresource or android.resource"

    invoke-direct {v0, v1, v7, v4}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_2
    invoke-virtual {v0}, Lyads/dq;->h()V

    :try_start_1
    iget-object v4, v0, Lyads/r45;->e:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    iput-object v3, v0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v0, Lyads/r45;->i:Ljava/io/FileInputStream;

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    const/16 v12, 0x7d8

    if-eqz v5, :cond_7

    :try_start_2
    iget-wide v13, v1, Lyads/bd0;->f:J

    cmp-long v13, v13, v8

    if-gtz v13, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lyads/q45;

    invoke-direct {v0, v7, v7, v12}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    move v3, v5

    iget-wide v4, v1, Lyads/bd0;->f:J

    add-long/2addr v4, v13

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v13

    iget-wide v13, v1, Lyads/bd0;->f:J

    cmp-long v13, v4, v13

    if-nez v13, :cond_f

    const-wide/16 v13, 0x0

    if-nez v3, :cond_a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_8

    iput-wide v10, v0, Lyads/r45;->j:J

    move-wide v3, v10

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v3, v8

    iput-wide v3, v0, Lyads/r45;->j:J

    cmp-long v2, v3, v13

    if-ltz v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Lyads/q45;

    invoke-direct {v0, v7, v7, v12}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_a
    sub-long v3, v8, v4

    iput-wide v3, v0, Lyads/r45;->j:J
    :try_end_2
    .catch Lyads/q45; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v2, v3, v13

    if-ltz v2, :cond_e

    :goto_4
    iget-wide v7, v1, Lyads/bd0;->g:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_c

    cmp-long v2, v3, v10

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_5
    iput-wide v7, v0, Lyads/r45;->j:J

    :cond_c
    iput-boolean v6, v0, Lyads/r45;->k:Z

    invoke-virtual/range {p0 .. p1}, Lyads/dq;->b(Lyads/bd0;)V

    iget-wide v1, v1, Lyads/bd0;->g:J

    cmp-long v3, v1, v10

    if-eqz v3, :cond_d

    return-wide v1

    :cond_d
    iget-wide v0, v0, Lyads/r45;->j:J

    return-wide v0

    :cond_e
    :try_start_3
    new-instance v0, Lyads/xc0;

    invoke-direct {v0, v12}, Lyads/xc0;-><init>(I)V

    throw v0

    :cond_f
    new-instance v0, Lyads/q45;

    invoke-direct {v0, v7, v7, v12}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
    :try_end_3
    .catch Lyads/q45; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    new-instance v1, Lyads/q45;

    const/16 v15, 0x7d0

    invoke-direct {v1, v7, v0, v15}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_10
    const/16 v15, 0x7d0

    new-instance v0, Lyads/q45;

    const-string v1, "Resource is compressed: "

    invoke-static {v2, v1}, Lrk3;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v15}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lyads/q45;

    invoke-direct {v1, v7, v0, v5}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :catch_3
    new-instance v0, Lyads/q45;

    const-string v1, "Resource identifier must be an integer."

    invoke-direct {v0, v1, v7, v4}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final c([BII)I
    .locals 9

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lyads/r45;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    const/16 v6, 0x7d0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v7, p3

    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Lyads/r45;->i:Ljava/io/FileInputStream;

    sget v1, Lyads/u56;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide p2, p0, Lyads/r45;->j:J

    if-ne p1, v3, :cond_4

    cmp-long p0, p2, v4

    if-nez p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Lyads/q45;

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    const-string p2, "End of stream reached having not read sufficient data."

    invoke-direct {p0, p2, p1, v6}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p0

    :cond_4
    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lyads/r45;->j:J

    :cond_5
    invoke-virtual {p0, p1}, Lyads/dq;->c(I)V

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Lyads/q45;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, v6}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method

.method public final close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/r45;->g:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lyads/r45;->i:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_0
    :goto_0
    iput-object v0, p0, Lyads/r45;->i:Ljava/io/FileInputStream;

    :try_start_1
    iget-object v3, p0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lyads/r45;->k:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lyads/r45;->k:Z

    invoke-virtual {p0}, Lyads/dq;->g()V

    :cond_2
    return-void

    :goto_2
    :try_start_2
    new-instance v4, Lyads/q45;

    invoke-direct {v4, v0, v3, v1}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    iput-object v0, p0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lyads/r45;->k:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lyads/r45;->k:Z

    invoke-virtual {p0}, Lyads/dq;->g()V

    :cond_3
    throw v1

    :goto_4
    :try_start_3
    new-instance v4, Lyads/q45;

    invoke-direct {v4, v0, v3, v1}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    iput-object v0, p0, Lyads/r45;->i:Ljava/io/FileInputStream;

    :try_start_4
    iget-object v4, p0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v3

    goto :goto_7

    :cond_4
    :goto_6
    iput-object v0, p0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lyads/r45;->k:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lyads/r45;->k:Z

    invoke-virtual {p0}, Lyads/dq;->g()V

    :cond_5
    throw v3

    :goto_7
    :try_start_5
    new-instance v4, Lyads/q45;

    invoke-direct {v4, v0, v3, v1}, Lyads/q45;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_8
    iput-object v0, p0, Lyads/r45;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lyads/r45;->k:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lyads/r45;->k:Z

    invoke-virtual {p0}, Lyads/dq;->g()V

    :cond_6
    throw v1
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/r45;->g:Landroid/net/Uri;

    return-object p0
.end method
