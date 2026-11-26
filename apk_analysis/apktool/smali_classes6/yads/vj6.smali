.class public final Lyads/vj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ok2;


# static fields
.field public static final synthetic c:[Lze4;

.field public static final d:Ljava/util/List;

.field public static final e:Ljava/util/List;

.field public static final f:Ljava/util/List;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/vj6;

    const-string v1, "cacheListener"

    const-string v2, "getCacheListener()Lcom/monetization/ads/nativeads/video/cache/VideoCacheListener;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lze4;

    aput-object v0, v2, v3

    sput-object v2, Lyads/vj6;->c:[Lze4;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/vj6;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lyads/vj6;->e:Ljava/util/List;

    invoke-static {v1, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lyads/vj6;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/vc6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vj6;->a:Ljava/lang/String;

    new-instance p1, Lyads/e55;

    invoke-direct {p1, p2}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/vj6;->b:Lyads/e55;

    return-void
.end method
