.class public final synthetic Ldn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lbm3;


# direct methods
.method public synthetic constructor <init>(ILbm3;)V
    .locals 0

    iput p1, p0, Ldn4;->b:I

    iput-object p2, p0, Ldn4;->c:Lbm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldn4;->b:I

    iget-object p0, p0, Ldn4;->c:Lbm3;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lyads/jk1;->c(Lbm3;Ljava/lang/Exception;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListCacheWindowScope;->a(Lbm3;Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
