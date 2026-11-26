.class public final Lxl6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxl6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lyl6;",
        "Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 1

    sget-object v0, Lwl6;->c:Lwl6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lxl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lyl6;

    return p0
.end method

.method public final h(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;->btnLogout:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lvc1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lvc1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;

    check-cast p2, Lyl6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;->btnLogout:Landroid/widget/TextView;

    iget-object p1, p2, Lyl6;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileButtonBinding;->btnLogout:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
