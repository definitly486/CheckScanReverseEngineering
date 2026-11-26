.class public final synthetic Lij7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/input/KeyboardActionHandler;


# instance fields
.field public final synthetic a:Lnl3;

.field public final synthetic b:Landroidx/compose/foundation/text/input/TextFieldState;


# direct methods
.method public synthetic constructor <init>(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij7;->a:Lnl3;

    iput-object p2, p0, Lij7;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    return-void
.end method


# virtual methods
.method public final onKeyboardAction(Lll3;)V
    .locals 1

    iget-object v0, p0, Lij7;->a:Lnl3;

    iget-object p0, p0, Lij7;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-static {v0, p0, p1}, Landroidx/compose/material3/SearchBarDefaults;->f(Lnl3;Landroidx/compose/foundation/text/input/TextFieldState;Lll3;)V

    return-void
.end method
