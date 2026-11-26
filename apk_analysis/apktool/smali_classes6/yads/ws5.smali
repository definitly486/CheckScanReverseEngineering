.class public final Lyads/ws5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/a95;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p1, Lyads/a95;->b:Lyads/b95;

    iget-object p0, p0, Lyads/b95;->a:[B

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lyads/a95;->c:Ljava/util/Map;

    invoke-static {p1}, Lyads/v83;->a(Ljava/util/Map;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
