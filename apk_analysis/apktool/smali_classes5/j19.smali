.class public final Lj19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe2;


# instance fields
.field public final a:Ljf6;


# direct methods
.method public constructor <init>(Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj19;->a:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v0, "onboardingKey"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "passAnon"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "taskId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2, v3}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    const-string v3, "source"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "source_task_id"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2, v3}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object p0, p0, Lj19;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->G0()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/warefly/checkscan/presentation/Deeplink$w;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/warefly/checkscan/presentation/Deeplink$w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_3
    :goto_2
    new-instance v3, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;

    invoke-direct/range {v3 .. v8}, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$TransferShowcasePromos;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v3

    :cond_4
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "transfer-showcase-promo"

    return-object p0
.end method
