.class public final Landroidx/compose/runtime/Composer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

.field private static final Empty:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/Composer$Companion;

    invoke-direct {v0}, Landroidx/compose/runtime/Composer$Companion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/Composer$Companion;->$$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

    new-instance v0, Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-direct {v0}, Landroidx/compose/runtime/Composer$Companion$Empty$1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Ljava/lang/Object;

    return-object p0
.end method

.method public final setDiagnosticStackTraceEnabled(Z)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    sget-object p0, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->Companion:Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;->getSourceInformation-MD5MrJc()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;->getNone-MD5MrJc()I

    move-result p0

    :goto_0
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->setComposeStackTraceMode-76WK1J0(I)V

    return-void
.end method

.method public final setDiagnosticStackTraceMode-76WK1J0(I)V
    .locals 0

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->setComposeStackTraceMode-76WK1J0(I)V

    return-void
.end method

.method public final setTracer(Landroidx/compose/runtime/CompositionTracer;)V
    .locals 0

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->access$setCompositionTracer$p(Landroidx/compose/runtime/CompositionTracer;)V

    return-void
.end method
