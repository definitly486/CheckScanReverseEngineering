.class public final synthetic Lmu8;
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

    iput p2, p0, Lmu8;->b:I

    iput-object p1, p0, Lmu8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lmu8;->b:I

    iget-object p0, p0, Lmu8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/g2;

    sget p1, Lcom/my/target/g2;->s:I

    iget-object p0, p0, Lcom/my/target/g2;->r:Lcom/my/target/l$a;

    if-eqz p0, :cond_0

    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    const/4 v0, 0x1

    check-cast p0, Lcom/my/target/w2$b;

    invoke-virtual {p0, v0, p1}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->i(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
