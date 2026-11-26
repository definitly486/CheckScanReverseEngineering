.class public final Landroidx/paging/PagingLoggerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final LOG_TAG:Ljava/lang/String; = "Paging"

.field public static final VERBOSE:I = 0x2


# direct methods
.method public static final log(ILjava/lang/Throwable;Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Throwable;",
            "Lll3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    invoke-virtual {v0, p0}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p0, p2, p1}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic log$default(ILjava/lang/Throwable;Lll3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/paging/PagingLogger;->INSTANCE:Landroidx/paging/PagingLogger;

    invoke-virtual {p3, p0}, Landroidx/paging/PagingLogger;->isLoggable(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p0, p2, p1}, Landroidx/paging/PagingLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
