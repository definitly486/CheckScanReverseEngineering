.class public final synthetic Lw92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lw92;->b:I

    iput-object p1, p0, Lw92;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lw92;->b:I

    iget-object p0, p0, Lw92;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/vn0;

    invoke-static {p0, p1}, Lyads/vn0;->b(Lyads/vn0;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->d(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
