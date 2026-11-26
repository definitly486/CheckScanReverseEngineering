.class public final Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final DefaultStartDetector:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;

    invoke-direct {v0}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;-><init>()V

    sput-object v0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;->INSTANCE:Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;

    new-instance v0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults$DefaultStartDetector$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults$DefaultStartDetector$1;-><init>(Le02;)V

    sput-object v0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;->DefaultStartDetector:Lbm3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultStartDetector()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/foundation/draganddrop/DragAndDropStartDetectorScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/foundation/draganddrop/DragAndDropSourceDefaults;->DefaultStartDetector:Lbm3;

    return-object p0
.end method
