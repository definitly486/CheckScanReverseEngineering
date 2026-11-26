.class public final Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-string v0, "Timed out waiting for "

    const-string v1, " ms"

    invoke-static {p1, p2, v0, v1}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter_jvmAndAndroidKt;->access$getEmptyStackTraceElements$p()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
