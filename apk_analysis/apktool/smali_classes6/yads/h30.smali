.class public abstract Lyads/h30;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Lyads/r20;

.field public final b:Ljava/util/List;

.field public final c:Lyads/xo2;

.field public final d:Z


# direct methods
.method public constructor <init>(Lyads/r20;)V
    .locals 2

    invoke-direct {p0}, Lyads/u13;-><init>()V

    iput-object p1, p0, Lyads/h30;->a:Lyads/r20;

    new-instance p1, Lyads/w13;

    sget-object v0, Lyads/xo2;->f:Lyads/xo2;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/h30;->b:Ljava/util/List;

    sget-object p1, Lyads/xo2;->d:Lyads/xo2;

    iput-object p1, p0, Lyads/h30;->c:Lyads/xo2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/h30;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lyads/k20;->a(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lyads/h30;->a:Lyads/r20;

    new-instance v0, Lyads/l20;

    invoke-direct {v0, p3}, Lyads/l20;-><init>(I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lyads/u13;->b(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unable to convert value to Color, expected format #AARRGGBB."

    invoke-static {p0, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lyads/h30;->b:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/h30;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/h30;->d:Z

    return p0
.end method
