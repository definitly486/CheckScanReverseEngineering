.class final Landroidx/compose/runtime/RecomposerInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/RecomposerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/RecomposerInfo$Companion;

.field private static final DefaultErrorStateFlow:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Landroidx/compose/runtime/RecomposerErrorInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/RecomposerInfo$Companion;

    invoke-direct {v0}, Landroidx/compose/runtime/RecomposerInfo$Companion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/RecomposerInfo$Companion;->$$INSTANCE:Landroidx/compose/runtime/RecomposerInfo$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/RecomposerInfo$Companion;->DefaultErrorStateFlow:Ly68;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultErrorStateFlow$p()Ly68;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/RecomposerInfo$Companion;->DefaultErrorStateFlow:Ly68;

    return-object v0
.end method

.method private static synthetic getDefaultErrorStateFlow$annotations()V
    .locals 0

    return-void
.end method
