.class public final Lnx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "redirect"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/warefly/checkscan/presentation/Deeplink$w;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v0, p0, v1}, Lcom/warefly/checkscan/presentation/Deeplink$w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    :cond_0
    const-string p0, "after_event"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v1, "invite_code"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lcom/warefly/checkscan/presentation/Deeplink$w;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/warefly/checkscan/presentation/Deeplink$w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    :cond_2
    new-instance p1, Lcom/warefly/checkscan/presentation/Deeplink$w;

    const/4 v1, 0x5

    invoke-direct {p1, v0, p0, v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink$w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "signup"

    return-object p0
.end method
