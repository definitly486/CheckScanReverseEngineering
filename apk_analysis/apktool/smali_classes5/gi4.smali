.class public final Lgi4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lhi4;",
        "Lcom/warefly/checkscan/databinding/ItemRvLandingCheckboxBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V
    .locals 1

    sget-object v0, Lei4;->c:Lei4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lgi4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lhi4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCheckboxBinding;

    check-cast p2, Lhi4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingCheckboxBinding;->cb:Lcom/warefly/checkscan/core/ui/CheckBox;

    iget-boolean v0, p2, Lhi4;->d:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p2, Lhi4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lfi4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lfi4;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p0, p2, Lhi4;->e:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
