.class public abstract Lyads/ti;
.super Lyads/vi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

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

    instance-of p1, p0, Lyads/l20;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lyads/l20;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_5

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {p0}, Lyads/k20;->a(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lyads/l20;

    invoke-direct {p1, p0}, Lyads/l20;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of p0, p1, Lk57$a;

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move-object p2, p1

    :goto_3
    check-cast p2, Lyads/l20;

    :cond_3
    if-nez p2, :cond_4

    const/4 p0, 0x2

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    :cond_4
    return-object p2

    :cond_5
    return-object p1
.end method
