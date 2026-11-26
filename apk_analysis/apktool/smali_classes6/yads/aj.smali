.class public abstract Lyads/aj;
.super Lyads/vi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/xo2;->i:Lyads/xo2;

    invoke-direct {p0, v0}, Lyads/vi;-><init>(Lyads/xo2;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lyads/gi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lyads/q46;

    invoke-direct {p1, p0}, Lyads/q46;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x2

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
