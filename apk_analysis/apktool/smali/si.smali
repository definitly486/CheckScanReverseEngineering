.class public final synthetic Lsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

.field public final synthetic d:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic e:Lnl3;

.field public final synthetic f:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/ui/text/input/ImeOptions;Lnl3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsi;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p2, p0, Lsi;->c:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    iput-object p3, p0, Lsi;->d:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p4, p0, Lsi;->e:Lnl3;

    iput-object p5, p0, Lsi;->f:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lsi;->f:Lnl3;

    move-object v5, p1

    check-cast v5, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    iget-object v0, p0, Lsi;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v1, p0, Lsi;->c:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    iget-object v2, p0, Lsi;->d:Landroidx/compose/ui/text/input/ImeOptions;

    iget-object v3, p0, Lsi;->e:Lnl3;

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/ui/text/input/ImeOptions;Lnl3;Lnl3;Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)Lj59;

    move-result-object p0

    return-object p0
.end method
