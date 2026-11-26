.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/util/calendar/calendar/b;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/util/calendar/calendar/b;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$b;->f:Lcom/warefly/checkscan/util/calendar/calendar/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$b;->f:Lcom/warefly/checkscan/util/calendar/calendar/b;

    iput-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->i:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    iget-object p0, p0, Lcom/warefly/checkscan/util/calendar/calendar/b;->y:Lcom/warefly/checkscan/util/calendar/calendar/b$a;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f(Lcom/warefly/checkscan/util/calendar/calendar/b$a;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
