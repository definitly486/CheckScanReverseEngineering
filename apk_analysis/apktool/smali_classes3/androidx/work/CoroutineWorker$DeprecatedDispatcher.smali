.class final Landroidx/work/CoroutineWorker$DeprecatedDispatcher;
.super Lr22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/CoroutineWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeprecatedDispatcher"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/work/CoroutineWorker$DeprecatedDispatcher;

.field private static final dispatcher:Lr22;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;

    invoke-direct {v0}, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;-><init>()V

    sput-object v0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->INSTANCE:Landroidx/work/CoroutineWorker$DeprecatedDispatcher;

    sget-object v0, Lqo2;->a:Loi2;

    sput-object v0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->dispatcher:Lr22;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr22;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->dispatcher:Lr22;

    invoke-virtual {p0, p1, p2}, Lr22;->dispatch(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDispatcher()Lr22;
    .locals 0

    sget-object p0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->dispatcher:Lr22;

    return-object p0
.end method

.method public isDispatchNeeded(Lo22;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/work/CoroutineWorker$DeprecatedDispatcher;->dispatcher:Lr22;

    invoke-virtual {p0, p1}, Lr22;->isDispatchNeeded(Lo22;)Z

    move-result p0

    return p0
.end method
