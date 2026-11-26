.class public final Lw09;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lx09;",
        "Lcom/warefly/checkscan/databinding/ItemRvSbpTransferDescriptionBinding;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lx09;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferDescriptionBinding;

    check-cast p2, Lx09;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    sget v0, Lsx3;->a:I

    iget-object p2, p2, Lx09;->a:Ljava/lang/String;

    invoke-static {p2}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    sget-object p1, Lx61;->a:Lx61;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
