.class public final Llh4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lmh4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingAgreementBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv05;

.field public final c:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;


# direct methods
.method public constructor <init>(Lv05;Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkh4;->c:Lkh4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Llh4;->b:Lv05;

    iput-object p2, p0, Llh4;->c:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lmh4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingAgreementBinding;

    check-cast p2, Lmh4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingAgreementBinding;->cbAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    iget-boolean v0, p2, Lmh4;->d:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Llh4;->b:Lv05;

    iget-object v1, p2, Lmh4;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    new-instance v0, Llb7;

    new-instance v1, Lja3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lja3;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p0, p2, Lmh4;->e:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
