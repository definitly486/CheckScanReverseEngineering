.class public final Landroidx/paging/HintHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/HintHandler$HintFlow;,
        Landroidx/paging/HintHandler$State;,
        Landroidx/paging/HintHandler$WhenMappings;
    }
.end annotation


# instance fields
.field private final state:Landroidx/paging/HintHandler$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/HintHandler$State;

    invoke-direct {v0, p0}, Landroidx/paging/HintHandler$State;-><init>(Landroidx/paging/HintHandler;)V

    iput-object v0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    return-void
.end method

.method public static synthetic a(Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/paging/HintHandler;->processHint$lambda$0(Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/paging/HintHandler;->forceSetHint$lambda$1(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final forceSetHint$lambda$1(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne p0, v0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/paging/HintHandler$HintFlow;->setValue(Landroidx/paging/ViewportHint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Landroidx/paging/HintHandler$HintFlow;->setValue(Landroidx/paging/ViewportHint;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final processHint$lambda$0(Landroidx/paging/ViewportHint;Landroidx/paging/HintHandler$HintFlow;Landroidx/paging/HintHandler$HintFlow;)Lj59;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/HintHandler$HintFlow;->getValue()Landroidx/paging/ViewportHint;

    move-result-object v0

    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-static {p0, v0, v1}, Landroidx/paging/HintHandlerKt;->shouldPrioritizeOver(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/paging/HintHandler$HintFlow;->setValue(Landroidx/paging/ViewportHint;)V

    :cond_0
    invoke-virtual {p2}, Landroidx/paging/HintHandler$HintFlow;->getValue()Landroidx/paging/ViewportHint;

    move-result-object p1

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-static {p0, p1, v0}, Landroidx/paging/HintHandlerKt;->shouldPrioritizeOver(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Landroidx/paging/HintHandler$HintFlow;->setValue(Landroidx/paging/ViewportHint;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final forceSetHint(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "invalid load type for reset: "

    invoke-static {p1, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    new-instance v0, Landroidx/paging/d;

    invoke-direct {v0, p1, p2}, Landroidx/paging/d;-><init>(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/paging/HintHandler$State;->modify(Landroidx/paging/ViewportHint$Access;Lbm3;)V

    return-void
.end method

.method public final getLastAccessHint()Landroidx/paging/ViewportHint$Access;
    .locals 0

    iget-object p0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    invoke-virtual {p0}, Landroidx/paging/HintHandler$State;->getLastAccessHint()Landroidx/paging/ViewportHint$Access;

    move-result-object p0

    return-object p0
.end method

.method public final hintFor(Landroidx/paging/LoadType;)Lhd3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            ")",
            "Lhd3<",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/HintHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    invoke-virtual {p0}, Landroidx/paging/HintHandler$State;->getAppendFlow()Lhd3;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "invalid load type for hints"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    invoke-virtual {p0}, Landroidx/paging/HintHandler$State;->getPrependFlow()Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final processHint(Landroidx/paging/ViewportHint;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    instance-of v0, p1, Landroidx/paging/ViewportHint$Access;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/ViewportHint$Access;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroidx/paging/c;

    invoke-direct {v1, p1}, Landroidx/paging/c;-><init>(Landroidx/paging/ViewportHint;)V

    invoke-virtual {p0, v0, v1}, Landroidx/paging/HintHandler$State;->modify(Landroidx/paging/ViewportHint$Access;Lbm3;)V

    return-void
.end method
