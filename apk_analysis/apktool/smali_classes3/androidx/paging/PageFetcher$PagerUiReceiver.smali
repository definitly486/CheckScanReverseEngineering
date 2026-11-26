.class public final Landroidx/paging/PageFetcher$PagerUiReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/paging/UiReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PagerUiReceiver"
.end annotation


# instance fields
.field private final retryEventBus:Landroidx/paging/ConflatedEventBus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ConflatedEventBus<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/PageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageFetcher<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcher;Landroidx/paging/ConflatedEventBus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ConflatedEventBus<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/paging/PageFetcher$PagerUiReceiver;->this$0:Landroidx/paging/PageFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/paging/PageFetcher$PagerUiReceiver;->retryEventBus:Landroidx/paging/ConflatedEventBus;

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 2

    iget-object p0, p0, Landroidx/paging/PageFetcher$PagerUiReceiver;->this$0:Landroidx/paging/PageFetcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Landroidx/paging/PageFetcher;->refresh$default(Landroidx/paging/PageFetcher;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public retry()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/PageFetcher$PagerUiReceiver;->retryEventBus:Landroidx/paging/ConflatedEventBus;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Landroidx/paging/ConflatedEventBus;->send(Ljava/lang/Object;)V

    return-void
.end method
