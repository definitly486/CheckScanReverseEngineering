.class public final Lcom/my/target/ads/MyTargetView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/MyTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final d:Lcom/my/target/ads/MyTargetView$a;

.field public static final e:Lcom/my/target/ads/MyTargetView$a;

.field public static final f:Lcom/my/target/ads/MyTargetView$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/my/target/ads/MyTargetView$a;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/16 v3, 0x140

    invoke-direct {v0, v3, v1, v2}, Lcom/my/target/ads/MyTargetView$a;-><init>(III)V

    sput-object v0, Lcom/my/target/ads/MyTargetView$a;->d:Lcom/my/target/ads/MyTargetView$a;

    new-instance v0, Lcom/my/target/ads/MyTargetView$a;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-direct {v0, v3, v1, v2}, Lcom/my/target/ads/MyTargetView$a;-><init>(III)V

    sput-object v0, Lcom/my/target/ads/MyTargetView$a;->e:Lcom/my/target/ads/MyTargetView$a;

    new-instance v0, Lcom/my/target/ads/MyTargetView$a;

    const/16 v1, 0x5a

    const/4 v2, 0x2

    const/16 v3, 0x2d8

    invoke-direct {v0, v3, v1, v2}, Lcom/my/target/ads/MyTargetView$a;-><init>(III)V

    sput-object v0, Lcom/my/target/ads/MyTargetView$a;->f:Lcom/my/target/ads/MyTargetView$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/my/target/ads/MyTargetView$a;->a:I

    .line 14
    iput p2, p0, Lcom/my/target/ads/MyTargetView$a;->b:I

    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lcom/my/target/ads/MyTargetView$a;->c:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/my/target/ads/MyTargetView$a;->a:I

    iput p2, p0, Lcom/my/target/ads/MyTargetView$a;->b:I

    sget p1, Ll3a$a;->a:F

    iput p3, p0, Lcom/my/target/ads/MyTargetView$a;->c:I

    return-void
.end method

.method public static a(Lcom/my/target/ads/MyTargetView$a;Lcom/my/target/ads/MyTargetView$a;)Z
    .locals 2

    iget v0, p0, Lcom/my/target/ads/MyTargetView$a;->b:I

    iget v1, p1, Lcom/my/target/ads/MyTargetView$a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/my/target/ads/MyTargetView$a;->a:I

    iget v1, p1, Lcom/my/target/ads/MyTargetView$a;->a:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/my/target/ads/MyTargetView$a;->c:I

    iget p1, p1, Lcom/my/target/ads/MyTargetView$a;->c:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/my/target/ads/MyTargetView$a;
    .locals 5

    invoke-static {p0}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr p0, v1

    sget v1, Ll3a$a;->a:F

    const/high16 v2, 0x44030000    # 524.0f

    cmpl-float v2, v0, v2

    const/high16 v3, 0x42480000    # 50.0f

    if-lez v2, :cond_0

    const/high16 v2, 0x44360000    # 728.0f

    div-float v2, v0, v2

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v2, v4

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43a00000    # 320.0f

    div-float v2, v0, v2

    mul-float/2addr v2, v3

    :goto_0
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float/2addr v3, v1

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    new-instance v2, Lcom/my/target/ads/MyTargetView$a;

    div-float/2addr v0, v1

    float-to-int v0, v0

    div-float/2addr p0, v1

    float-to-int p0, p0

    invoke-direct {v2, v0, p0}, Lcom/my/target/ads/MyTargetView$a;-><init>(II)V

    return-object v2
.end method
