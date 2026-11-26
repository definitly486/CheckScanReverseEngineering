.class public final Lyads/ec6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:[Lze4;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lxg5;

.field public final c:Ly68;

.field public final d:Lyads/dc6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/ec6;

    const-string v1, "status"

    const-string v2, "getStatus()Lcom/monetization/ads/video/status/VideoAdStatus;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/ec6;->e:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/cc6;->b:Lyads/cc6;

    filled-new-array {v0}, [Lyads/cc6;

    move-result-object v1

    invoke-static {v1}, Lmr7;->k([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lyads/ec6;->a:Ljava/util/Set;

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    iput-object v0, p0, Lyads/ec6;->b:Lxg5;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    iput-object v0, p0, Lyads/ec6;->c:Ly68;

    new-instance v0, Lyads/dc6;

    invoke-direct {v0, p0}, Lyads/dc6;-><init>(Lyads/ec6;)V

    iput-object v0, p0, Lyads/ec6;->d:Lyads/dc6;

    return-void
.end method


# virtual methods
.method public final a()Lyads/cc6;
    .locals 3

    iget-object v0, p0, Lyads/ec6;->d:Lyads/dc6;

    sget-object v1, Lyads/ec6;->e:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsr5;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cc6;

    return-object p0
.end method

.method public final a(Lyads/cc6;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lyads/ec6;->d:Lyads/dc6;

    sget-object v1, Lyads/ec6;->e:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lsr5;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method
