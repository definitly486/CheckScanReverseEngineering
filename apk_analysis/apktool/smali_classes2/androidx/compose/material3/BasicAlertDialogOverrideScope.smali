.class public final Landroidx/compose/material3/BasicAlertDialogOverrideScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final content:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final onDismissRequest:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->onDismissRequest:Lll3;

    .line 27
    iput-object p2, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    .line 28
    iput-object p3, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 29
    iput-object p4, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->content:Lbm3;

    return-void
.end method

.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lbm3;ILjh2;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    new-instance v0, Landroidx/compose/ui/window/DialogProperties;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZILjh2;)V

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material3/BasicAlertDialogOverrideScope;-><init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lbm3;)V

    return-void
.end method


# virtual methods
.method public final getContent()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->content:Lbm3;

    return-object p0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getOnDismissRequest()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->onDismissRequest:Lll3;

    return-object p0
.end method

.method public final getProperties()Landroidx/compose/ui/window/DialogProperties;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;->properties:Landroidx/compose/ui/window/DialogProperties;

    return-object p0
.end method
