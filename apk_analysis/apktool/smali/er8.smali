.class public final synthetic Ler8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic d:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic h:Landroidx/compose/foundation/text/UndoManager;

.field public final synthetic i:Lnl3;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lnl3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler8;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Ler8;->c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p3, p0, Ler8;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-boolean p4, p0, Ler8;->e:Z

    iput-boolean p5, p0, Ler8;->f:Z

    iput-object p6, p0, Ler8;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p7, p0, Ler8;->h:Landroidx/compose/foundation/text/UndoManager;

    iput-object p8, p0, Ler8;->i:Lnl3;

    iput p9, p0, Ler8;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Ler8;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v1, p0, Ler8;->c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v2, p0, Ler8;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-boolean v3, p0, Ler8;->e:Z

    iget-boolean v4, p0, Ler8;->f:Z

    iget-object v5, p0, Ler8;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v6, p0, Ler8;->h:Landroidx/compose/foundation/text/UndoManager;

    iget-object v7, p0, Ler8;->i:Lnl3;

    iget v8, p0, Ler8;->j:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/TextFieldKeyInputKt;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lnl3;ILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
