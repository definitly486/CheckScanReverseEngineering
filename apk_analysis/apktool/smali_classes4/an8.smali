.class public final Lan8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;

.field public final synthetic g:Lcn8;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;Lcn8;)V
    .locals 0

    iput-object p1, p0, Lan8;->f:Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;

    iput-object p2, p0, Lan8;->g:Lcn8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Li80$a;

    iget-object v0, p0, Lan8;->f:Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v1}, Li80$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0604fc

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p1, Li80$a;->l:I

    invoke-virtual {p1}, Li80$a;->f()V

    invoke-virtual {p1}, Li80$a;->d()V

    iget-object p0, p0, Lan8;->g:Lcn8;

    iget-object p0, p0, Lcn8;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Li80$a;->n:Ljava/lang/CharSequence;

    const/high16 p0, 0x41600000    # 14.0f

    iput p0, p1, Li80$a;->p:F

    sget-object p0, Lbs;->ALIGN_ANCHOR:Lbs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Li80$a;->i:Lbs;

    invoke-virtual {p1}, Li80$a;->a()V

    invoke-virtual {p1}, Li80$a;->b()V

    invoke-virtual {p1}, Li80$a;->e()V

    invoke-virtual {p1}, Li80$a;->c()V

    const p0, 0x7f060036

    invoke-static {v1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Li80$a;->o:I

    new-instance p0, Li80;

    invoke-direct {p0, v1, p1}, Li80;-><init>(Landroid/content/Context;Li80$a;)V

    iget-object p1, v0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDisclaimerBinding;->ivTooltip:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lv80;

    sget-object v1, Lk80;->TOP:Lk80;

    invoke-direct {v0, p1, v1}, Lv80;-><init>(Landroid/view/View;Lk80;)V

    iget-object p1, v0, Lv80;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Li80;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Le80;

    invoke-direct {v1, p0, p1, v0}, Le80;-><init>(Li80;Landroid/view/View;Lv80;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
