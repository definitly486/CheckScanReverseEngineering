.class public final Lyads/zn1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/p41;)Lyads/yn1;
    .locals 1

    const-string p0, "click"

    invoke-static {p1, p0}, Lyads/md1;->a(Lyads/p41;Ljava/lang/String;)Lyads/gd1;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    iget-object p0, p0, Lyads/gd1;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    move-object p0, p1

    goto :goto_2

    :goto_1
    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_2
    nop

    instance-of v0, p0, Lk57$a;

    if-eqz v0, :cond_2

    move-object p0, p1

    :cond_2
    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_3

    new-instance p1, Lyads/yn1;

    invoke-direct {p1, p0}, Lyads/yn1;-><init>(Landroid/net/Uri;)V

    :cond_3
    return-object p1
.end method
