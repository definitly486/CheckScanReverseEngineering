.class public final Lnl6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lpl6;",
        "Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 1

    sget-object v0, Lml6;->c:Lml6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lnl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lpl6;

    return p0
.end method

.method public final h(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnCopy:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lja3;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lja3;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnShare:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lol6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lol6;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    check-cast p2, Lpl6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lpl6;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvInviteCode:Landroid/widget/TextView;

    iget-object v0, p2, Lpl6;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvInviteCode:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnCopy:Landroid/widget/TextView;

    iget-object v0, p2, Lpl6;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnShare:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object v0, p2, Lpl6;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnShare:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnShare:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-boolean p1, p2, Lpl6;->e:Z

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final k(Landroidx/viewbinding/ViewBinding;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnCopy:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvInviteCode:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
