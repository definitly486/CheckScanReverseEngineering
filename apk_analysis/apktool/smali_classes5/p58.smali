.class public final Lp58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Specials;->d:Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Specials;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "special_list"

    return-object p0
.end method
