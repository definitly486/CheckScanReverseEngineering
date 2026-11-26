.class public abstract Lyads/ai;
.super Lyads/fi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/xo2;->e:Lyads/xo2;

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

    instance-of p2, p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lyads/fi;->a:Lyads/xo2;

    invoke-virtual {p0}, Lyads/fi;->f()Z

    move-result p0

    invoke-static {p2, p3, v1, p1, p0}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;Lyads/xo2;Ljava/lang/Object;Z)V

    throw v0
.end method
