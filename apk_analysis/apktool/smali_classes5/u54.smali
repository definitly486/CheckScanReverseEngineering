.class public final synthetic Lu54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu54;->b:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->f:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog$a;

    if-nez p2, :cond_0

    iget-object p0, p0, Lu54;->b:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerDialog;->e()Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;->checkMinutesZeroShouldBeAdded()V

    :cond_0
    return-void
.end method
