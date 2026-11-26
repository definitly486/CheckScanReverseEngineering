.class public final Lxc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const-string p0, "checkscan.page.link"

    return-object p0
.end method
