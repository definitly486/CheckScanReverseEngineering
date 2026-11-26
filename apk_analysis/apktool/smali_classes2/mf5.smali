.class public final synthetic Lmf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lmf5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lmf5;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/cd1;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->z(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-static {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->e(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)Landroidx/compose/ui/text/input/EditCommand;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->L(Ljava/lang/Object;)Landroidx/compose/ui/graphics/Shadow;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-static {p1}, Landroidx/navigation/Navigator;->a(Landroidx/navigation/NavOptionsBuilder;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/navigation/Navigation;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    invoke-static {p1}, Landroidx/compose/ui/text/MultiParagraphKt;->a(Landroidx/compose/ui/text/ParagraphInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
