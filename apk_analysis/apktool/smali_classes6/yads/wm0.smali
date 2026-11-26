.class public final Lyads/wm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;

    invoke-direct {v0, p1}, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/wm0;->a:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;

    return-void
.end method
