.class public final synthetic Lyd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lyd0;->b:I

    iput-object p1, p0, Lyd0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lyd0;->b:I

    iget-object p0, p0, Lyd0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->c(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->c(Lnl3;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
