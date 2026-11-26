.class public abstract Lyads/ei;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/xo2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lyads/u13;-><init>()V

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->j:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v2, Lyads/xo2;->f:Lyads/xo2;

    invoke-direct {v1, v2}, Lyads/w13;-><init>(Lyads/xo2;)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/ei;->a:Ljava/util/List;

    sget-object v0, Lyads/xo2;->k:Lyads/xo2;

    iput-object v0, p0, Lyads/ei;->b:Lyads/xo2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/ei;->f()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lyads/ei;->b:Lyads/xo2;

    invoke-virtual {p0}, Lyads/ei;->f()Z

    move-result p0

    invoke-static {p2, p3, v1, p1, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lyads/ei;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/ei;->b:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
