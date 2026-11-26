.class public abstract Lcom/my/target/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/m1$a;,
        Lcom/my/target/m1$b;
    }
.end annotation


# static fields
.field public static a:Lcom/my/target/m1$a;


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0}, Ly14;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "StatResolver: Invalid stat url: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/ArrayList;Lz8a;Lik0;)V
    .locals 2

    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpp9;

    sget-object v1, Lzm9;->g:Lzm9;

    invoke-direct {v0, p1, v1}, Lpp9;-><init>(Lz8a;Lzm9;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ls5a;

    invoke-direct {p1, p0, v0, p2}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    sget-object p0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p2}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_0
    return-void
.end method

.method public static c(Ln4a;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ln4a;->d:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln4a;->e:Ljava/util/HashSet;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ls5a;

    iget-object p0, p0, Ln4a;->a:Lpp9;

    const/4 v2, 0x0

    invoke-direct {p1, v1, p0, v2}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, v2, p0, v2}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_1
    return-void
.end method

.method public static d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V
    .locals 1

    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_0
    return-void
.end method

.method public static e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1

    invoke-virtual {p0, p1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object p0

    sget-object p1, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_0
    return-void
.end method

.method public static f(Ls5a;Lcom/my/target/m1$b;)V
    .locals 3

    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_0
    return-void
.end method

.method public static g(Ls5a;Lcom/my/target/m1$b;)V
    .locals 3

    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_0
    return-void
.end method
