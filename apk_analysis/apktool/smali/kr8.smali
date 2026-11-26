.class public final synthetic Lkr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic g:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr8;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Lkr8;->c:Landroidx/compose/ui/focus/FocusRequester;

    iput-boolean p3, p0, Lkr8;->d:Z

    iput-boolean p4, p0, Lkr8;->e:Z

    iput-object p5, p0, Lkr8;->f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p6, p0, Lkr8;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lkr8;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Lkr8;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v1, p0, Lkr8;->c:Landroidx/compose/ui/focus/FocusRequester;

    iget-boolean v2, p0, Lkr8;->d:Z

    iget-boolean v3, p0, Lkr8;->e:Z

    iget-object v4, p0, Lkr8;->f:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
