.class public final Lyads/ur2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:[Lze4;


# instance fields
.field public final a:Lyads/rr2;

.field public final b:Ly22;

.field public final c:Lyads/e55;

.field public final d:Lyads/e55;

.field public e:Lmb4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lyads/ur2;

    const-string v1, "viewReference"

    const-string v2, "getViewReference()Landroid/view/View;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v1

    const-string v2, "listenerReference"

    const-string v4, "getListenerReference()Lcom/monetization/ads/base/webview/mraid/exposure/OnExposureUpdateListener;"

    invoke-static {v0, v2, v4, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lze4;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lyads/ur2;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/ls4;Lyads/rr2;Lyads/jb4;)V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ur2;->a:Lyads/rr2;

    iput-object v0, p0, Lyads/ur2;->b:Ly22;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/ur2;->c:Lyads/e55;

    new-instance p1, Lyads/e55;

    invoke-direct {p1, p3}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/ur2;->d:Lyads/e55;

    return-void
.end method
