.class public final Lwv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvv2;


# instance fields
.field public final a:Ls47;


# direct methods
.method public constructor <init>(Ls47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwv2;->a:Ls47;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrv6;",
            ">;"
        }
    .end annotation

    new-instance v0, Lrv6;

    new-instance v1, Lpv6;

    const v2, 0x7f140250

    iget-object p0, p0, Lwv2;->a:Ls47;

    invoke-interface {p0, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u0410\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u044b\u0439 \u0441\u043f\u0438\u0441\u043e\u043a \u043c\u0430\u0433\u0430\u0437\u0438\u043d\u043e\u0432, \u0433\u0434\u0435 \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u043d\u043d\u044b\u0435 \u0447\u0435\u043a\u0438, \u043c\u043e\u0436\u043d\u043e \u043f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c <a href=\'https://mco.nalog.ru/partners/markets\'>\u043f\u043e \u0441\u0441\u044b\u043b\u043a\u0435</a>"

    invoke-direct {v1, v2, v3}, Lpv6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lrv6;-><init>(Lpv6;)V

    new-instance v1, Lrv6;

    new-instance v2, Lpv6;

    const v3, 0x7f140254

    invoke-interface {p0, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f140253

    invoke-interface {p0, v4}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lpv6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lrv6;-><init>(Lpv6;)V

    new-instance v2, Lrv6;

    new-instance v3, Lpv6;

    const v4, 0x7f140256

    invoke-interface {p0, v4}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f140255

    invoke-interface {p0, v5}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lpv6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lrv6;-><init>(Lpv6;)V

    new-instance v3, Lrv6;

    new-instance v4, Lpv6;

    const v5, 0x7f140252

    invoke-interface {p0, v5}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f140251

    invoke-interface {p0, v6}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lpv6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lrv6;-><init>(Lpv6;)V

    new-instance v4, Lrv6;

    new-instance v5, Lpv6;

    const v6, 0x7f14024e

    invoke-interface {p0, v6}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f14024d

    invoke-interface {p0, v7}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, v6, p0}, Lpv6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lrv6;-><init>(Lpv6;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lrv6;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt64;",
            ">;"
        }
    .end annotation

    new-instance v0, Lt64;

    const v1, 0x7f140258

    iget-object p0, p0, Lwv2;->a:Ls47;

    invoke-interface {p0, v1}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140257

    invoke-interface {p0, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ls64;

    const v4, 0x7f0802e0

    invoke-direct {v3, v1, v4, v2}, Ls64;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v3}, Lt64;-><init>(Ls64;)V

    new-instance v1, Lt64;

    const v2, 0x7f14025a

    invoke-interface {p0, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f140259

    invoke-interface {p0, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ls64;

    const v5, 0x7f08029a

    invoke-direct {v4, v2, v5, v3}, Ls64;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v1, v4}, Lt64;-><init>(Ls64;)V

    new-instance v2, Lt64;

    const v3, 0x7f14025c

    invoke-interface {p0, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f14025b

    invoke-interface {p0, v4}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ls64;

    const v5, 0x7f080297

    invoke-direct {v4, v3, v5, p0}, Ls64;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v2, v4, p0}, Lt64;-><init>(Ls64;Z)V

    filled-new-array {v0, v1, v2}, [Lt64;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
