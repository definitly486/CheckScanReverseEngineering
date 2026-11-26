.class public final Lob;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lub;",
        "Lcom/warefly/checkscan/auth/databinding/ItemRvAuthAgreementBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lv05;

.field public final c:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;


# direct methods
.method public constructor <init>(Lv05;Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)V
    .locals 1

    sget-object v0, Lnb;->c:Lnb;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lob;->b:Lv05;

    iput-object p2, p0, Lob;->c:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lub;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/auth/databinding/ItemRvAuthAgreementBinding;

    check-cast p2, Lub;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/auth/databinding/ItemRvAuthAgreementBinding;->tvAgreement:Landroid/widget/TextView;

    iget-object v1, p2, Lub;->b:Ljava/lang/String;

    iget-object v2, p0, Lob;->b:Lv05;

    invoke-virtual {v2, v0, v1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/ItemRvAuthAgreementBinding;->cbAgreement:Landroid/widget/CheckBox;

    iget-boolean v0, p2, Lub;->c:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Llb7;

    new-instance v1, Lpb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lpb;-><init>(Lil2;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
