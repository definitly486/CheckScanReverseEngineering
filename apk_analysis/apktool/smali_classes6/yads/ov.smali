.class public final Lyads/ov;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bt2;

.field public b:Lyads/ws2;

.field public c:Lyads/wk0;


# direct methods
.method public constructor <init>(Lyads/bt2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ov;->a:Lyads/bt2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wc0;Landroid/net/Uri;Ljava/util/Map;JJLyads/v15;)V
    .locals 7

    new-instance v1, Lyads/wk0;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lyads/wk0;-><init>(Lyads/tc0;JJ)V

    iput-object v1, p0, Lyads/ov;->c:Lyads/wk0;

    iget-object p1, p0, Lyads/ov;->b:Lyads/ws2;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lyads/ov;->a:Lyads/bt2;

    invoke-interface {p1, p2, p3}, Lyads/bt2;->a(Landroid/net/Uri;Ljava/util/Map;)[Lyads/ws2;

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-ne p3, p4, :cond_1

    aget-object p1, p1, p5

    iput-object p1, p0, Lyads/ov;->b:Lyads/ws2;

    goto/16 :goto_5

    :cond_1
    array-length p3, p1

    move p6, p5

    :goto_0
    if-ge p6, p3, :cond_7

    aget-object p7, p1, p6

    :try_start_0
    invoke-interface {p7, v1}, Lyads/ws2;->a(Lyads/xs2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p7, p0, Lyads/ov;->b:Lyads/ws2;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p5, v1, Lyads/wk0;->f:I

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_2
    iget-object p7, p0, Lyads/ov;->b:Lyads/ws2;

    if-nez p7, :cond_6

    iget-wide v5, v1, Lyads/wk0;->d:J

    cmp-long p7, v5, v3

    if-nez p7, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lud;->g()V

    return-void

    :goto_1
    iget-object p0, p0, Lyads/ov;->b:Lyads/ws2;

    if-nez p0, :cond_4

    iget-wide p2, v1, Lyads/wk0;->d:J

    cmp-long p0, p2, v3

    if-eqz p0, :cond_4

    invoke-static {}, Lud;->g()V

    return-void

    :cond_4
    iput p5, v1, Lyads/wk0;->f:I

    throw p1

    :catch_0
    iget-object p7, p0, Lyads/ov;->b:Lyads/ws2;

    if-nez p7, :cond_6

    iget-wide v5, v1, Lyads/wk0;->d:J

    cmp-long p7, v5, v3

    if-nez p7, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lud;->g()V

    return-void

    :cond_6
    :goto_2
    iput p5, v1, Lyads/wk0;->f:I

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iget-object p0, p0, Lyads/ov;->b:Lyads/ws2;

    if-nez p0, :cond_a

    new-instance p0, Lyads/j46;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p6, "None of the available extractors ("

    invoke-direct {p3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p6, Lyads/u56;->a:I

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    array-length p7, p1

    if-ge p5, p7, :cond_9

    aget-object p7, p1, p5

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p7, p1

    sub-int/2addr p7, p4

    if-ge p5, p7, :cond_8

    const-string p7, ", "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lyads/j46;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move-object p1, p0

    :goto_5
    invoke-interface {p1, p8}, Lyads/ws2;->a(Lyads/zs2;)V

    return-void
.end method
