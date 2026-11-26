.class public abstract Lyads/t20;
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

    iput-object v0, p0, Lyads/t20;->a:Ljava/util/List;

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    iput-object v0, p0, Lyads/t20;->b:Lyads/xo2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/t20;->f()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/k20;->a(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lyads/l20;

    invoke-direct {p2, p1}, Lyads/l20;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "dict"

    const/4 p2, 0x0

    const-string v1, "Unable to convert value to Color, expected format #AARRGGBB."

    invoke-static {p1, p0, p3, v1, p2}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lyads/t20;->b:Lyads/xo2;

    invoke-virtual {p0}, Lyads/t20;->f()Z

    move-result p0

    invoke-static {p2, p3, v1, p1, p0}, Lyads/jo0;->a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lyads/t20;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/t20;->b:Lyads/xo2;

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
