.class final synthetic Landroidx/compose/foundation/text/SecureTextFieldController$passwordInputTransformation$1;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/SecureTextFieldController;-><init>(Landroidx/compose/runtime/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "scheduleHide()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Landroidx/compose/foundation/text/SecureTextFieldController;

    const-string v4, "scheduleHide"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/SecureTextFieldController$passwordInputTransformation$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/SecureTextFieldController;

    invoke-static {p0}, Landroidx/compose/foundation/text/SecureTextFieldController;->access$scheduleHide(Landroidx/compose/foundation/text/SecureTextFieldController;)V

    return-void
.end method
