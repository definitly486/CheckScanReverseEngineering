.class public final Lyads/gn4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/a95;)Ljava/lang/String;
    .locals 2

    iget-object p0, p1, Lyads/a95;->b:Lyads/b95;

    iget-object p0, p0, Lyads/b95;->a:[B

    if-eqz p0, :cond_2

    iget-object p1, p1, Lyads/a95;->c:Ljava/util/Map;

    sget-object v0, Lyads/oa3;->T:Lyads/oa3;

    invoke-static {p1, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
