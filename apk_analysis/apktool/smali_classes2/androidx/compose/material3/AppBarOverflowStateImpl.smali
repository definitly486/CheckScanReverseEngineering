.class final Landroidx/compose/material3/AppBarOverflowStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/AppBarOverflowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/AppBarOverflowStateImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material3/AppBarOverflowStateImpl$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/AppBarOverflowStateImpl;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final totalItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final visibleItemCount$delegate:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/AppBarOverflowStateImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/AppBarOverflowStateImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/material3/AppBarOverflowStateImpl;->Companion:Landroidx/compose/material3/AppBarOverflowStateImpl$Companion;

    new-instance v0, Landroidx/compose/material3/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/compose/material3/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/AppBarOverflowStateImpl;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/material3/AppBarOverflowStateImpl;->totalItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/AppBarOverflowStateImpl;->visibleItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/AppBarOverflowStateImpl;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/AppBarOverflowStateImpl;->getTotalItemCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/material3/AppBarOverflowStateImpl;->getVisibleItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$2(Ljava/util/List;)Landroidx/compose/material3/AppBarOverflowStateImpl;
    .locals 2

    new-instance v0, Landroidx/compose/material3/AppBarOverflowStateImpl;

    invoke-direct {v0}, Landroidx/compose/material3/AppBarOverflowStateImpl;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/material3/AppBarOverflowStateImpl;->setTotalItemCount(I)V

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/material3/AppBarOverflowStateImpl;->setVisibleItemCount(I)V

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/AppBarOverflowStateImpl;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/AppBarOverflowStateImpl;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/AppBarOverflowStateImpl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/material3/AppBarOverflowStateImpl;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static synthetic b(Ljava/util/List;)Landroidx/compose/material3/AppBarOverflowStateImpl;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/AppBarOverflowStateImpl;->Saver$lambda$2(Ljava/util/List;)Landroidx/compose/material3/AppBarOverflowStateImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTotalItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/AppBarOverflowStateImpl;->totalItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getVisibleItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/AppBarOverflowStateImpl;->visibleItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public setTotalItemCount(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/AppBarOverflowStateImpl;->totalItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/AppBarOverflowStateImpl;->visibleItemCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method
