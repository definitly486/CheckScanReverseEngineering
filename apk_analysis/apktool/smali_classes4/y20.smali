.class public final synthetic Ly20;
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

    iput p2, p0, Ly20;->b:I

    iput-object p1, p0, Ly20;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Ly20;->b:I

    iget-object p0, p0, Ly20;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/oa;

    sget p1, Lcom/my/target/oa;->e:I

    iget-object p1, p0, Lcom/my/target/oa;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/fo2;

    invoke-static {p0, p1}, Lyads/fo2;->a(Lyads/fo2;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, La87;

    invoke-virtual {p0}, La87;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
