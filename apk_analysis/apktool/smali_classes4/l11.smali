.class public final synthetic Ll11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll11;->d:Ljava/lang/Object;

    iput-object p2, p0, Ll11;->e:Ljava/lang/Object;

    iput p3, p0, Ll11;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tapjoy/TJCurrency;ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Ll11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll11;->d:Ljava/lang/Object;

    iput p2, p0, Ll11;->c:I

    iput-object p3, p0, Ll11;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll11;->b:I

    iget-object v1, p0, Ll11;->e:Ljava/lang/Object;

    iget v2, p0, Ll11;->c:I

    iget-object p0, p0, Ll11;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/TJCurrency;

    check-cast v1, Lcom/tapjoy/TJAwardCurrencyListener;

    invoke-virtual {p0, v2, v1}, Lcom/tapjoy/TJCurrency;->a(ILcom/tapjoy/TJAwardCurrencyListener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1, v2}, Landroidx/camera/core/impl/CameraPresenceProvider;->j(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/util/List;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
