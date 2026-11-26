.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->showButtonEnabled(ZLdy0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

.field public final synthetic g:Ldy0;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;Ldy0;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;->f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;->g:Ldy0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;->f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    iget-object v0, p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e:Lnl3;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;->g:Ldy0;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
