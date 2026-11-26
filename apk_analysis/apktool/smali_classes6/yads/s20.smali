.class public abstract Lyads/s20;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Lbm3;

.field public final b:Ljava/util/List;

.field public final c:Lyads/xo2;

.field public final d:Z


# direct methods
.method public constructor <init>(Lbm3;)V
    .locals 4

    invoke-direct {p0}, Lyads/u13;-><init>()V

    iput-object p1, p0, Lyads/s20;->a:Lbm3;

    new-instance p1, Lyads/w13;

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v2, Lyads/w13;

    sget-object v3, Lyads/xo2;->d:Lyads/xo2;

    invoke-direct {v2, v3, v1}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {p1, v2}, [Lyads/w13;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/s20;->b:Ljava/util/List;

    iput-object v0, p0, Lyads/s20;->c:Lyads/xo2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/s20;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/l20;

    iget p1, p1, Lyads/l20;->a:I

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Double;

    :try_start_0
    iget-object p3, p0, Lyads/s20;->a:Lbm3;

    new-instance v0, Lyads/l20;

    invoke-direct {v0, p1}, Lyads/l20;-><init>(I)V

    invoke-interface {p3, v0, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/l20;

    iget p0, p3, Lyads/l20;->a:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lyads/l20;

    invoke-direct {p1, p0}, Lyads/l20;-><init>(I)V

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lyads/l20;->d(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Value out of range 0..1."

    invoke-static {p0, p2, p1}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lyads/s20;->b:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/s20;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/s20;->d:Z

    return p0
.end method
