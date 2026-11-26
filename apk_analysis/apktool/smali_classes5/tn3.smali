.class public final Ltn3;
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

    iput-object p1, p0, Ltn3;->a:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/warefly/checkscan/presentation/Deeplink;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ltn3;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->Q0()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Games;

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Games;-><init>(Z)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "games-tab"

    return-object p0
.end method
