.class public final synthetic Llj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/material3/SearchBarState;Ljava/lang/String;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Llj7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj7;->c:Ljava/lang/Object;

    iput-object p2, p0, Llj7;->e:Ljava/lang/Object;

    iput-object p3, p0, Llj7;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lll3;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lll3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Llj7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj7;->c:Ljava/lang/Object;

    iput-object p2, p0, Llj7;->d:Ljava/lang/Object;

    iput-object p3, p0, Llj7;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/vq0;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Llj7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj7;->d:Ljava/lang/Object;

    iput-object p2, p0, Llj7;->e:Ljava/lang/Object;

    iput-object p3, p0, Llj7;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Llj7;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llj7;->d:Ljava/lang/Object;

    check-cast v0, Lyads/vq0;

    iget-object v1, p0, Llj7;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lyads/u66;

    iget-object p0, p0, Llj7;->e:Ljava/lang/Object;

    invoke-static {v0, p0, v1, p1}, Lyads/wy0;->a(Lyads/vq0;Ljava/lang/Object;Ljava/lang/String;Lyads/u66;)Lyads/u66;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Llj7;->c:Ljava/lang/Object;

    check-cast v0, Lll3;

    iget-object v1, p0, Llj7;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-object p0, p0, Llj7;->e:Ljava/lang/Object;

    check-cast p0, Lll3;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionStateKt;->a(Lll3;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lll3;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Llj7;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Llj7;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/material3/SearchBarState;

    iget-object p0, p0, Llj7;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/material3/SearchBarDefaults;->h(Ljava/lang/String;Landroidx/compose/material3/SearchBarState;Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
