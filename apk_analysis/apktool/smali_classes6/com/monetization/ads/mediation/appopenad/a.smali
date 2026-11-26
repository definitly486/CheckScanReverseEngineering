.class public final Lcom/monetization/ads/mediation/appopenad/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;


# static fields
.field public static final synthetic f:[Lze4;


# instance fields
.field public final a:Lyads/m24;

.field public final b:Lyads/q74;

.field public final c:Lyads/e55;

.field public d:Ljava/lang/ref/WeakReference;

.field public final e:Lyads/ve3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/monetization/ads/mediation/appopenad/a;

    const-string v1, "loadController"

    const-string v2, "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lcom/monetization/ads/mediation/appopenad/a;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/s03;Lyads/m24;Lyads/q74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/monetization/ads/mediation/appopenad/a;->a:Lyads/m24;

    iput-object p3, p0, Lcom/monetization/ads/mediation/appopenad/a;->b:Lyads/q74;

    new-instance p3, Lyads/e55;

    invoke-direct {p3, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/monetization/ads/mediation/appopenad/a;->c:Lyads/e55;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/monetization/ads/mediation/appopenad/a;->d:Ljava/lang/ref/WeakReference;

    new-instance p1, Lyads/ve3;

    invoke-direct {p1, p2}, Lyads/ve3;-><init>(Lyads/m24;)V

    iput-object p1, p0, Lcom/monetization/ads/mediation/appopenad/a;->e:Lyads/ve3;

    return-void
.end method
