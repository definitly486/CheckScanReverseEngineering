.class public final Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Landroidx/core/graphics/Insets;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$b;->f:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/core/graphics/Insets;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$b;->f:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    if-eqz p1, :cond_1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
