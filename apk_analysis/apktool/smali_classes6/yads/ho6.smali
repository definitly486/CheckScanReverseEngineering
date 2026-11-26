.class public final Lyads/ho6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/eg;

.field public final b:Lyads/lg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/eg;)V
    .locals 1

    new-instance v0, Lyads/lg;

    invoke-direct {v0, p1}, Lyads/lg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ho6;->a:Lyads/eg;

    iput-object v0, p0, Lyads/ho6;->b:Lyads/lg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lyads/ho6;->b:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p0, p0, Lyads/ho6;->a:Lyads/eg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    :try_start_0
    iget-object v0, p0, Lyads/eg;->a:Lyads/j95;

    sget-object v1, Lyads/eg;->b:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lyads/j95;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wm0;

    if-eqz p0, :cond_0

    .line 41
    iget-object p0, p0, Lyads/wm0;->a:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;

    invoke-virtual {p0, p1}, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->setExperiments(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3

    iget-object v0, p0, Lyads/ho6;->b:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/ho6;->a:Lyads/eg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lyads/eg;->a:Lyads/j95;

    sget-object v1, Lyads/eg;->b:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lyads/j95;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wm0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/wm0;->a:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;

    invoke-virtual {p0, p1}, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->setTriggeredTestIds(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
