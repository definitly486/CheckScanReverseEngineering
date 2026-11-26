.class public final synthetic Lfb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lfb2;->b:I

    iput-object p2, p0, Lfb2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfb2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lfb2;->b:I

    iget-object v1, p0, Lfb2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfb2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/pm6;

    check-cast v1, Lyads/tm6;

    invoke-static {p0, v1}, Lyads/pm6;->a(Lyads/pm6;Lyads/tm6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast v1, Lyads/gf0;

    invoke-static {p0, v1}, Lyads/gf0;->b(Landroid/content/Context;Lyads/gf0;)Lyads/rf0;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    invoke-static {p0, v1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolderKt;->a(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Landroidx/compose/runtime/saveable/SaveableStateHolder;)Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    check-cast v1, Ly22;

    invoke-static {v1, p0}, Landroidx/compose/material3/DateRangePickerKt;->h(Ly22;Landroidx/compose/foundation/lazy/LazyListState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
