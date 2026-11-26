.class public final Lyads/hd1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hd1;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/p41;)V
    .locals 1

    invoke-virtual {p0, p4}, Lyads/hd1;->a(Lyads/p41;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lyads/hd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/id1;

    invoke-interface {p2, p4}, Lyads/id1;->a(Lyads/p41;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p1, p3}, Lyads/id1;->a(Lyads/vq0;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lyads/p41;)Z
    .locals 0

    .line 36
    invoke-interface {p1}, Lyads/p41;->getExtensions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/hd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
