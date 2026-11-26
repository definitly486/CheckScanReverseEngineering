.class public final Lyads/gm6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/i70;)Lcom/yandex/mobile/ads/common/AdInfo;
    .locals 4

    iget-object p0, p1, Lyads/i70;->a:Ljava/lang/String;

    iget-object v0, p1, Lyads/i70;->b:Ljava/lang/String;

    iget-object v1, p1, Lyads/i70;->c:Ljava/lang/String;

    iget-object p1, p1, Lyads/i70;->d:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/s70;

    invoke-static {v3}, Lyads/w90;->a(Lyads/s70;)Lcom/yandex/mobile/ads/common/Creative;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/common/AdInfo;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/yandex/mobile/ads/common/AdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method
