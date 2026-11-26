.class public final Lj46$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj46;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Z)Lj46;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lf;->a:Lgx0;

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-virtual {v0, p0}, Lbu0;->I0(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lf;->d(Lbu0;Z)Lj46;

    move-result-object p0

    return-object p0
.end method
