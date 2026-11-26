.class public final synthetic Liq2;
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

    .line 9
    iput p2, p0, Liq2;->b:I

    iput-object p1, p0, Liq2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Llga;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Liq2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Liq2;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Liq2;->b:I

    iget-object p0, p0, Liq2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    const-string v0, "request_id"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "WebFormVKBridgeParser: json is null, parsing requestId has been failed"

    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {v2, v3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/tapjoy/TJSetUserIDListener;

    invoke-static {p0}, Lcom/tapjoy/TJUser;->b(Lcom/tapjoy/TJSetUserIDListener;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    invoke-static {p0}, Landroidx/compose/material/ripple/RippleHostView;->a(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    sget-object v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->j:[Lze4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lle9;->e(Landroid/view/View;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
