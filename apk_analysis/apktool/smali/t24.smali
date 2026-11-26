.class public final synthetic Lt24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lt24;->b:I

    iput p3, p0, Lt24;->c:I

    iput-object p1, p0, Lt24;->d:Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt24;->d:Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;

    check-cast p1, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    iget v1, p0, Lt24;->b:I

    iget p0, p0, Lt24;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->a(IILandroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Landroidx/compose/foundation/text/input/TextFieldBuffer;)Lj59;

    move-result-object p0

    return-object p0
.end method
