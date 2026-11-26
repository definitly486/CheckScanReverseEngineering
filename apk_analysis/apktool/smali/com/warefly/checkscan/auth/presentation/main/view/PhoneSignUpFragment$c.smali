.class public final Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$c;->f:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Landroidx/core/graphics/Insets;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$c;->f:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->nestedScrolledView:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p2, Landroidx/core/graphics/Insets;->bottom:I

    const/16 p2, 0x2c

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->nestedScrolledView:Landroidx/core/widget/NestedScrollView;

    const/high16 p1, -0x3dd00000    # -44.0f

    invoke-static {p1}, Lpl2;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->nestedScrolledView:Landroidx/core/widget/NestedScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
