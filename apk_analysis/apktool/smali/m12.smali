.class public final synthetic Lm12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic c:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lnl3;

.field public final synthetic g:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic h:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic i:Landroidx/compose/ui/unit/Density;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLnl3;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm12;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Lm12;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-boolean p3, p0, Lm12;->d:Z

    iput-boolean p4, p0, Lm12;->e:Z

    iput-object p5, p0, Lm12;->f:Lnl3;

    iput-object p6, p0, Lm12;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p7, p0, Lm12;->h:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p8, p0, Lm12;->i:Landroidx/compose/ui/unit/Density;

    iput p9, p0, Lm12;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lm12;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v1, p0, Lm12;->c:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-boolean v2, p0, Lm12;->d:Z

    iget-boolean v3, p0, Lm12;->e:Z

    iget-object v4, p0, Lm12;->f:Lnl3;

    iget-object v5, p0, Lm12;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v6, p0, Lm12;->h:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v7, p0, Lm12;->i:Landroidx/compose/ui/unit/Density;

    iget v8, p0, Lm12;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/CoreTextFieldKt;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLnl3;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
