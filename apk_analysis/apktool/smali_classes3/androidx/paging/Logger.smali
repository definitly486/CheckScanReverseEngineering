.class public interface abstract Landroidx/paging/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lul2;
.end annotation


# direct methods
.method public static synthetic log$default(Landroidx/paging/Logger;ILjava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/paging/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: log"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract isLoggable(I)Z
.end method

.method public abstract log(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method
