.class public final Lhh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "id"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/16 v1, 0xa

    invoke-static {v1, p0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v1, "tab"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "target"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaignCode"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x1e

    if-ne p0, v3, :cond_1

    new-instance p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    return-object p0

    :cond_1
    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/warefly/checkscan/presentation/Deeplink$Webview;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "webview"

    return-object p0
.end method
