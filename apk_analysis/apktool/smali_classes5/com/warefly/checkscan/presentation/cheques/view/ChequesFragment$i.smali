.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showPoll(Lz96;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemPollVariantBinding;",
        "Lz96$a;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/databinding/ItemPollBinding;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

.field public final synthetic h:Lz96;


# direct methods
.method public constructor <init>(Lz96;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V
    .locals 0

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;->f:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;->g:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;->h:Lz96;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemPollVariantBinding;

    move-object v5, p2

    check-cast v5, Lz96$a;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemPollVariantBinding;->rb:Landroid/widget/RadioButton;

    iget-object p3, v5, Lz96$a;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemPollVariantBinding;->rb:Landroid/widget/RadioButton;

    iget-boolean p2, v5, Lz96$a;->d:Z

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean p1, v5, Lz96$a;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;->f:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemPollBinding;->btnComplete:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;->g:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {v4}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p1

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->viewPoll:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    iget-object v2, v3, Lcom/warefly/checkscan/databinding/ItemPollBinding;->btnComplete:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Llb7;

    new-instance v0, Luh1;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;->h:Lz96;

    invoke-direct/range {v0 .. v5}, Luh1;-><init>(Lz96;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lz96$a;)V

    invoke-direct {p1, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
