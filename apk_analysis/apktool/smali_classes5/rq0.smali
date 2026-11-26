.class public final Lrq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "selection_id"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const-string p0, "query"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusesSearch;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusesSearch;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Bonuses;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Bonuses;-><init>(I)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "bonuses"

    return-object p0
.end method
