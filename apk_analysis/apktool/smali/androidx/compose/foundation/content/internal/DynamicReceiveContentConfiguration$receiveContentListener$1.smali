.class public final Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/content/ReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;-><init>(Landroidx/compose/foundation/content/ReceiveContentNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private nodeEnterCount:I

.field final synthetic this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-virtual {v0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->getReceiveContentNode()Landroidx/compose/foundation/content/ReceiveContentNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/content/ReceiveContentNode;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/content/ReceiveContentListener;->onDragEnd()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->nodeEnterCount:I

    return-void
.end method

.method public onDragEnter()V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->nodeEnterCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->nodeEnterCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-virtual {v0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->getReceiveContentNode()Landroidx/compose/foundation/content/ReceiveContentNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/content/ReceiveContentNode;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/content/ReceiveContentListener;->onDragEnter()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-static {p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->access$getParentReceiveContentListener(Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;)Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/foundation/content/ReceiveContentListener;->onDragEnter()V

    :cond_1
    return-void
.end method

.method public onDragExit()V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->nodeEnterCount:I

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->nodeEnterCount:I

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-virtual {v0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->getReceiveContentNode()Landroidx/compose/foundation/content/ReceiveContentNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/content/ReceiveContentNode;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/content/ReceiveContentListener;->onDragExit()V

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-static {p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->access$getParentReceiveContentListener(Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;)Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/compose/foundation/content/ReceiveContentListener;->onDragExit()V

    :cond_2
    return-void
.end method

.method public onDragStart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->nodeEnterCount:I

    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-virtual {p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->getReceiveContentNode()Landroidx/compose/foundation/content/ReceiveContentNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/content/ReceiveContentNode;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/content/ReceiveContentListener;->onDragStart()V

    return-void
.end method

.method public onReceive(Landroidx/compose/foundation/content/TransferableContent;)Landroidx/compose/foundation/content/TransferableContent;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-virtual {v0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->getReceiveContentNode()Landroidx/compose/foundation/content/ReceiveContentNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/content/ReceiveContentNode;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/content/ReceiveContentListener;->onReceive(Landroidx/compose/foundation/content/TransferableContent;)Landroidx/compose/foundation/content/TransferableContent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;->this$0:Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-static {p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->access$getParentReceiveContentListener(Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;)Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p0, p1}, Landroidx/compose/foundation/content/ReceiveContentListener;->onReceive(Landroidx/compose/foundation/content/TransferableContent;)Landroidx/compose/foundation/content/TransferableContent;

    move-result-object p0

    return-object p0
.end method
