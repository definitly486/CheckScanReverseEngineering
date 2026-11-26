.class public final synthetic Lan9;
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

    iput p2, p0, Lan9;->b:I

    iput-object p1, p0, Lan9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lan9;->b:I

    iget-object p0, p0, Lan9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wa;

    invoke-static {p0, p1}, Lyads/wa;->a(Lyads/wa;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/a2;

    invoke-static {p0, p1}, Lyads/a2;->a(Lyads/a2;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
