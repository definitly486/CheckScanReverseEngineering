.class public final Loi1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ljk7;",
        "Lcom/warefly/checkscan/databinding/ItemChipButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ltr0;


# direct methods
.method public constructor <init>(Ltr0;)V
    .locals 1

    sget-object v0, Lni1;->c:Lni1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Loi1;->b:Ltr0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ljk7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemChipButtonBinding;

    check-cast p2, Ljk7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/ItemChipButtonBinding;->tvChip:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemChipButtonBinding;->getRoot()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lt11;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lt11;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
