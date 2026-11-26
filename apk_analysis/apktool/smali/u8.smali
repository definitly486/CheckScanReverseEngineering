.class public final synthetic Lu8;
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

    iput p2, p0, Lu8;->b:I

    iput-object p1, p0, Lu8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lu8;->b:I

    iget-object p0, p0, Lu8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/a2;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/a2;->b(Lcom/my/tracker/obfuscated/a2;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    invoke-interface {p0}, Landroidx/camera/core/ImageCapture$ScreenFlashListener;->onCompleted()V

    return-void

    :pswitch_1
    check-cast p0, Li80;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, La80;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La80;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/warefly/checkscan/auth/databinding/FragmentAddEmailBinding;

    sget-object v0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;->i:Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment$a;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentAddEmailBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lle9;->e(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
