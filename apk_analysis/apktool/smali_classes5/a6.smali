.class public final La6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lh3;",
        ">;",
        "Lwu4;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->b:Ljava/lang/Object;

    iget-object v0, p1, La57;->a:Lz47;

    iget v0, v0, Lz47;->e:I

    iget-object v1, p1, La57;->c:Lb57;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb57;->v()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-instance v4, Lk57$a;

    invoke-direct {v4, v3}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v4

    :goto_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    instance-of v5, v3, Lk57$a;

    if-eqz v5, :cond_1

    move-object v3, v4

    :cond_1
    check-cast v3, Ljava/lang/String;

    const/16 v4, 0xc8

    if-gt v4, v0, :cond_3

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_3

    if-nez p0, :cond_2

    sget-object v0, Lxu4;->Error:Lxu4;

    goto :goto_2

    :cond_2
    sget-object v0, Lxu4;->LoggedIn:Lxu4;

    goto :goto_2

    :cond_3
    const-string v4, "com.warefly.checkscan.server.exception.LockedAccountException"

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Lxu4;->Locked:Lxu4;

    goto :goto_2

    :cond_4
    const/16 v3, 0x191

    if-ne v0, v3, :cond_5

    sget-object v0, Lxu4;->IncorrectLoginOrPassword:Lxu4;

    goto :goto_2

    :cond_5
    sget-object v0, Lxu4;->Error:Lxu4;

    :goto_2
    check-cast p0, Lh3;

    invoke-static {p1}, Ll1;->e(La57;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lxu4;->Locked:Lxu4;

    if-ne v0, v3, :cond_7

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lwu4$a;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lwu4$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    new-instance v3, Lk57$a;

    invoke-direct {v3, v1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    instance-of v1, v3, Lk57$a;

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v3

    :goto_4
    check-cast v2, Lwu4$a;

    :cond_7
    new-instance v1, Lwu4;

    invoke-direct {v1, v0, p0, p1, v2}, Lwu4;-><init>(Lxu4;Lh3;Ljava/lang/String;Lwu4$a;)V

    return-object v1
.end method
