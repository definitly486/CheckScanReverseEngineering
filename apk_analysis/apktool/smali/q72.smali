.class public final Lq72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;


# virtual methods
.method public final a()Lr72;
    .locals 12

    iget-object p0, p0, Lq72;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, Lr72;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lr13$a;->a:Lr13;

    invoke-static {v1}, Lnq2;->a(Lws6;)Lws6;

    move-result-object v1

    iput-object v1, v0, Lr72;->b:Lws6;

    new-instance v1, Le64;

    invoke-direct {v1, p0}, Le64;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lr72;->c:Le64;

    new-instance p0, Lm62;

    invoke-direct {p0, v1}, Lm62;-><init>(Le64;)V

    new-instance v2, Lna5;

    invoke-direct {v2, v1, p0}, Lna5;-><init>(Le64;Lm62;)V

    invoke-static {v2}, Lnq2;->a(Lws6;)Lws6;

    move-result-object p0

    iput-object p0, v0, Lr72;->d:Lws6;

    iget-object p0, v0, Lr72;->c:Le64;

    new-instance v1, Lye7;

    invoke-direct {v1, p0}, Lye7;-><init>(Lws6;)V

    iput-object v1, v0, Lr72;->e:Lye7;

    new-instance v1, Lg13;

    invoke-direct {v1, p0}, Lg13;-><init>(Lws6;)V

    invoke-static {v1}, Lnq2;->a(Lws6;)Lws6;

    move-result-object p0

    iput-object p0, v0, Lr72;->f:Lws6;

    iget-object v1, v0, Lr72;->e:Lye7;

    new-instance v2, Lv97;

    invoke-direct {v2, v1, p0}, Lv97;-><init>(Lws6;Lws6;)V

    invoke-static {v2}, Lnq2;->a(Lws6;)Lws6;

    move-result-object v6

    iput-object v6, v0, Lr72;->g:Lws6;

    new-instance p0, Loe7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Lr72;->c:Le64;

    new-instance v7, Lpe7;

    invoke-direct {v7, v1, v6, p0}, Lpe7;-><init>(Lws6;Lws6;Loe7;)V

    iget-object v4, v0, Lr72;->b:Lws6;

    iget-object v5, v0, Lr72;->d:Lws6;

    new-instance v3, Lqi2;

    move-object v8, v6

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    invoke-direct/range {v3 .. v8}, Lqi2;-><init>(Lws6;Lws6;Lpe7;Lws6;Lws6;)V

    move-object p0, v7

    move-object v7, v6

    move-object v6, p0

    move-object p0, v3

    new-instance v3, Ls89;

    move-object v9, v6

    move-object v10, v6

    move-object v8, v4

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Ls89;-><init>(Lws6;Lws6;Lws6;Lpe7;Lws6;Lws6;Lws6;)V

    move-object v4, v8

    new-instance v1, Lkk9;

    invoke-direct {v1, v4, v6, v7, v6}, Lkk9;-><init>(Lws6;Lws6;Lpe7;Lws6;)V

    new-instance v2, Le39;

    invoke-direct {v2, p0, v3, v1}, Le39;-><init>(Lqi2;Ls89;Lkk9;)V

    invoke-static {v2}, Lnq2;->a(Lws6;)Lws6;

    move-result-object p0

    iput-object p0, v0, Lr72;->h:Lws6;

    return-object v0

    :cond_0
    const-class p0, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg2;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
