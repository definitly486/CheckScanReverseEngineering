.class public final Ljm6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljm6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lkm6;",
        "Lcom/warefly/checkscan/profile/databinding/ItemRvProfilePrivatePolicyBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 1

    sget-object v0, Lim6;->c:Lim6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ljm6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkm6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfilePrivatePolicyBinding;

    check-cast p2, Lkm6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfilePrivatePolicyBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lkm6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfilePrivatePolicyBinding;->getRoot()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lfi4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lfi4;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
