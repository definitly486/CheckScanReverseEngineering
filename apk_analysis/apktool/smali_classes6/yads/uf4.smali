.class public final Lyads/uf4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/Object;

.field public static volatile e:Lyads/uf4;


# instance fields
.field public final a:Ly22;

.field public b:Z

.field public c:Lmb4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/uf4;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/uf4;->a:Ly22;

    return-void
.end method

.method public static final a(Lyads/uf4;Landroid/view/View;)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lyads/uf4;->b:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lyads/uf4;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lyads/b45;

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lyads/uf4;->b:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v0, p0, Lyads/uf4;->b:Z

    :cond_1
    iget-object p2, p0, Lyads/uf4;->c:Lmb4;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iget-object p2, p0, Lyads/uf4;->a:Ly22;

    new-instance v1, Lyads/tf4;

    invoke-direct {v1, p0, p1, v0}, Lyads/tf4;-><init>(Lyads/uf4;Landroid/view/View;Le02;)V

    const/4 p1, 0x3

    invoke-static {p2, v0, v0, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lyads/uf4;->c:Lmb4;

    :cond_3
    return-void
.end method
