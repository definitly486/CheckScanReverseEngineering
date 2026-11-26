.class public final synthetic La90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;

.field public final synthetic c:Lt90$a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;Lt90$a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La90;->b:Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;

    iput-object p2, p0, La90;->c:Lt90$a$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/warefly/checkscan/core/ui/base/dialogs/TextDialog;

    iget-object v0, p0, La90;->b:Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemBankOptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, La90;->c:Lt90$a$a;

    invoke-virtual {p0}, Lt90$a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lt90$a$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/TextDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
