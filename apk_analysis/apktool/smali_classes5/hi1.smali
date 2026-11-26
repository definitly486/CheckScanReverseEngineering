.class public final Lhi1;
.super Lrb4;
.source "SourceFile"

# interfaces
.implements Lgi1;


# instance fields
.field public final f:Lsb4;


# direct methods
.method public constructor <init>(Lsb4;)V
    .locals 0

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p1, p0, Lhi1;->f:Lsb4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lrb4;->j()Lsb4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsb4;->B(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lhi1;->f:Lsb4;

    invoke-virtual {p0}, Lrb4;->j()Lsb4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsb4;->w(Ljava/lang/Object;)Z

    return-void
.end method
