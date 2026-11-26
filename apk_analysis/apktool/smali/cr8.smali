.class public final synthetic Lcr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/KeyCommand;

.field public final synthetic c:Landroidx/compose/foundation/text/TextFieldKeyInput;

.field public final synthetic d:Ln07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/KeyCommand;Landroidx/compose/foundation/text/TextFieldKeyInput;Ln07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr8;->b:Landroidx/compose/foundation/text/KeyCommand;

    iput-object p2, p0, Lcr8;->c:Landroidx/compose/foundation/text/TextFieldKeyInput;

    iput-object p3, p0, Lcr8;->d:Ln07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcr8;->d:Ln07;

    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    iget-object v1, p0, Lcr8;->b:Landroidx/compose/foundation/text/KeyCommand;

    iget-object p0, p0, Lcr8;->c:Landroidx/compose/foundation/text/TextFieldKeyInput;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->g(Landroidx/compose/foundation/text/KeyCommand;Landroidx/compose/foundation/text/TextFieldKeyInput;Ln07;Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)Lj59;

    move-result-object p0

    return-object p0
.end method
