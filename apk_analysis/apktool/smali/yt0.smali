.class public final synthetic Lyt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lyt0;->b:I

    iput-object p2, p0, Lyt0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lyt0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyt0;->b:I

    iget-object v1, p0, Lyt0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyt0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/vq0;

    check-cast v1, Lnl3;

    check-cast p1, Lyads/u66;

    invoke-static {p0, v1, p1}, Lyads/ty0;->a(Lyads/vq0;Lnl3;Lyads/u66;)Lyads/u66;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lbm3;

    check-cast v1, Landroidx/compose/animation/core/TwoWayConverter;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Lbm3;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ly22;

    check-cast v1, Landroidx/compose/ui/platform/Clipboard;

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->l(Ly22;Landroidx/compose/ui/platform/Clipboard;Landroidx/compose/ui/text/AnnotatedString;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lnl3;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Landroidx/compose/foundation/text/KeyboardActionScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/SearchBarDefaults;->d(Lnl3;Ljava/lang/String;Landroidx/compose/foundation/text/KeyboardActionScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/util/List;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-interface {p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    check-cast v1, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a(Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;Landroidx/compose/foundation/gestures/ContentInViewNode$Request;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
