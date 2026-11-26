.class public final synthetic Lh12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/ui/text/input/TextInputService;

.field public final synthetic d:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic e:Landroidx/compose/ui/text/input/ImeOptions;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Lh12;->c:Landroidx/compose/ui/text/input/TextInputService;

    iput-object p3, p0, Lh12;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Lh12;->e:Landroidx/compose/ui/text/input/ImeOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh12;->e:Landroidx/compose/ui/text/input/ImeOptions;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, p0, Lh12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v2, p0, Lh12;->c:Landroidx/compose/ui/text/input/TextInputService;

    iget-object p0, p0, Lh12;->d:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->j(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
