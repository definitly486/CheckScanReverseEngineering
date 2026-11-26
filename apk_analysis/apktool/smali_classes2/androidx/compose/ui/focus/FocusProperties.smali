.class public interface abstract Landroidx/compose/ui/focus/FocusProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusProperties$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusProperties$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/focus/FocusProperties$Companion;->$$INSTANCE:Landroidx/compose/ui/focus/FocusProperties$Companion;

    sput-object v0, Landroidx/compose/ui/focus/FocusProperties;->Companion:Landroidx/compose/ui/focus/FocusProperties$Companion;

    return-void
.end method

.method public static synthetic getEnter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExit$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getCanFocus()Z
.end method

.method public getDown()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getEnd()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getEnter()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/focus/FocusProperties$enter$1;->INSTANCE:Landroidx/compose/ui/focus/FocusProperties$enter$1;

    return-object p0
.end method

.method public getExit()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/focus/FocusProperties$exit$1;->INSTANCE:Landroidx/compose/ui/focus/FocusProperties$exit$1;

    return-object p0
.end method

.method public getFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusProperties;->Companion:Landroidx/compose/ui/focus/FocusProperties$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusProperties$Companion;->getUnsetFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLeft()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getNext()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getOnEnter()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/focus/FocusProperties$onEnter$1;->INSTANCE:Landroidx/compose/ui/focus/FocusProperties$onEnter$1;

    return-object p0
.end method

.method public getOnExit()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/focus/FocusProperties$onExit$1;->INSTANCE:Landroidx/compose/ui/focus/FocusProperties$onExit$1;

    return-object p0
.end method

.method public getPrevious()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getRight()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public getUp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p0

    return-object p0
.end method

.method public abstract setCanFocus(Z)V
.end method

.method public setDown(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setEnd(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setEnter(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->access$toUsingEnterExitScope(Lnl3;)Lnl3;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setOnEnter(Lnl3;)V

    return-void
.end method

.method public setExit(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->access$toUsingEnterExitScope(Lnl3;)Lnl3;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/focus/FocusProperties;->setOnExit(Lnl3;)V

    return-void
.end method

.method public setFocusRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    return-void
.end method

.method public setLeft(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setNext(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setOnEnter(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setOnExit(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPrevious(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setRight(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setStart(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method

.method public setUp(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    return-void
.end method
