.class public abstract Lyads/po0;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/xo2;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lyads/u13;-><init>()V

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    sget-object v4, Lyads/xo2;->j:Lyads/xo2;

    invoke-direct {v3, v4, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v2, Lyads/w13;

    invoke-direct {v2, v1}, Lyads/w13;-><init>(Lyads/xo2;)V

    filled-new-array {v0, v3, v2}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/po0;->a:Ljava/util/List;

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    iput-object v0, p0, Lyads/po0;->b:Lyads/xo2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p2, p1}, Lyads/jo0;->a(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lyads/gi;->a(Ljava/lang/String;)Lyads/l20;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lyads/gi;->a(Ljava/lang/String;)Lyads/l20;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unable to convert value to Color, expected format #AARRGGBB."

    const-string v0, "dict"

    invoke-static {v0, p0, p3, p2, p1}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v2

    :cond_2
    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lyads/po0;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/po0;->b:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
