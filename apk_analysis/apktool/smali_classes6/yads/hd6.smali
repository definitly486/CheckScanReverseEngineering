.class public final Lyads/hd6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/zv3;

.field public final c:Lyads/mf6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/hd6;->a:Landroid/content/Context;

    new-instance p1, Lyads/zv3;

    invoke-direct {p1}, Lyads/zv3;-><init>()V

    iput-object p1, p0, Lyads/hd6;->b:Lyads/zv3;

    new-instance p1, Lyads/mf6;

    invoke-direct {p1}, Lyads/mf6;-><init>()V

    iput-object p1, p0, Lyads/hd6;->c:Lyads/mf6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lyads/hd6;->b:Lyads/zv3;

    invoke-virtual {v2, v1, p2}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/hd6;->c:Lyads/mf6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "about:blank"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lyads/wd6;->c:Lyads/vd6;

    iget-object v1, p0, Lyads/hd6;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/vd6;->a(Landroid/content/Context;)Lyads/wd6;

    move-result-object v0

    iget-object v1, v0, Lyads/wd6;->a:Landroid/content/Context;

    new-instance v2, Lyads/av4;

    new-instance v3, Lyads/oi6;

    invoke-direct {v3}, Lyads/oi6;-><init>()V

    invoke-direct {v2, v1, p2, v3}, Lyads/av4;-><init>(Landroid/content/Context;Ljava/lang/String;Lyads/ds;)V

    iget-object p2, v0, Lyads/wd6;->b:Lyads/e85;

    invoke-virtual {p2, v2}, Lyads/e85;->a(Lyads/r75;)V

    goto :goto_2

    :cond_3
    return-void
.end method
