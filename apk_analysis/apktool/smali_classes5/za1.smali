.class public final Lza1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lgc1;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;)V
    .locals 1

    sget-object v0, Lya1;->c:Lya1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lza1;->b:Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lgc1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;

    check-cast p2, Lgc1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskCheckboxBinding;->cbAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    iget-boolean v0, p2, Lgc1;->d:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v0, p2, Lgc1;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lsx3;->a:I

    iget-object v0, p2, Lgc1;->b:Ljava/lang/String;

    invoke-static {v0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lx61;->a:Lx61;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Llb7;

    new-instance v1, Lab1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p2}, Lab1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
