.class public final Ltb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac6;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static volatile d:Z


# instance fields
.field public final b:Lta6;

.field public c:Lbc6;


# direct methods
.method public constructor <init>(Lta6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb6;->b:Lta6;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltb6;->b:Lta6;

    iget-object p1, p1, Lnb6;->H:Lad6;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lad6;->E:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lad6;->a:Lnb6;

    iget-object p1, p1, Lnb6;->q:Lub6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    sget-boolean p1, Ltb6;->d:Z

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x0

    sput-boolean p1, Ltb6;->d:Z

    iget-object p0, p0, Ltb6;->b:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string p1, "Exception autocapture is disabled."

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lbc6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ltb6;->c:Lbc6;

    sget-boolean p1, Ltb6;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ltb6;->b:Lta6;

    iget-object p0, p0, Lnb6;->H:Lad6;

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lad6;->E:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lad6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->q:Lub6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ltb6;->c:Lbc6;

    if-eqz p0, :cond_0

    new-instance v0, Lde6;

    invoke-direct {v0, p1, p2}, Lde6;-><init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lbc6;->b(Lde6;)V

    invoke-interface {p0}, Lpb6;->flush()V

    :cond_0
    return-void
.end method
