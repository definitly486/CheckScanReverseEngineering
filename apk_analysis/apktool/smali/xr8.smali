.class public final synthetic Lxr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lq07;

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field public final synthetic d:Lq07;


# direct methods
.method public synthetic constructor <init>(Lq07;Lq07;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr8;->b:Lq07;

    iput-object p3, p0, Lxr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iput-object p2, p0, Lxr8;->d:Lq07;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-object v1, p0, Lxr8;->d:Lq07;

    iget-object p0, p0, Lxr8;->b:Lq07;

    invoke-static {p0, v1, v0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->h(Lq07;Lq07;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Lj59;

    move-result-object p0

    return-object p0
.end method
