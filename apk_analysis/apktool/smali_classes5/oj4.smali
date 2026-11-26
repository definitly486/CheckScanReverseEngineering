.class public final Loj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmj4;


# virtual methods
.method public final a()Lsj4;
    .locals 8

    new-instance p0, Lsj4;

    new-instance v0, Lok4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lwj4;

    const-string v2, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\n\u043d\u0430 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c \u0438 \u0432\u043e\u0437\u0432\u0440\u0430\u0449\u0430\u0439\u0442\u0435 \u0431\u043e\u043b\u044c\u0448\u0435!"

    invoke-direct {v1, v2}, Lwj4;-><init>(Ljava/lang/String;)V

    new-instance v2, Ltj4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ldk4;

    const-string v4, "\u2022 0,1 \u20bd \u0437\u0430 \u0447\u0435\u043a "

    const-string v5, "\u2022 \u0411\u0430\u0437\u043e\u0432\u044b\u0435 \u0441\u0442\u0430\u0432\u043a\u0438 \u043a\u044d\u0448\u0431\u044d\u043a\u0430"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ldk4;-><init>(Ljava/util/List;)V

    new-instance v4, Lwj4;

    const-string v5, "\u0412\u044b\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u043e\u0434\u043d\u043e \u0438\u0437 \u0437\u0430\u0434\u0430\u043d\u0438\u0439,\n\u0447\u0442\u043e\u0431\u044b \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0438\u043b\u0438 \u043f\u0440\u043e\u0434\u043b\u0438\u0442\u044c \u0441\u0442\u0430\u0442\u0443\u0441"

    invoke-direct {v4, v5}, Lwj4;-><init>(Ljava/lang/String;)V

    new-instance v5, Lvh4;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x6

    new-array v6, v6, [Lpz3;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsj4;-><init>(Ljava/util/List;)V

    return-object p0
.end method
