.class public final Lua;
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
.field public final synthetic f:Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;

.field public final synthetic g:Lxa;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;Lxa;)V
    .locals 0

    iput-object p1, p0, Lua;->f:Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;

    iput-object p2, p0, Lua;->g:Lxa;

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

    iget-object v0, p0, Lua;->f:Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    iget-object p0, p0, Lua;->g:Lxa;

    iget-object p0, p0, Lxa;->f:Lxa$d;

    iget-object p0, p0, Lxa$d;->b:Ljava/lang/String;

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

    const p0, 0x7f0600c4

    invoke-static {v1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    iput p0, p1, Li80$a;->o:I

    new-instance p0, Li80;

    invoke-direct {p0, v1, p1}, Li80;-><init>(Landroid/content/Context;Li80$a;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemRvAdvancePromoSelectCardBinding;->ivCategoriesInfo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Li80;->j(Li80;Landroid/view/View;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
