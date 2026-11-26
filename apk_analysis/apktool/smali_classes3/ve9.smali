.class public final Lve9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final b:Landroid/view/View;

.field public c:Lse9;

.field public d:Ls68;

.field public e:Lte9;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lve9;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lve9;->e:Lte9;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lve9;->f:Z

    iget-object p0, p1, Lte9;->b:Lsy6;

    iget-object p1, p1, Lte9;->c:Lb24;

    iget-object v0, p0, Lsy6;->b:Lkz1;

    iget-object v1, p0, Lsy6;->a:Lsy6$a;

    iget-object v1, v1, Lsy6$a;->c:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo22;

    new-instance v2, Lty6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lty6;-><init>(Lsy6;Lb24;Le02;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p0

    invoke-static {p1, p0}, Lcz6;->a(Lb24;Lnk2;)Lep2;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lve9;->e:Lte9;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lte9;->c()V

    :cond_0
    return-void
.end method
