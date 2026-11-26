.class public final Lyads/xk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vk2;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    const/16 v1, 0x2800

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Lyads/vk2;

    invoke-direct {v1, v0}, Lyads/vk2;-><init>(I)V

    iput-object v1, p0, Lyads/xk2;->a:Lyads/vk2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lyads/wk2;
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/xk2;->a:Lyads/vk2;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wk2;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lyads/pd3;)V
    .locals 1

    iget-object p0, p0, Lyads/xk2;->a:Lyads/vk2;

    new-instance v0, Lyads/wk2;

    invoke-direct {v0, p2, p3}, Lyads/wk2;-><init>(Landroid/graphics/drawable/Drawable;Lyads/pd3;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
