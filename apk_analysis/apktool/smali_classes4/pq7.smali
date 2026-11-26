.class public final Lpq7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpq7$a;,
        Lpq7$c;,
        Lpq7$b;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:I

.field public c:F

.field public final d:F

.field public final e:F

.field public final f:Z

.field public final g:Z

.field public final h:Lpq7$b;

.field public i:Landroid/graphics/PointF;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpq7$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpq7$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lpq7$a;->a:I

    iput v0, p0, Lpq7;->a:I

    iget v0, p1, Lpq7$a;->b:I

    iput v0, p0, Lpq7;->b:I

    iget v0, p1, Lpq7$a;->c:F

    iput v0, p0, Lpq7;->c:F

    iget v0, p1, Lpq7$a;->d:F

    iput v0, p0, Lpq7;->d:F

    iget v0, p1, Lpq7$a;->e:F

    iput v0, p0, Lpq7;->e:F

    iget-boolean v0, p1, Lpq7$a;->f:Z

    iput-boolean v0, p0, Lpq7;->f:Z

    iget-boolean v0, p1, Lpq7$a;->g:Z

    iput-boolean v0, p0, Lpq7;->g:Z

    iget-object p1, p1, Lpq7$a;->h:Lpq7$b;

    iput-object p1, p0, Lpq7;->h:Lpq7$b;

    const/4 p1, 0x0

    iput-object p1, p0, Lpq7;->i:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lpq7;->i:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lpq7;->i:Landroid/graphics/PointF;

    :cond_0
    return-object v0
.end method
