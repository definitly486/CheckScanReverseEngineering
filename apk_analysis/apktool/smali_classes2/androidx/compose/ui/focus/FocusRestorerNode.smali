.class public final Landroidx/compose/ui/focus/FocusRestorerNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private fallback:Landroidx/compose/ui/focus/FocusRequester;

.field private final onEnter:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onExit:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusEnterExitScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->fallback:Landroidx/compose/ui/focus/FocusRequester;

    new-instance p1, Landroidx/compose/ui/focus/FocusRestorerNode$onExit$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/focus/FocusRestorerNode$onExit$1;-><init>(Landroidx/compose/ui/focus/FocusRestorerNode;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->onExit:Lnl3;

    new-instance p1, Landroidx/compose/ui/focus/FocusRestorerNode$onEnter$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/focus/FocusRestorerNode$onEnter$1;-><init>(Landroidx/compose/ui/focus/FocusRestorerNode;)V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->onEnter:Lnl3;

    return-void
.end method

.method private static synthetic getOnExit$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->onEnter:Lnl3;

    invoke-interface {p1, v0}, Landroidx/compose/ui/focus/FocusProperties;->setOnEnter(Lnl3;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->onExit:Lnl3;

    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusProperties;->setOnExit(Lnl3;)V

    return-void
.end method

.method public final getFallback()Landroidx/compose/ui/focus/FocusRequester;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->fallback:Landroidx/compose/ui/focus/FocusRequester;

    return-object p0
.end method

.method public final setFallback(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusRestorerNode;->fallback:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method
