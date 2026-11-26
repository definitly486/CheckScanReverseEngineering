.class public final Lyads/u34;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:[Lze4;


# instance fields
.field public final a:Lyads/sl5;

.field public final b:Lyads/wf6;

.field public final c:Ly22;

.field public final d:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/u34;

    const-string v1, "adView"

    const-string v2, "getAdView()Landroid/view/ViewGroup;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/u34;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/banner/BannerAdView;Lyads/sl5;)V
    .locals 3

    new-instance v0, Lyads/wf6;

    invoke-direct {v0}, Lyads/wf6;-><init>()V

    new-instance v1, Lyads/i90;

    invoke-direct {v1}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v2

    invoke-static {v2, v1}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/u34;->a:Lyads/sl5;

    iput-object v0, p0, Lyads/u34;->b:Lyads/wf6;

    iput-object v1, p0, Lyads/u34;->c:Ly22;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/u34;->d:Lyads/e55;

    return-void
.end method
