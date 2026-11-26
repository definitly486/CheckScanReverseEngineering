.class public final Lpq7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpq7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public g:Z

.field public final h:Lpq7$b;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    const/16 v1, 0x20

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lpq7$a;->a:I

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lpq7$a;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lpq7$a;->c:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lpq7$a;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpq7$a;->f:Z

    iput-boolean v0, p0, Lpq7$a;->g:Z

    sget-object v0, Lpq7$b;->STYLE_DONUT:Lpq7$b;

    iput-object v0, p0, Lpq7$a;->h:Lpq7$b;

    iput p1, p0, Lpq7$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-gez v1, :cond_1

    cmpl-float v0, v0, p2

    if-gtz v0, :cond_0

    cmpg-float v0, p1, p2

    if-ltz v0, :cond_0

    iput p1, p0, Lpq7$a;->d:F

    iput p2, p0, Lpq7$a;->e:F

    return-void

    :cond_0
    const-string p0, "Initial value must be in the range of min .. max"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "minimum value must be less that maximum value"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
