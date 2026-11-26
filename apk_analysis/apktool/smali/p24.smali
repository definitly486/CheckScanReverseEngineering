.class public final synthetic Lp24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp24;->b:Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;

    iput p2, p0, Lp24;->c:I

    iput p3, p0, Lp24;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lp24;->d:I

    check-cast p1, Landroidx/compose/foundation/text/input/TextFieldBuffer;

    iget v1, p0, Lp24;->c:I

    iget-object p0, p0, Lp24;->b:Landroidx/compose/foundation/text/input/internal/ImeEditCommandScope;

    invoke-static {v1, v0, p0, p1}, Landroidx/compose/foundation/text/input/internal/ImeEditCommand_androidKt;->e(IILandroidx/compose/foundation/text/input/internal/ImeEditCommandScope;Landroidx/compose/foundation/text/input/TextFieldBuffer;)Lj59;

    move-result-object p0

    return-object p0
.end method
