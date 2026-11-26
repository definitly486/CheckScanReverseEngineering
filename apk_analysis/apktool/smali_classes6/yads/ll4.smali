.class public final Lyads/ll4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ya6;


# instance fields
.field public final synthetic a:Lyads/ml4;


# direct methods
.method public constructor <init>(Lyads/ml4;)V
    .locals 0

    iput-object p1, p0, Lyads/ll4;->a:Lyads/ml4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ja6;)V
    .locals 0

    .line 18
    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    .line 19
    iget-object p0, p0, Lyads/ml4;->b:Lyads/we3;

    .line 20
    invoke-virtual {p0}, Lyads/we3;->d()V

    return-void
.end method

.method public final a(Lyads/ja6;F)V
    .locals 0

    .line 17
    return-void
.end method

.method public final a(Lyads/ja6;Lyads/gb6;)V
    .locals 0

    iget-object p1, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p1, p1, Lyads/ml4;->a:Lyads/gr2;

    invoke-virtual {p1, p2}, Lyads/gr2;->a(Lyads/gb6;)V

    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p0, p0, Lyads/ml4;->e:Lyads/bb6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/bb6;->a()V

    :cond_0
    return-void
.end method

.method public final b(Lyads/ja6;)V
    .locals 4

    iget-object p1, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p1, p1, Lyads/ml4;->c:Lyads/za6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    iget-object v0, p1, Lyads/za6;->a:Lyads/cb6;

    invoke-virtual {v0}, Lyads/cb6;->a()Lyads/h75;

    move-result-object v0

    new-instance v1, Lyads/g75;

    iget-object v2, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    const-string v3, "video_ad_start"

    invoke-static {v2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p1, p1, Lyads/za6;->b:Lyads/q84;

    invoke-virtual {p1, v1}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p0, p0, Lyads/ml4;->e:Lyads/bb6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/bb6;->c()V

    :cond_0
    return-void
.end method

.method public final c(Lyads/ja6;)V
    .locals 4

    iget-object p1, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p1, p1, Lyads/ml4;->c:Lyads/za6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    iget-object v0, p1, Lyads/za6;->a:Lyads/cb6;

    invoke-virtual {v0}, Lyads/cb6;->a()Lyads/h75;

    move-result-object v0

    new-instance v1, Lyads/g75;

    iget-object v2, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    const-string v3, "video_ad_complete"

    invoke-static {v2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p1, p1, Lyads/za6;->b:Lyads/q84;

    invoke-virtual {p1, v1}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p0, p0, Lyads/ml4;->e:Lyads/bb6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/bb6;->b()V

    :cond_0
    return-void
.end method

.method public final d(Lyads/ja6;)V
    .locals 0

    return-void
.end method

.method public final f(Lyads/ja6;)V
    .locals 0

    return-void
.end method

.method public final g(Lyads/ja6;)V
    .locals 0

    return-void
.end method

.method public final h(Lyads/ja6;)V
    .locals 0

    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p0, p0, Lyads/ml4;->e:Lyads/bb6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/bb6;->b()V

    :cond_0
    return-void
.end method

.method public final i(Lyads/ja6;)V
    .locals 0

    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p0, p0, Lyads/ml4;->b:Lyads/we3;

    invoke-virtual {p0}, Lyads/we3;->h()V

    return-void
.end method

.method public final j(Lyads/ja6;)V
    .locals 0

    iget-object p0, p0, Lyads/ll4;->a:Lyads/ml4;

    iget-object p0, p0, Lyads/ml4;->d:Lyads/r76;

    iget-object p0, p0, Lyads/r76;->a:Lyads/eb6;

    invoke-interface {p0}, Lyads/eb6;->d()V

    return-void
.end method

.method public final k(Lyads/ja6;)V
    .locals 0

    return-void
.end method
