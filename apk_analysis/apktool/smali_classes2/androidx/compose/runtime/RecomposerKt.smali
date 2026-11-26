.class public final Landroidx/compose/runtime/RecomposerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FramePending:Ljava/lang/Object;

.field private static final ProduceAnotherFrame:Ljava/lang/Object;

.field public static final recomposerKey:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/RecomposerKt;->ProduceAnotherFrame:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/RecomposerKt;->FramePending:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getFramePending$p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/RecomposerKt;->FramePending:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getProduceAnotherFrame$p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/RecomposerKt;->ProduceAnotherFrame:Ljava/lang/Object;

    return-object v0
.end method

.method private static final getRecomposerCompoundHashKey()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public static final withRunningRecomposer(Ldm3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ldm3<",
            "-",
            "Ly22;",
            "-",
            "Landroidx/compose/runtime/Recomposer;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/RecomposerKt$withRunningRecomposer$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/RecomposerKt$withRunningRecomposer$2;-><init>(Ldm3;Le02;)V

    invoke-static {v0, p1}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
