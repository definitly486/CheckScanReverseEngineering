.class public final synthetic Lv12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/text/input/TextInputService;

.field public final synthetic f:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic g:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic h:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic i:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic j:Ly22;

.field public final synthetic k:Landroidx/compose/foundation/relocation/BringIntoViewRequester;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ly22;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-boolean p2, p0, Lv12;->c:Z

    iput-boolean p3, p0, Lv12;->d:Z

    iput-object p4, p0, Lv12;->e:Landroidx/compose/ui/text/input/TextInputService;

    iput-object p5, p0, Lv12;->f:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p6, p0, Lv12;->g:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p7, p0, Lv12;->h:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p8, p0, Lv12;->i:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p9, p0, Lv12;->j:Ly22;

    iput-object p10, p0, Lv12;->k:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v9, p0, Lv12;->k:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-object v10, p1

    check-cast v10, Landroidx/compose/ui/focus/FocusState;

    iget-object v0, p0, Lv12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-boolean v1, p0, Lv12;->c:Z

    iget-boolean v2, p0, Lv12;->d:Z

    iget-object v3, p0, Lv12;->e:Landroidx/compose/ui/text/input/TextInputService;

    iget-object v4, p0, Lv12;->f:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v5, p0, Lv12;->g:Landroidx/compose/ui/text/input/ImeOptions;

    iget-object v6, p0, Lv12;->h:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v7, p0, Lv12;->i:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v8, p0, Lv12;->j:Ly22;

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/CoreTextFieldKt;->c(Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ly22;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object p0

    return-object p0
.end method
