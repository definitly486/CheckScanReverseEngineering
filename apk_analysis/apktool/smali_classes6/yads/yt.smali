.class public final Lyads/yt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/q84;

.field public final c:Lyads/sk;


# direct methods
.method public constructor <init>(Lyads/n5;Lyads/n70;Lyads/d9;Ljava/lang/String;Lyads/q84;)V
    .locals 1

    new-instance v0, Lyads/sk;

    invoke-direct {v0, p1, p2, p4}, Lyads/sk;-><init>(Lyads/n5;Lyads/n70;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/yt;->a:Lyads/d9;

    iput-object p5, p0, Lyads/yt;->b:Lyads/q84;

    iput-object v0, p0, Lyads/yt;->c:Lyads/sk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lyads/yt;->c:Lyads/sk;

    invoke-virtual {v0}, Lyads/sk;->a()Lyads/h75;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "no_view_for_asset"

    invoke-virtual {v0, v2, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset_name"

    invoke-virtual {v0, p1, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/yt;->a:Lyads/d9;

    iget-object p1, p1, Lyads/d9;->u:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lyads/yt;->a:Lyads/d9;

    iget-object p1, p1, Lyads/d9;->i:Lyads/c;

    iput-object p1, v0, Lyads/h75;->b:Lyads/c;

    new-instance v1, Lyads/g75;

    sget-object v2, Lyads/e75;->c:Lyads/e75;

    iget-object v0, v0, Lyads/h75;->a:Ljava/util/Map;

    const-string v2, "binding_failure"

    invoke-static {v0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/yt;->b:Lyads/q84;

    invoke-virtual {p0, v1}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method
