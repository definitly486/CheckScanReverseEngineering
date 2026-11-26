.class public final Lqa6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljc1;


# virtual methods
.method public final a(Lkw7;)V
    .locals 3

    :try_start_0
    sget-object p0, Loa6;->I:Loa6$a;

    iget-object v0, p1, Lkw7;->a:Ljava/lang/String;

    iget-object p1, p1, Lkw7;->b:Lqc6;

    iget-object p1, p1, Lqc6;->a:Ljava/util/Map;

    const/16 v1, 0x7a

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, v1}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
