.class public final synthetic Lf09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lh09;

.field public final synthetic c:Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;


# direct methods
.method public synthetic constructor <init>(Lh09;Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf09;->b:Lh09;

    iput-object p2, p0, Lf09;->c:Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, Lf09;->b:Lh09;

    iget-object p0, p0, Lf09;->c:Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lh09;->c:Lbd;

    if-nez p2, :cond_0

    new-instance p2, Lbd;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li09;

    invoke-direct {v1, p1}, Li09;-><init>(Lh09;)V

    invoke-direct {p2, v0, v1}, Lbd;-><init>(Landroid/widget/EditText;Li09;)V

    iput-object p2, p1, Lh09;->c:Lbd;

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferAmountInputBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p1, p1, Lh09;->c:Lbd;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
