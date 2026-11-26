.class public final synthetic Lu15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 0

    iput p2, p0, Lu15;->b:I

    iput-object p1, p0, Lu15;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lu15;->b:I

    iget-object p0, p0, Lu15;->c:Landroid/widget/LinearLayout;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/l2;

    sget p1, Lcom/my/target/l2;->m:I

    invoke-interface {p0}, Lcom/my/target/h0;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lyads/jg3;

    invoke-static {p0, p1}, Lyads/jg3;->a(Lyads/jg3;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/button/MaterialButtonGroup;

    invoke-static {p0, p1}, Lcom/google/android/material/button/MaterialButtonGroup;->c(Lcom/google/android/material/button/MaterialButtonGroup;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
