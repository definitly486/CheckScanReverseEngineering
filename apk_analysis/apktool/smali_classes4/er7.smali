.class public final synthetic Ler7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/app/ApplicationExitInfo;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->f(Landroid/app/ApplicationExitInfo;)Z

    move-result p0

    return p0
.end method
