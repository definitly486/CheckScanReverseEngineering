.class public final synthetic Lwo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo1;->b:Ly22;

    iput-object p2, p0, Lwo1;->c:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lwo1;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lwo1;->c:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lwo1;->d:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object p0, p0, Lwo1;->b:Ly22;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt;->c(Ly22;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0
.end method
