.class public final synthetic Landroidx/paging/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/paging/SimpleProducerScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/paging/SimpleProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/b;->b:Landroidx/paging/SimpleProducerScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/paging/b;->b:Landroidx/paging/SimpleProducerScope;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Landroidx/paging/CancelableChannelFlowKt$cancelableChannelFlow$1;->g(Landroidx/paging/SimpleProducerScope;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method
