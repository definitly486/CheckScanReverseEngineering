.class public final Lej6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "id"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/warefly/checkscan/presentation/Deeplink$o;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/Deeplink$o;-><init>(I)V

    :cond_1
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "goods-merchant-detail"

    return-object p0
.end method
