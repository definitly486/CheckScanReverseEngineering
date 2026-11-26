.class public abstract Lyads/ui;
.super Lyads/vi;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 5

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    invoke-direct {p0, v0}, Lyads/vi;-><init>(Lyads/xo2;)V

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->k:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v3, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v1, v3, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v3, Lyads/w13;

    sget-object v4, Lyads/xo2;->f:Lyads/xo2;

    invoke-direct {v3, v4, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v1, v3}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/ui;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lyads/gi;->a(Ljava/lang/String;)Lyads/l20;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/gi;->a(Ljava/lang/String;)Lyads/l20;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to convert value to Color, expected format #AARRGGBB."

    invoke-static {p0, p1, p3}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_2
    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 51
    iget-object p0, p0, Lyads/ui;->c:Ljava/util/List;

    return-object p0
.end method
