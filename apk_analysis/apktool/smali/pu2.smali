.class public final Lpu2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb08<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb08<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpu2;->f:Lb08;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n                        {\n                            \"Firebase\": {\n                                \"pendingDynamicLink\": \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\"\n                            }\n                        }\n                    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lna8;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicLinks"

    invoke-static {v2, v1}, Lio/appmetrica/analytics/AppMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lpu2;->f:Lb08;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lb08;->onSuccess(Ljava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;

    :cond_1
    if-nez v0, :cond_2

    new-instance p1, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;

    invoke-direct {p1}, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;-><init>()V

    invoke-interface {p0, p1}, Lb08;->onError(Ljava/lang/Throwable;)V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
