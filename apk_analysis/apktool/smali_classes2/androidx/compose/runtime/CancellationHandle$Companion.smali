.class public final Landroidx/compose/runtime/CancellationHandle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/CancellationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/CancellationHandle$Companion;

.field private static final Empty:Landroidx/compose/runtime/CancellationHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/CancellationHandle$Companion;

    invoke-direct {v0}, Landroidx/compose/runtime/CancellationHandle$Companion;-><init>()V

    sput-object v0, Landroidx/compose/runtime/CancellationHandle$Companion;->$$INSTANCE:Landroidx/compose/runtime/CancellationHandle$Companion;

    new-instance v0, Lqz0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lqz0;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/CancellationHandle$Companion;->Empty:Landroidx/compose/runtime/CancellationHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Empty$lambda$0()V
    .locals 0

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/CancellationHandle$Companion;->Empty$lambda$0()V

    return-void
.end method


# virtual methods
.method public final getEmpty$runtime()Landroidx/compose/runtime/CancellationHandle;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/CancellationHandle$Companion;->Empty:Landroidx/compose/runtime/CancellationHandle;

    return-object p0
.end method
