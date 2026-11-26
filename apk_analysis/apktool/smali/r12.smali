.class public final synthetic Lr12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->s(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0
.end method
