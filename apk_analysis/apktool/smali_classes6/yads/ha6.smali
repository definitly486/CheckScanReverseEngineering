.class public final Lyads/ha6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lab7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lab7;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Lyads/ha6;->a:Lcl4;

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 4

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "adsdk.yandex.ru,yandex.ru"

    invoke-static {v1, v0}, Lta8;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "yandex.com/ads"

    invoke-static {v0, v1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
