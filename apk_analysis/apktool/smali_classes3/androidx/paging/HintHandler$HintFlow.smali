.class final Landroidx/paging/HintHandler$HintFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/HintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HintFlow"
.end annotation


# instance fields
.field private final _flow:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/HintHandler;

.field private value:Landroidx/paging/ViewportHint;


# direct methods
.method public constructor <init>(Landroidx/paging/HintHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/HintHandler$HintFlow;->this$0:Landroidx/paging/HintHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcu0;->DROP_OLDEST:Lcu0;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/HintHandler$HintFlow;->_flow:Lvg5;

    return-void
.end method


# virtual methods
.method public final getFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/HintHandler$HintFlow;->_flow:Lvg5;

    return-object p0
.end method

.method public final getValue()Landroidx/paging/ViewportHint;
    .locals 0

    iget-object p0, p0, Landroidx/paging/HintHandler$HintFlow;->value:Landroidx/paging/ViewportHint;

    return-object p0
.end method

.method public final setValue(Landroidx/paging/ViewportHint;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/HintHandler$HintFlow;->value:Landroidx/paging/ViewportHint;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/paging/HintHandler$HintFlow;->_flow:Lvg5;

    invoke-interface {p0, p1}, Lvg5;->e(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
