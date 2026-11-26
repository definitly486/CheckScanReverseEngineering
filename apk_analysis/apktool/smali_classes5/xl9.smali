.class public final Lxl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/DeferredDeeplinkListener;


# instance fields
.field public final synthetic a:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lb08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb08<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;Lb08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lb08<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxl9;->a:Lnl3;

    iput-object p2, p0, Lxl9;->b:Lb08;

    return-void
.end method


# virtual methods
.method public final onDeeplinkLoaded(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n                        {\n                            \"Yandex\": { \n                                \"deeplink\": \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\n                            }\n                        }\n                    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lna8;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicLinks"

    invoke-static {v1, v0}, Lio/appmetrica/analytics/AppMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lxl9;->a:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lxl9;->b:Lb08;

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lb08;->onSuccess(Ljava/lang/Object;)V

    sget-object v1, Lj59;->a:Lj59;

    :cond_1
    if-nez v1, :cond_2

    new-instance p1, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;

    invoke-direct {p1}, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;-><init>()V

    invoke-interface {p0, p1}, Lb08;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final onError(Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;

    invoke-direct {p1}, Lcom/warefly/checkscan/core/analytics/dynamicLinks/exception/NoUriFoundException;-><init>()V

    iget-object p0, p0, Lxl9;->b:Lb08;

    invoke-interface {p0, p1}, Lb08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
