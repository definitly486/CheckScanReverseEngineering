.class public final Lbu1;
.super Lau1;
.source "SourceFile"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lyd4;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lau1;-><init>(Lyd4;)V

    iput-boolean p2, p0, Lbu1;->c:Z

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lbu1;->c:Z

    iget-object p0, p0, Lau1;->a:Lyd4;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyd4;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lyd4;->c(Ljava/lang/String;)V

    return-void
.end method
