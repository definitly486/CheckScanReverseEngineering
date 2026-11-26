.class public abstract Lyads/bi;
.super Lyads/fi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/xo2;->h:Lyads/xo2;

    invoke-direct {p0, v0}, Lyads/fi;-><init>(Lyads/xo2;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyads/fi;->f()Z

    move-result p2

    invoke-static {p1, p3, p2}, Lyads/gi;->b(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lyads/l20;

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

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

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to convert value to Color, expected format #AARRGGBB."

    invoke-static {p0, p1, p3}, Lyads/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lyads/fi;->a:Lyads/xo2;

    invoke-virtual {p0}, Lyads/fi;->f()Z

    move-result p0

    invoke-static {p2, p3, v1, p1, p0}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V

    throw v0
.end method
