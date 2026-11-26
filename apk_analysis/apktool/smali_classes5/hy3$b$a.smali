.class public final Lhy3$b$a;
.super Lhy3$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy3$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# virtual methods
.method public final c(Lvy3;)V
    .locals 1

    sget-object p0, Lp03;->REFUSED_STREAM:Lp03;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lvy3;->c(Lp03;Ljava/io/IOException;)V

    return-void
.end method
