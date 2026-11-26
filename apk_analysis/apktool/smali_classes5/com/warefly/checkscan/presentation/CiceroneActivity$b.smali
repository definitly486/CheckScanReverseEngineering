.class public final Lcom/warefly/checkscan/presentation/CiceroneActivity$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/CiceroneActivity;->v(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/CiceroneActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$b;->f:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->s:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity$b;->f:Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->a:Lkv;

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tracking"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lkv;->c:Ljf6;

    invoke-interface {v0, p1}, Ljf6;->T(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkv;->e()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
