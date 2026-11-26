.class public final Lyads/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ga3;


# instance fields
.field public final a:Lyads/uq4;

.field public final b:Lyads/zc;

.field public final c:Ljava/util/List;

.field public d:Lyads/pc;


# direct methods
.method public constructor <init>(Lyads/uq4;)V
    .locals 2

    new-instance v0, Lyads/zc;

    invoke-direct {v0}, Lyads/zc;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/oc;->a:Lyads/uq4;

    iput-object v0, p0, Lyads/oc;->b:Lyads/zc;

    new-instance p1, Lyads/bd;

    new-instance v0, Lyads/nc;

    invoke-direct {v0, p0}, Lyads/nc;-><init>(Lyads/oc;)V

    const-string v1, "noInterestAd"

    invoke-direct {p1, v1, v0}, Lyads/bd;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/oc;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 41
    iget-object v0, p0, Lyads/oc;->b:Lyads/zc;

    .line 42
    iget-object v0, v0, Lyads/zc;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    .line 43
    iget-object p0, p0, Lyads/oc;->d:Lyads/pc;

    if-eqz p0, :cond_1

    check-cast p0, Lyads/jc;

    .line 44
    iget-object p0, p0, Lyads/jc;->a:Lyads/kc;

    .line 45
    iget-object p0, p0, Lyads/kc;->a:Landroid/app/Dialog;

    .line 46
    invoke-static {p0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lyads/oc;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/bd;

    invoke-virtual {v1, p1, v0}, Lyads/bd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lyads/bd;->a()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
