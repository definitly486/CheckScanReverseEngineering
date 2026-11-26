.class public final Landroidx/compose/ui/platform/ViewRootForTest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewRootForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

.field private static onViewCreatedCallback:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/ViewRootForTest;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewRootForTest$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewRootForTest$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getOnViewCreatedCallback$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getOnViewCreatedCallback()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/platform/ViewRootForTest;",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->onViewCreatedCallback:Lnl3;

    return-object p0
.end method

.method public final setOnViewCreatedCallback(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/ViewRootForTest;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Landroidx/compose/ui/platform/ViewRootForTest$Companion;->onViewCreatedCallback:Lnl3;

    return-void
.end method
