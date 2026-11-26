.class public final Lyads/lo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/id1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/vq0;Landroid/view/View;)V
    .locals 0

    .line 77
    return-void
.end method

.method public final a(Lyads/vq0;Landroid/view/View;Lyads/p41;)V
    .locals 2

    instance-of p0, p2, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    check-cast p2, Landroid/widget/TextView;

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    invoke-interface {p3}, Lyads/p41;->getExtensions()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lyads/gd1;

    iget-object v0, v0, Lyads/gd1;->a:Ljava/lang/String;

    const-string v1, "hyphenation"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    move-object p3, p1

    :goto_0
    check-cast p3, Lyads/gd1;

    if-eqz p3, :cond_2

    iget-object p0, p3, Lyads/gd1;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_2

    const-string p3, "locale"

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    :cond_3
    return-void
.end method

.method public final a(Lyads/p41;)Z
    .locals 1

    .line 73
    invoke-interface {p1}, Lyads/p41;->getExtensions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 74
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/gd1;

    .line 76
    iget-object p1, p1, Lyads/gd1;->a:Ljava/lang/String;

    const-string v0, "hyphenation"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
