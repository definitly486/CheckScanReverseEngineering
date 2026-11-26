.class public final synthetic Lq96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq96;->b:I

    iput-object p1, p0, Lq96;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lq96;->b:I

    iget-object p0, p0, Lq96;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    sget-object v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->j:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lle9;->e(Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeEnterBinding;

    sget-object v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;->e:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$a;

    iget-object p0, p0, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeEnterBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lle9;->e(Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/video/VideoSink$Listener;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
