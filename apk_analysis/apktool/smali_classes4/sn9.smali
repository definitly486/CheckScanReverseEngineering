.class public final synthetic Lsn9;
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

    iput p2, p0, Lsn9;->b:I

    iput-object p1, p0, Lsn9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lsn9;->b:I

    iget-object p0, p0, Lsn9;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/my/target/k1;

    invoke-virtual {p0}, Lcom/my/target/k1;->c()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/e;

    iget-object p0, p0, Lcom/my/target/e;->b:Lcom/my/target/y0;

    invoke-virtual {p0}, Lcom/my/target/y0;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
