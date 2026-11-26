.class public abstract Lyads/k63;
.super Lyads/u13;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lyads/u13;-><init>()V

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyads/k63;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lyads/yo2;->b:Lyads/mr5;

    check-cast p1, Lid9;

    invoke-virtual {p1, p2}, Lid9;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing value."

    invoke-static {p0, p1, p3}, Lyads/wo2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lyads/k63;->a:Ljava/util/List;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
