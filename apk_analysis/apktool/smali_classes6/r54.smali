.class public final synthetic Lr54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lr54;->b:I

    iput-object p1, p0, Lr54;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr54;->b:I

    iget-object p0, p0, Lr54;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/uw2;

    invoke-static {p0}, Lyads/uw2;->a(Lyads/uw2;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/pq0;

    invoke-static {p0}, Lyads/pq0;->a(Lyads/pq0;)Lyads/m73;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ls68;

    invoke-static {p0}, Lyads/hc3;->a(Lmb4;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-static {p0}, Landroidx/compose/material3/SheetState;->f(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->Z(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->a(Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
