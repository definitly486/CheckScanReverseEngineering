.class public final Lyads/ic4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:[Lze4;


# instance fields
.field public final a:Lyads/wc4;

.field public final b:Lyads/oc4;

.field public final c:Lyads/e55;

.field public d:Lyads/dw3;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/ic4;

    const-string v1, "viewPager"

    const-string v2, "getViewPager()Landroidx/viewpager2/widget/ViewPager2;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/ic4;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/wc4;Lyads/oc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ic4;->a:Lyads/wc4;

    iput-object p3, p0, Lyads/ic4;->b:Lyads/oc4;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/ic4;->c:Lyads/e55;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/ic4;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/ic4;->d:Lyads/dw3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lyads/dw3;->b:Lmb4;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, v0, Lyads/dw3;->b:Lmb4;

    :cond_1
    iput-object v1, p0, Lyads/ic4;->d:Lyads/dw3;

    return-void
.end method
