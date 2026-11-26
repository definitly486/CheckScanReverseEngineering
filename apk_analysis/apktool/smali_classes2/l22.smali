.class public final synthetic Ll22;
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

    iput p1, p0, Ll22;->b:I

    iput-object p2, p0, Ll22;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll22;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ll22;->b:I

    iget-object v1, p0, Ll22;->d:Ljava/lang/Object;

    iget-object p0, p0, Ll22;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    check-cast v1, Landroid/view/View;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->a(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/SelectableDates;

    check-cast v1, Ljava/util/Locale;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/DateRangePickerStateImpl$Companion;->b(Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;Ljava/util/List;)Landroidx/compose/material3/DateRangePickerStateImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    check-cast v1, Lmk2;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, v1, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->f(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lmk2;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
