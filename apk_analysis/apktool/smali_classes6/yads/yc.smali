.class public final Lyads/yc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ga3;


# instance fields
.field public final a:Lyads/lc;

.field public final b:Lyads/yb;

.field public final c:Lyads/zc;

.field public final d:Ljava/util/List;

.field public e:Lyads/ad;


# direct methods
.method public constructor <init>(Lyads/lc;Lyads/yb;)V
    .locals 3

    new-instance v0, Lyads/zc;

    invoke-direct {v0}, Lyads/zc;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yc;->a:Lyads/lc;

    iput-object p2, p0, Lyads/yc;->b:Lyads/yb;

    iput-object v0, p0, Lyads/yc;->c:Lyads/zc;

    new-instance p1, Lyads/bd;

    new-instance p2, Lyads/xc;

    invoke-direct {p2, p0}, Lyads/xc;-><init>(Lyads/yc;)V

    const-string v0, "adtuneRendered"

    invoke-direct {p1, v0, p2}, Lyads/bd;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance p2, Lyads/bd;

    new-instance v0, Lyads/vc;

    invoke-direct {v0, p0}, Lyads/vc;-><init>(Lyads/yc;)V

    const-string v1, "adtuneClosed"

    invoke-direct {p2, v1, v0}, Lyads/bd;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Lyads/bd;

    new-instance v1, Lyads/wc;

    invoke-direct {v1, p0}, Lyads/wc;-><init>(Lyads/yc;)V

    const-string v2, "openOptOut"

    invoke-direct {v0, v2, v1}, Lyads/bd;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    filled-new-array {p1, p2, v0}, [Lyads/bd;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/yc;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 60
    iget-object v0, p0, Lyads/yc;->c:Lyads/zc;

    .line 61
    iget-object v0, v0, Lyads/zc;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lyads/yc;->a(Z)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lyads/yc;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/bd;

    invoke-virtual {v3, v1, v0}, Lyads/bd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lyads/bd;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lyads/yc;->e:Lyads/ad;

    if-eqz v0, :cond_2

    check-cast v0, Lyads/cc;

    iget-object v0, v0, Lyads/cc;->a:Lyads/ec;

    iget-object v0, v0, Lyads/ec;->d:Lyads/tq4;

    invoke-interface {v0, p1}, Lyads/tq4;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lyads/yc;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 63
    iget-object p0, p0, Lyads/yc;->e:Lyads/ad;

    if-eqz p0, :cond_1

    check-cast p0, Lyads/cc;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lyads/cc;->a:Lyads/ec;

    .line 65
    iget-object p1, p1, Lyads/ec;->c:Lyads/cp2;

    .line 66
    invoke-interface {p1}, Lyads/cp2;->a()V

    .line 67
    :cond_0
    iget-object p0, p0, Lyads/cc;->a:Lyads/ec;

    .line 68
    iget-object p0, p0, Lyads/ec;->a:Lyads/qc;

    .line 69
    invoke-interface {p0}, Lyads/qc;->dismiss()V

    :cond_1
    return-void
.end method
