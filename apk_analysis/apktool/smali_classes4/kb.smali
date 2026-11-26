.class public final synthetic Lkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkb;->b:I

    iput-object p2, p0, Lkb;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkb;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lkb;->b:I

    iget-object v1, p0, Lkb;->d:Ljava/lang/Object;

    iget-object p0, p0, Lkb;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nm;

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Lyads/nm;->c(Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    check-cast p0, Lug6;

    check-cast v1, Lcom/google/firebase/remoteconfig/ConfigUpdate;

    invoke-static {p0, v1}, Lcom/google/firebase/remoteconfig/RemoteConfigKt$configUpdates$1$registration$1;->a(Lug6;Lcom/google/firebase/remoteconfig/ConfigUpdate;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;->a(Landroidx/window/embedding/ExtensionEmbeddingBackend$SplitListenerWrapper;Ljava/util/ArrayList;)V

    return-void

    :pswitch_2
    check-cast p0, Lgo1;

    check-cast v1, Lcom/google/common/collect/i;

    invoke-virtual {p0, v1}, Llb;->p(Lcom/google/common/collect/i;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
