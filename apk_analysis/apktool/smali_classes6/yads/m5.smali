.class public final Lyads/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "yandex_ad_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ba6;)Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lyads/ba6;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyads/qs2;

    iget-object v2, v2, Lyads/qs2;->a:Ljava/lang/String;

    sget-object v3, Lyads/m5;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lyads/qs2;

    if-eqz v0, :cond_2

    iget-object p0, v0, Lyads/qs2;->b:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method
