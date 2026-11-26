.class public final Lyads/mt4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:[Lze4;


# instance fields
.field public final a:Lyads/nt4;

.field public final b:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/mt4;

    const-string v1, "loadController"

    const-string v2, "getLoadController()Lcom/monetization/ads/base/BaseAdLoadController;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/mt4;->c:[Lze4;

    return-void
.end method

.method public constructor <init>(Lyads/pp;Lyads/o54;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/nt4;

    invoke-direct {v0, p2}, Lyads/nt4;-><init>(Lyads/o54;)V

    iput-object v0, p0, Lyads/mt4;->a:Lyads/nt4;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/mt4;->b:Lyads/e55;

    return-void
.end method
