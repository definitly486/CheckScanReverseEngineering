.class public abstract Lyads/r20;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Lnl3;

.field public final b:Ljava/util/List;

.field public final c:Lyads/xo2;

.field public final d:Z


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 2

    invoke-direct {p0}, Lyads/u13;-><init>()V

    iput-object p1, p0, Lyads/r20;->a:Lnl3;

    new-instance p1, Lyads/w13;

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/r20;->b:Ljava/util/List;

    sget-object p1, Lyads/xo2;->d:Lyads/xo2;

    iput-object p1, p0, Lyads/r20;->c:Lyads/xo2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/r20;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/r20;->a:Lnl3;

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/l20;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ltz p0, :cond_0

    const/16 p1, 0x100

    if-ge p0, p1, :cond_0

    int-to-double p0, p0

    const-wide p2, 0x406fe00000000000L    # 255.0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Value out of channel range 0..255"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lyads/r20;->b:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    iget-object p0, p0, Lyads/r20;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/r20;->d:Z

    return p0
.end method
